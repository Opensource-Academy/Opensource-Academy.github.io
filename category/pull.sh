curl -s https://$GITHUB_AT:@api.github.com/orgs/Opensource-Academy/repos?per_page=200 \
  | jq '.[].ssh_url[33:99]' \
  | xargs -I {} -n 1 \
  git clone https://github.com/Opensource-Academy"{}"
rm -rf Opensource-Academy.github.io
