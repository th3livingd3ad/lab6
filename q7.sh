#!/bin/bash
# Q7: create a pull request from Q12345 to main
gh pr create -R th3livingd3ad/lab6 \
  --base main --head Q12345 \
  --title "Add scripts q1 to q5" \
  --body "Adds the answer scripts for questions 1 to 5"
