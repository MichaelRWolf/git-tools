# Build & Test Audit Report

**Challenge:** For every source repo, you should be able to clone it onto a clean machine and run a "build and test" script at the root, and it should just work.

**Scope:** 24 repos modified in past 30 days in ~/repos

## Summary

| Category | Count | Percentage |
|----------|-------|-----------|
| Repos with NO build/test infrastructure | 20 | 83% |
| Repos with test infrastructure | 4 | 17% |
| Repos where tests pass | 2 | 8% |
| Repos where tests fail | 2 | 8% |

## Detailed Status

### ✅ Passing Tests (2 repos)

#### 1. Portable_Profile
- **Test Infrastructure:** Makefile target `make test`
- **Test Framework:** BATS (bash automated testing system)
- **Result:** ✅ 24 tests pass
- **Status:** Production-ready

#### 2. RV_2003_Dutchman
- **Test Infrastructure:** Makefile target `make test`
- **Test Framework:** pytest (Python)
- **Result:** ✅ 9 tests pass
- **Status:** Production-ready

### ⚠️ Failing or Incomplete (2 repos)

#### 3. augmented-coding-patterns
- **Test Infrastructure:** test.sh (calls npm test)
- **Test Framework:** jest
- **Result:** ❌ **FAIL** - jest not installed, npm dependencies missing
- **Action Required:** Add `npm install` step before running tests, or document setup

#### 4. shortcuts
- **Test Infrastructure:** package.json (npm script)
- **Test Framework:** None (default npm stub)
- **Result:** ❌ **FAIL** - Test script is default npm placeholder
- **Action Required:** Implement actual tests or remove test stub

### 🔴 No Infrastructure (20 repos)

These repos have no build/test capability:

- Adventure
- AgileEngineeringFluency
- Events
- FY-2025
- Harmony_United
- Job_Search
- chatgpt-tools
- chatgpt-utilities
- claude-tools
- daylite_replacement
- dotfiles
- green-path-master-class
- notes
- pre-commit
- rainbow-springs
- skills-mattpocock
- trails-end-campground
- white-box
- wisdom
- wolf-soho

## The Gap on "Clone and Just Work"

**Current Status:** ❌ **FAILING**

Of the 4 repos that have any test infrastructure:
- 2 work correctly out of the box (50%)
- 2 require additional setup or have dummy tests (50%)

### Root Causes for Failures

1. **Missing Dependency Installation**
   - augmented-coding-patterns fails because `npm install` was never run
   - This violates the "just work" principle — clone should not require manual dependency installation

2. **Dummy Test Scripts**
   - shortcuts has a test script that's just the npm init default
   - This is misleading — repo claims to have tests but doesn't

3. **No Build Infrastructure**
   - 83% of repos have no `make build` or equivalent
   - This suggests they're primarily configuration/documentation repos, but some should have verification

## Recommendations

### Tier 1: Immediate (For Production Software)

For repos that contain executable code (RV_2003_Dutchman, augmented-coding-patterns, etc.):

1. **Create a `build` target** in Makefile or package.json
   ```makefile
   build: install
       npm run build   # or your build command
   ```

2. **Create a `test` target** that includes dependency installation
   ```makefile
   test: install
       npm test
   ```

3. **Create a `build-and-test` or `verify` target**
   ```makefile
   verify: build test
   ```

4. **Document the expected outcome** in README
   ```
   # Build & Test
   
   make verify       # Runs full build and test suite
   make build        # Builds the project
   make test         # Runs tests
   ```

### Tier 2: Medium Priority

- Add `.github/workflows/test.yml` to run tests on pull requests
- Fix augmented-coding-patterns: add `npm install` step to test.sh or CI
- Fix shortcuts: either implement tests or remove test stub

### Tier 3: Documentation

For repos that are primarily documentation or configuration (notes, dotfiles, Events, etc.):
- Add a README section explaining what the repo is and how to use it
- If there's nothing to build/test, explicitly state that: "This is a [docs|config|reference] repo with no build step"

## Next Steps

1. **Priority 1:** Fix augmented-coding-patterns (add npm install)
2. **Priority 2:** Fix shortcuts (implement tests or remove stub)
3. **Priority 3:** Add build/test infrastructure to software repos that lack it
4. **Priority 4:** Document repos that intentionally have no build/test step

---

**Generated:** 2026-07-12
