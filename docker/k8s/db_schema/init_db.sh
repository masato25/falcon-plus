#!/bin/sh

for x in `ls ./*.sql`; do
  echo init mysql table $x ...;
  mysql -uroot -ptest123456 < $x;
done
