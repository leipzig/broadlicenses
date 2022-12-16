# Broad Licenses

```
gh api--paginate /orgs/broadinstitute/repos > broad.json
cat broad.json | jq '.[] | .name + "     " + .license.key' | perl -ne 's/     /\t/;s/"//g;print' > keys.txt
#echo 'source("keys.txt")' | R --no-save
```
