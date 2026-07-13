# Git Tools - Project Documentation

## Overview

Repository of tools, challenges, and community resources for improving Git-based development workflows.

## Projects

### Clone & Just Works Challenge

**Status:** Active  
**Owner:** Michael Wolf  
**Started:** 2026-07-12  

**Objective:** Promote a universal norm across software projects: for every repo, you should be able to clone it and run build/test scripts that "just work."

**Origin:** Inspired by Jay Bazuzi's suggestion on improving developer experience and reducing toolchain friction.

**Deliverables:**
- Challenge prompt for community participation
- Analysis and audit templates
- Categorized repo analysis showing code/documentation/config separation
- Recommendations for improvement

## Using These Files

### For Your Own Audit

Copy the prompt from `CLONE_AND_BUILD_CHALLENGE.md` into Claude Code and run it against your repo collection.

### For Community Sharing

Use the categorized matrix to clearly distinguish:
- Code repos that should have build/test (use full status indicators)
- Documentation repos that don't need build/test (N/A entries fade visually)
- Config/infrastructure repos with limited applicability

This prevents documentation repos from appearing as "failures."

## Key Insights

- Separate repos by type: code, documentation, configuration, projects
- Only code repos should be expected to have build/test infrastructure
- N/A entries should be visually de-emphasized (not red, not green)
- The true metric: **of code repos with tests, what percentage pass?**

## Future Ideas

- Automate audit runs on schedule
- Create a leaderboard of repos by "clone and just works" readiness
- Build CI/CD templates for adding to existing projects
- Create code-generation tools for Makefile/package.json build targets

## Files in This Project

| File | Purpose |
|------|---------|
| CLONE_AND_BUILD_CHALLENGE.md | Community-facing challenge with embedded prompt |
| build_and_test_matrix_categorized.md | Analysis results (markdown) |
| build_and_test_matrix_categorized.html | Analysis results (interactive HTML) |
| BUILD_TEST_AUDIT.md | Detailed findings and recommendations |
| build_and_test_results.txt | Raw test execution output |
| REPO_INVENTORY.txt | Categorization of analyzed repos |
| LICENSE | MIT license |
| README.md | Repository overview |
| CLAUDE.md | This file |

---

**Last Updated:** 2026-07-12
