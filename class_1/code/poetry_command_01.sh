#!/bin/sh

project_name="$1"

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Create project structure
mkdir -p "$project_name"
mkdir -p tests

# Create the pyproject.toml file
cat <<EOL > pyproject.toml
[tool.poetry]
name = "$project_name"
version = "0.1.0"
description = ""
authors = ["Your Name <you@example.com>"]

[tool.poetry.dependencies]
python = "^3.8"
pytest = "^6.2.4"
openai = "^1.31.0"


[build-system]
requires = ["poetry-core>=1.0.0"]
build-backend = "poetry.core.masonry.api"
EOL

# Create the README file
echo "# $project_name" > README.md

# Create the __init__.py file
touch "$project_name/__init__.py"
touch tests/__init__.py

