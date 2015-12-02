#! /bin/sh -

/bin/sed -e 's@<[/]*[A-Za-z][A-Za-z0-9]*[^>]*>@@g' \
	-e 's@[&][A-Za-z][A-Za-z0-9]*;@ @g' \
	"$@"
