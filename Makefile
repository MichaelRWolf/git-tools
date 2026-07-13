.PHONY: help setup-hooks

help:
	@echo "Git Tools - Available targets:"
	@echo ""
	@echo "  make setup-hooks    Install pre-commit hooks"
	@echo "  make help           Show this help message"

# Install pre-commit hooks
setup-hooks:
	pre-commit install
