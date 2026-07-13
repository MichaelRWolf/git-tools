# Git Tools

Tools and challenges for improving Git-based development workflows.

## Projects

### Clone & Just Works Challenge

A universal challenge: **For every source repo in the world, you should be able to clone it onto a clean machine, run the "build and test" script at the root, and it should just work.**

See [writing/build_and_test_challenge/clone_and_build_challenge.md](writing/build_and_test_challenge/clone_and_build_challenge.md) for details and a reusable prompt you can give to Claude Code to audit your own repositories.

## Getting Started

1. Read [writing/build_and_test_challenge/clone_and_build_challenge.md](writing/build_and_test_challenge/clone_and_build_challenge.md) for context and the community prompt
2. Copy the prompt into Claude Code
3. Run it against your own repo collection
4. Share your results with #CloneAndJustWorks

## Project Structure

```text
git-tools/
├── writing/
│   └── build_and_test_challenge/     # Clone & Just Works Challenge project
│       ├── clone_and_build_challenge.md
│       ├── build_and_test_matrix_categorized.md
│       ├── build_and_test_matrix_categorized.html
│       ├── build_test_audit.md
│       ├── build_and_test_results.txt
│       └── repo_inventory.txt
├── README.md
├── CLAUDE.md
├── LICENSE
└── Makefile
```

## License

MIT
