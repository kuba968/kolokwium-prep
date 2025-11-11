#!/bin/bash
p=${1:-}
if  [ -d "$p" ]; then
	date -I
	du -h $p | sort -hr | head -5
	exit 0
else
	echo "Katalog $p nie instnieje" >&2
	exit 1
fi
