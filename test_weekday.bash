#!/bin/bash -xv 
#SPDX-FileCopyrightText: 2025 Saito Shinnosuke
#SPDX-License-Identifier: GPL-3.0-only

ng(){ echo "$1 行目が違うよ"; exit 1; }

out="$(printf '%s\n' 2025-11-06 | ./weekday)"
[ "$out" = "木" ] || ng "$LINENO"

out="$(printf '%s\n' 2028-02-29 | ./weekday)"
[ "$out" = "火" ] || ng "$LINENO"

out="$(printf '%s\n' 2025-11-06 2028-02-29 | ./weekday)"
[ "$out" = $'木\n火' ] || ng "$LINENO"



echo OK
