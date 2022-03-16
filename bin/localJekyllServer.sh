#!/bin/sh -e

cd ${0%/*}/.. || exit 1

jekyll serve -H $(hostname) --config _config.local.yml --incremental --watch --future -V
