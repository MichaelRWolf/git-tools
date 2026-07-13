# Build & Test Matrix - Categorized

**Last Updated:** 2026-07-12  
**Scope:** 24 repos modified in past 30 days

## Summary

| Repo Type | Count | Status |
|-----------|-------|--------|
| **Executable Code** | 6 | Should have build/test |
| **Documentation & Notes** | 14 | N/A for build/test |
| **Config & Infrastructure** | 4 | Limited applicability |
| **Tests Passing** | 2 | Out of 6 code repos (33%) |

---

## Executable Code Repositories ✅

*These repos contain runnable code and should have build/test infrastructure*

| Repo                          | Category        | Has Build | Has Test | Build Status | Test Status | Notes                                    |
|-------------------------------|-----------------|-----------|----------|--------------|-------------|------------------------------------------|
| **Portable_Profile**          | Shell Utility   | ❌        | ✅       | —            | ✅ **PASS** | 24 BATS tests passing                    |
| **RV_2003_Dutchman**          | Python Utility  | ❌        | ✅       | —            | ✅ **PASS** | 9 pytest tests passing                   |
| **augmented-coding-patterns** | JavaScript App  | ❌        | ✅       | —            | ❌ **FAIL** | Missing npm dependencies; jest not found |
| **pre-commit**                | Python Package  | ❌        | ✅       | —            | —           | Has tests/testing dir; external repo     |
| **rainbow-springs**           | React App       | ❌        | ❌       | —            | —           | Lovable project; needs build/test setup  |
| **skills-mattpocock**         | Node.js Package | ❌        | ❌       | —            | —           | External repo; minimal infrastructure    |

**Code Repo Summary:**
- ✅ **2 repos (33%)** - Tests pass out of the box
- ❌ **1 repo (17%)** - Has tests but fails (missing setup)
- ❌ **3 repos (50%)** - No build/test infrastructure

---

## Documentation & Notes Repositories

*These repos are primarily information/reference and do not require build/test*

| Repo                        | Category              | Purpose                                          |
|-----------------------------|-----------------------|--------------------------------------------------|
| **notes**                   | Note Taking           | Org-roam personal note collection                |
| **Events**                  | Event Notes           | Conference and event documentation               |
| **Harmony_United**          | Project Notes         | Meeting notes and project tracking               |
| **green-path-master-class** | Course Materials      | Educational content and documentation            |
| **chatgpt-tools**           | Documentation         | Tool guides and usage documentation              |
| **claude-tools**            | Documentation         | Command reference and tool documentation         |
| **daylite_replacement**     | Project Design        | Database schema and design specifications        |
| **AgileEngineeringFluency** | Reference Material    | Interactive visualization and learning reference |
| **Job_Search**              | Project Materials     | Job search documents and tracking                |
| **FY-2025**                 | Project Materials     | Financial and tax documentation                  |
| **white-box**               | Personal Finance      | Financial planning and retirement documents      |
| **trails-end-campground**   | Project Documentation | Campground operations and planning               |
| **wolf-soho**               | Documentation         | Personal documents and reference materials       |
| **wisdom**                  | Content Archive       | Quote collection and wisdom archive              |
| **Adventure**               | Trip Planning         | Travel planning and notes                        |

**Documentation Repo Summary:**
- 14 repos (58% of total) - Documentation/notes only
- No build/test infrastructure required ✓

---

## Configuration & Infrastructure Repositories

*These repos contain configuration and utilities with limited/no build/test applicability*

| Repo                  | Category      | Purpose                            | Has Build | Has Test  |
|-----------------------|---------------|------------------------------------|-----------|-----------|
| **dotfiles**          | Configuration | Shell config, SSH, system setup    | ❌        | ❌        |
| **chatgpt-utilities** | Utilities     | Command-line utilities and scripts | ❌        | ✅        |
| **shortcuts**         | Reference     | Keyboard shortcut documentation    | ❌        | ❌ (stub) |

**Config Repo Summary:**
- 4 repos (17% of total) - Config and infrastructure
- N/A for most build/test requirements

---

## Key Findings

### For Code Repos (6 total)

**✅ Strengths:**
- 2 repos have solid test suites that pass reliably (Portable_Profile, RV_2003_Dutchman)
- Both use appropriate frameworks (BATS for bash, pytest for Python)
- Tests are production-ready

**❌ Gaps:**
- 3 repos (50%) have no build/test infrastructure at all
- 1 repo has tests but missing npm dependencies (breaks "clone and just work")
- No repos have a combined `build && test` target or script

### For Documentation Repos (14 total)

**✅ Status:**
- Correctly identified as documentation-only
- No false requirement for build/test infrastructure
- These repos are working as intended

### For Config Repos (4 total)

**✅ Status:**
- Limited or no build/test requirements
- Serve specific purposes (configuration, reference, utilities)

---

## Recommendations

### Priority 1: Fix Code Repos with Test Infrastructure

**augmented-coding-patterns**
- Problem: `npm install` not run before tests
- Solution: Update test.sh to include npm install step, or add to CI/CD
- Impact: Would bring code repo to 3/6 passing (50%)

### Priority 2: Add Build/Test to Remaining Code Repos

**rainbow-springs** (React/Lovable app)
- Add `npm install` → `npm run build` → `npm test` sequence
- Create Makefile with `make test`, `make build`, `make verify` targets

**skills-mattpocock** (external Node.js repo)
- Consider contributing build/test setup to upstream

### Priority 3: Document Repo Types

Consider adding a README section to documentation repos explaining:
```markdown
## Repo Type
This is a **documentation** repository containing [notes|references|specifications].
No build or test infrastructure is required.
```

---

## Legend

- ✅ **PASS** - Infrastructure exists and works correctly
- ❌ **FAIL** - Infrastructure exists but fails to run
- ❌ **STUB** - Default/placeholder infrastructure (not real)
- — or **N/A** - Not applicable for this repo type
- *faded text* - Indicates N/A status (visually de-emphasized)

---

## See Also

- [BUILD_TEST_AUDIT.md](BUILD_TEST_AUDIT.md) — Detailed audit report with all stats
- [build_and_test_matrix_categorized.html](build_and_test_matrix_categorized.html) — Interactive HTML matrix
- [CLONE_AND_BUILD_CHALLENGE.md](CLONE_AND_BUILD_CHALLENGE.md) — Challenge prompt for community
