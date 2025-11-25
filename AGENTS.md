# AGENTS.md

## Build Commands
- `make build` - Build Docker container
- `make run` - Run the container

## Test Commands
- No specific test commands defined

## Code Style Guidelines

### Dockerfile
- Use latest Ubuntu base image
- Install packages with apt-get update && apt-get install
- Clean up apt cache after installation
- Include maintainer label

### Makefile
- Use .PHONY for all targets
- Include help target with descriptions
- Format: target: ## description

### General
- Keep files minimal and focused
- Use descriptive commit messages
- Follow standard naming conventions
