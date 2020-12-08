#!/bin/bash

while true; do
	make build > compile_out.txt 2> compile_err.txt
	sleep 1
done
