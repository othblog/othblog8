#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
cd public
if [ -n "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" ]
then
    touch ~/.git-credentials
    chmod 0600 ~/.git-credentials
    echo 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 > ~/.git-credentials
    git config credential.helper store
    git config user.email "othblog@users.noreply.github.com"
    git config user.name "othblog"
fi
git add .
git commit -m "Rebuild site"
git push --force origin HEAD:master