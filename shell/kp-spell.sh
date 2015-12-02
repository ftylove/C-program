#! /bin/sh -

IFS=' 
	'

PATH=/usr/local/bin:/bin:/usr/bin
export PATH

DICTFILE=/tmp/kp-spell.dice.$$
trap "exit 1" HUP INT QUIT PIPE TERM
trap "rm -f $DICTFILE" EXIT
cat /usr/dict/words /usr/local/share/dict/wnuth | sort -u > $DICTFILE

cat "$@" |
	tr A-Z a-z |
		tr -c a-z '\n' |
			sort |
				uniq |
					comm -13 $DICTFILE -

