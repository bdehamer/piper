#!/bin/bash
for i in `seq 1 10`;
do
	>&2 echo "Some error ${i}"
	echo "Some output ${i}"
	sleep 1
done
echo "----BEGIN PANAMAX DATA----"
echo "foo=bar"
echo "fizz=bin"
echo "----END PANAMAX DATA----"
for i in `seq 11 15`;
do
	echo "Some output ${i}"
	sleep 1
done
