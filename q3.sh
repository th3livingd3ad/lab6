#!/bin/bash
# Q3: check the invite was accepted, then test the collaborator can push
REPO=th3livingd3ad/lab6
COLLAB=njanbolu
echo "Pending invitations (empty means accepted):"
gh api repos/$REPO/invitations --jq '.[].invitee.login'

echo "Current collaborators:"
gh api repos/$REPO/collaborators --jq '.[].login'

if gh api repos/$REPO/collaborators/$COLLAB --silent 2>/dev/null; then
  echo "$COLLAB HAS accepted the invite"
else
  echo "$COLLAB has NOT accepted yet"
  exit 1
fi

echo "Testing push as $COLLAB"
rm -rf /tmp/collabtest
git clone git@github-dev2:$REPO.git /tmp/collabtest
cd /tmp/collabtest
git config user.name "njanbolu"
git config user.email "geonsur.03@gmail.com"
git checkout -b collab-test
echo "pushed by njanbolu" > collab.txt
git add collab.txt
git commit -m "Collaborator push test"
git push -u origin collab-test && echo "PUSH SUCCEEDED"
