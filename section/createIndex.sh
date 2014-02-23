#!/bin/bash
for file in {0..17}
do
	touch ./${file}/index.html
echo "---
layout: section
section: ${file}
---" >> ./${file}/index.html
done