#!/bin/bash
# Q2: invite a collaborator with write access
gh api -X PUT repos/th3livingd3ad/lab6/collaborators/njanbolu -f permission=push
echo "Invitation sent to njanbolu"
