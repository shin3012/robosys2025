#!/bin/bash -xv
#SPDX-FileCopyrightText: 2025 Saito Shinnosuke
#SPDX-License-Identifier: GPL-3.0-only\

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./plus_stdin)
[ "${out}" = 15 ] || ng "$LINENO"

out=$(echo あ | ./plus_stdin)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus_stdin)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
