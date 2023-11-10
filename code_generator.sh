#!/bin/sh

set euo -pipefail

BIN_PATH="$(cd "$(dirname "$0")" || exit; pwd)"

cat <<EOF > "${BIN_PATH}/foo_new"
1-A # original file's line is 1
1-B # original file's line is 1
2-A # original file's line is 2
3-A # original file's line is 3
4-A # original file's line is 4
5-A # original file's line is 5
5-B # original file's line is 5
6-A # original file's line is 6
EOF

cat <<EOF > "${BIN_PATH}/bar_new"
1-A # original file's line is 1
2-A # original file's line is 2
3-A # original file's line is 3
3-B # original file's line is 3
EOF

