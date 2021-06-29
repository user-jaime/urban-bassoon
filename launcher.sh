#!/bin/bash

# Keep a list of links.
links=(
  "https://community.8base.com/"
  "https://www.reddit.com/r/graphql/"
  "https://www.reddit.com/r/webdev/"
  "https://news.ycombinator.com/"
  "https://stackoverflow.com/questions/tagged/firebase?tab=Newest"
  "https://stackoverflow.com/search?tab=newest&q=graphql"
  "https://stackoverflow.com/search?tab=newest&q=vue"
  "https://github.com/8base/Documentation/issues"
)

# Open links in the list.
for i in "${links[@]}"
do 
  open "$i" 
done

wait;