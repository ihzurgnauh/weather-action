#!/bin/sh

set -eux

CITY=Guangzhou
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  https://wttr.in/$CITY?format=%20%l:+%C+%c+%t\n+%E6%97%A5%E5%87%BA%EF%BC%9A%S+-+%E6%97%A5%E8%90%BD%EF%BC%9A%s\n+%E9%BB%8E%E6%98%8E%EF%BC%9A%D+-+%E6%AD%A3%E5%8D%88%EF%BC%9A%z+-+%E9%BB%84%E6%98%8F%EF%BC%9A%d\n+%E6%9C%88%E7%9B%B8%EF%BC%9A%m+-+%E6%9C%88%E4%BA%AE%E6%97%A5%EF%BC%9A%M\n+%E9%99%8D%E6%B0%B4%EF%BC%9A%p\n+%E6%B0%94%E5%8E%8B%EF%BC%9A%P\n+Current%20time%EF%BC%9A%T+%20+Local%20timezone%EF%BC%9A%Z
