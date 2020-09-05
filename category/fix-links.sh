LC_ALL=C
find ./*/*.md \
  | xargs -I {} -n1 \
  gsed -i 's@https://github.com/Opensource-Academy@/category@gI' {}
find ./*/*.md \
  | xargs -I {} -n1 \
  gsed -i 's@blob/master/@@g' {}
