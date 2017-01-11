mkdir /tmp/stage
cp -a * /tmp/stage

export GIT_INDEX_FILE=/tmp/index
export GIT_WORK_TREE=/tmp/stage
git add -A
tree=$(git write-tree)
echo $tree

rm -f GIT_INDEX_FILE
GIT_INDEX_FILE=

parent=$(git show-ref --heads -s refs/heads/master)
echo $parent

cat <<EOF >commit-log
Manually-constructed commit
EOF

commit=$( git commit-tree -F commit-log  -p $parent $tree )
echo $commit

git update-ref "refs/heads/master" $commit $parent
