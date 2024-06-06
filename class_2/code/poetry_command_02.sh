#!/bin/sh

project_name="$1"

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

poetry new "$project_name"
mv "$project_name"/* "$project_name"/.* . 2>/dev/null
rmdir "$project_name"