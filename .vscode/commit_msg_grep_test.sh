commit_msg=refactor(修改文档):hha
valid=0
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