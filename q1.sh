#!/bin/bash
# Q1: create a public repo called lab6
gh repo create lab6 --public --add-readme
gh repo view th3livingd3ad/lab6 --json name,visibility,url
