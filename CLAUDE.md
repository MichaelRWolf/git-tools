# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Type

**Reference & Documentation Repository** — This is not a software project. It contains documentation, analysis tools, and community-facing resources. No build, lint, or test infrastructure is required.

## Overview

Git Tools is a collection of resources promoting the "Clone and Just Works" norm: for every source repository, you should be able to clone it and run build/test scripts that "just work" without additional setup.

## The Core Deliverable

**clone_and_build_challenge.md** is the main deliverable. It contains:

1. **Challenge framing** — Explains Jay Bazuzi's original concept and why it matters
2. **Personal audit results** — Michael's analysis of 24 repos, categorized by type (code/documentation/config)
3. **Ready-to-use prompt** — A self-contained prompt that others can copy into Claude Code to audit their own repos
4. **Instructions for sharing** — How to run the audit, document results, and share with #CloneAndJustWorks

This file is meant to be **shared widely** — on social media, blogs, dev communities, etc.

## Supporting Files

| File | Purpose |
| ------ | --------- |
| **build_and_test_matrix_categorized.md** | Markdown version of analysis results; good for reading/discussion |
| **build_and_test_matrix_categorized.html** | Interactive HTML version with dark mode; better for sharing/presentations |
| **build_test_audit.md** | Detailed findings, root cause analysis, and improvement recommendations |
| **build_and_test_results.txt** | Raw test execution output; reference for debugging/verification |
| **repo_inventory.txt** | Full inventory showing how each repo was categorized |

## Key Design Decisions

### Repo Categorization

The audit categorizes repos into three types:

- **Code repos** (6) — Should have build/test infrastructure
- **Documentation/notes repos** (14) — N/A for build/test (but this is correct, not a failure)
- **Config/infrastructure repos** (4) — Limited applicability

This distinction is critical: it prevents documentation repos from appearing as "failures" when they lack build/test infrastructure.

### Visual Hierarchy

The HTML matrix uses faded styling for N/A entries (60% opacity, gray text) so they don't draw attention. This visually de-emphasizes entries that don't apply, making the real gaps stand out.

### Prompt Design

The prompt in CLONE_AND_BUILD_CHALLENGE.md is self-contained and copy/paste-ready. It can be adapted for different repo collections by adjusting:

- The time window ("modified in past 30 days" → adjust to "git commits in past 3 months", etc.)
- The scope ("24 repos" → your actual number)
- Which metrics matter for your context

## Editing & Extending

### When to Update clone_and_build_challenge.md

Only for:

- **Bug fixes** in the prompt or framing
- **Clarifications** if people report confusion
- **Improved examples** from community results

Do not add new sections or reframe the challenge unless there's community feedback.

### When to Create New Audit Reports

If you run the audit again (e.g., 30 days later):

1. Create a new dated file: `build_and_test_audit_2026-08-12.md`
2. Update the main results to show the new date and numbers
3. Link to previous audits for comparison

This creates a historical record of progress.

### For Community Contributions

This repo is meant to accept community results. When someone shares their audit:

1. They should use the same categorization (code/docs/config) to stay consistent
2. Optionally create a `community-results/` directory for submissions
3. Include their repo count and pass rates for comparison

## Original Source

This project was inspired by Jay Bazuzi's LinkedIn post:

Bazuzi, J. (2026). For every source repo in the world, I should... [Status update]. LinkedIn. Retrieved from <https://www.linkedin.com/posts/jaybazuzi_for-every-source-repo-in-the-world-i-should-share-7479569344025292800-dfc8/>

## Repo Characteristics

- **License:** MIT (permissive; can be forked, modified, shared)
- **Audience:** Software developers, team leads, project maintainers
- **Share-friendly:** No credentials, no private info; designed for sharing

---

**Last Updated:** 2026-07-12
