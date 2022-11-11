# commit_msg=feat\(修改文档\):hha

MSG='./newfile.txt'

cat >${MSG} <<-EOF
feat(commit测试): :fire: 文件提交

1.添加test. 2.添加hook
EOF

commit_msg=$(
  cat <<-EOF
feat(commit测试): :fire: 文件提交

1.添加test. 2.添加hook
EOF
)

echo $var

if [[ $commit_msg =~ ^(((feat)|(docs)|(fix)|(style)|(refactor)|(test)|(chore)|(coding))(\(.*\))?:){1} ]]; then
  echo "匹配"
  if [[ $commit_msg =~ ^(((feat)|(fix))(\(.*\))?:){1} ]]; then
    echo "是feat/fix"
  else
    echo "不是feat/fix"
  fi
else
  echo "不匹配"
fi
