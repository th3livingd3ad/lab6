#!/bin/bash
# Q8: merge the pull request, keeping the branch
gh pr merge Q12345 -R th3livingd3ad/lab6 --merge
gh pr list -R th3livingd3ad/lab6 --state merged
