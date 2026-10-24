#!/bin/bash
# Q5: create the issue
gh issue create -R th3livingd3ad/lab6 \
  --title "create helloworld echo file" \
  --body "echo hello Pearse from lab6" \
  --assignee @me \
  --label enhancement
gh issue list -R th3livingd3ad/lab6
