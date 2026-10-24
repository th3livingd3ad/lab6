#!/bin/bash
# Q4: remove the collaborator, then test they can no longer push
REPO=th3livingd3ad/lab6
COLLAB=njanbolu
gh api -X DELETE repos/$REPO/collaborators/$COLLAB
echo "Collaborators now:"
gh api repos/$REPO/collaborators --jq '.[].login'

echo "Testing push as $COLLAB after removal"
cd /tmp/collabtest
echo "second attempt" >> collab.txt
git add collab.txt
git commit -m "Push after removal"
git push origin collab-test && echo "PUSH SUCCEEDED (unexpected)" || echo "PUSH REJECTED as expected"
