#!/bin/bash
# 获取上次提交之后所有新增或修改的文件列表
changed_files=$(git diff --name-only HEAD~1)

# 遍历所有变化的文件
for file in $changed_files; do
  # 检查文件是否是文本文件
  if [[ $file =~ \.txt$ ]]; then
    # 定义期望的内容
    expected="Hello, World!"
    # 读取文本文件的内容
    actual=$(cat $file)
    # 比较实际内容和期望内容
    if [ "$actual" = "$expected" ]; then
      echo "测试通过: 文件 $file 内容正确"
    else
      echo "测试失败: 文件 $file 内容不正确"
    fi
  fi
done
