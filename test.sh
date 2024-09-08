#!/bin/bash
# 定义期望的内容
expected="Hello, World!"
# 读取文本文件的内容
actual=$(cat hello.txt)
# 比较实际内容和期望内容
if [ "$actual" = "$expected" ]; then
  echo "测试通过: 文件内容正确"
else
  echo "测试失败: 文件内容不正确"
fi
