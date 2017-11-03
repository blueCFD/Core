#!/bin/sh -e

cd ${0%/*}/.. || exit 1

jekyll serve --config _config.local.yml --incremental --watch --future -V
