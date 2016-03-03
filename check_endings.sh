#! /bin/bash
#  print any file that has both cr and crlf line endings

echo "mixed line endings"
cat <(egrep -l $'\r\n'$ * && egrep -l $'\r'$ *) | sort | uniq -d

echo "windows endings"
cat <(egrep -l $'\r'$ *)
