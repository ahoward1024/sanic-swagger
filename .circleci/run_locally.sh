#!/bin/bash

echo Running the Pull Request Check tool locally
echo
echo Linting commit messages with GitLint
pipenv run gitlint --commits fbb925a...HEAD
echo Finished linting commits

echo
echo Linting code with Flake8
pipenv run flake8 --show-source --import-order-style pep8
echo Finished linting code

echo
echo Running Pytest
pipenv run pytest --cov-fail-under=90
echo
echo Finished running Pytest
echo
