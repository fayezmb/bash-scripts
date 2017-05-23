
#!/bin/bash

wget -qO- $1 | grep  -o -u "//[a-zA-Z0-9]*.$1"|sort|uniq|tr -d '//'>urls.txt
for url in $(cat urls.txt); do

echo "$(host $url |grep "has address"|cut -d" " -f4) $url"

done
rm urls.txt


