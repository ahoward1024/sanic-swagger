# sanic-swagger

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/8e7b064677ab4b6cbc2508b626bcba0a)](https://app.codacy.com/app/abatilo/sanic-swagger?utm_source=github.com&utm_medium=referral&utm_content=abatilo/sanic-swagger&utm_campaign=Badge_Grade_Settings)
[![CircleCI](https://circleci.com/gh/abatilo/sanic-swagger.svg?style=svg)](https://circleci.com/gh/abatilo/sanic-swagger)
[![codecov](https://codecov.io/gh/abatilo/sanic-swagger/branch/master/graph/badge.svg)](https://codecov.io/gh/abatilo/sanic-swagger)
[![PyPI status](https://img.shields.io/pypi/status/sanic-swagger.svg)](https://pypi.python.org/pypi/sanic-swagger/)
[![PyPI version](https://badge.fury.io/py/sanic-swagger.svg)](https://badge.fury.io/py/sanic-swagger)
[![PyPI pyversions](https://img.shields.io/pypi/pyversions/sanic-swagger.svg)](https://pypi.python.org/pypi/sanic-swagger/)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fabatilo%2Fsanic-swagger.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fabatilo%2Fsanic-swagger?ref=badge_shield)
[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

Annotate your [Sanic](https://github.com/channelcat/sanic) endpoints, and
automatically generate a
[Swagger](https://swagger.io/)/[OpenAPI](https://swagger.io/resources/open-api/)
compatible JSON spec file.

This project is a fork of both
[sanic-openapi](https://github.com/channelcat/sanic-openapi) and
[sanic-attrs](https://github.com/vltr/sanic-attrs).

As such, you can write all of your models as
[attrs](https://github.com/python-attrs/attrs) which gives you the handy
ability to use [cattrs](https://github.com/Tinche/cattrs) for dealing with your
serialization and deserialization of your models to and from JSON.

# Submitting a pull request

If you would like to submit a pull request it would be very helpful to run the
following steps locally to make sure the build of the new code will pass the 
checks in CircleCI.

If you don't want to run each of these steps manually you can just run the
handy `.circleci/run_locally.sh` script.

## Linting Git commits with `gitlint`

Install [gitlint](https://jorisroovers.github.io/gitlint/) and simply run
`pipenv run gitlint --commits fbb925a...HEAD` to check the formatting and style of your 
commit messages.
(Note: gitlint does not currently support Windows, please run under 
[WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) for a
workaround)

## Linting code with `Flake8`

Make sure you install the [Flake8](http://flake8.pycqa.org/en/latest/) Python
linting tool and run `pipenv run flake8 --show-source --import-order-style pep8`

## Running `Pytest`

Make sure you run your tests by installing the dev dependencies with
`pipenv install --dev` and run the tests by executing
`pipenv run pytest --cov-fail-under=90`
