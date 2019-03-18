#!/bin/sh
 
echo "Content-Type: text/html"
echo ""
echo "<!doctype html>"
echo "<html><head><title>test</title></head>"
echo "<body>"
LINUX_VERSION=`cat /etc/issue`
echo "<h1>"$LINUX_VERSION"</h1>"
echo "</body>"
echo "</html>"
