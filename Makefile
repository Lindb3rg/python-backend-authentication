.PHONY: [install test format lint dev]


format:
	@echo "Formatting code with Black..."
	black .
	@echo "Code formatted successfully!"

lint:
	flake8 .

dev: format lint test
	@echo "✅ All checks passed!"

