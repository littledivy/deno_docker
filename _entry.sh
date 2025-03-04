#!/bin/sh
set -e

if [ "$1" != "${1#-}" ]; then
    # if the first argument is an option like `--help` or `-h`
    exec deno "$@"
fi

case "$1" in
    bundle | cache | compile | completions | coverage | doc | eval | fmt | help | info | install | lint | lsp | repl | run | test | types | upgrade )
    # if the first argument is a known deno command
    exec deno "$@";;
esac

exec "$@"
