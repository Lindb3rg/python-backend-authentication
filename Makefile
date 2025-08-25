.PHONY: [install test format lint dev run]


format:
	@echo "Formatting code with Black..."
	black .
	@echo "Code formatted successfully!"

lint:
	flake8 .

dev: format lint test
	@echo "✅ All checks passed!"

run:
	uvicorn app.app:app --reload --port 5001
