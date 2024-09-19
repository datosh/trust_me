#!/bin/bash
#
# Based on questions posted to SO:
#
# https://stackoverflow.com/questions/60217151/how-to-release-updated-packages-for-go-mod-pkg-go-dev-consumers
#
# https://stackoverflow.com/questions/52242077/go-modules-finding-out-right-pseudo-version-vx-y-z-timestamp-commit-of-re

PSEUDO=$(TZ=UTC git --no-pager show \
  --quiet \
  --abbrev=12 \
  --date='format-local:%Y%m%d%H%M%S' \
  --format="%cd-%h")
curl "https://sum.golang.org/lookup/github.com/datosh/trust_me@v0.0.0-${PSEUDO}"
