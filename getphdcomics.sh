#!/bin/bash

### Script wget para fazer download de phdcomics entre 1 e 1873

echo "
********************** Script Download Ph.D. Comics **********************
"

cd ~/Comics/PhDComics

wget -E -H -k -p -nd -A gif --user-agent="firefox+linux" http://phdcomics.com/comics/archive.php?comicid={1..1873}

find ./ -type f -not -regex '^./phd[0-9]+.*' -exec rm {} \;
