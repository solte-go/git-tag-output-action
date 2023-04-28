#!/bin/sh

# shellcheck disable=SC2039
#set -o pipefail

setOutput() {
    echo "${1}=${2}" >> "${GITHUB_OUTPUT}"
}

tagReg="^v?[0-9]+\.[0-9]+\.[0-9]+$"
tag="$(git for-each-ref --sort=-v:refname --format '%(refname:lstrip=2)' | grep -E "$tagReg" | head -n 1)"

setOutput "tag" "$tag"
