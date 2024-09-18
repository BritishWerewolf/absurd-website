# List all recipes.
default:
    just --list --unsorted

# Install dependencies.
[private]
install-deps:
    npm install

# Build and watch.
build: install-deps
    npx astro dev

# Type-check, compile and minify for production.
build-prod: install-deps
    just type-check
    npx astro build

# Run the TypeScript compiler.
type-check:
    npx astro check

# Check lint issues.
lint:
    npx eslint . --ext .vue,.js,.jsx,.cjs,.mjs,.ts,.tsx,.cts,.mts --ignore-path .gitignore

# Fix all lint issues (if possible).
lint-fix:
    npx eslint . --ext .vue,.js,.jsx,.cjs,.mjs,.ts,.tsx,.cts,.mts --fix --ignore-path .gitignore

# Push to main.
push:
    git switch main
    git merge develop
    git push
    git switch -

# Publish site.
publish: push build-prod
    surge dist absurdist.surge.sh
