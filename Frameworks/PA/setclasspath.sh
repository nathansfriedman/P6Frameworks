#! /bin/bash
x=`pwd`
CLASSPATH=.:$x/otherclasses:$x/MDELite/*:$x/MDELite/dist/MDELite.jar:$x/MDELite/dist/lib/*:$x/MDELite/dist/libvm/*:$x/MDELite/dist/libpl/*:$x/MDELite/
#CLASSPATH=.:$x/MDELiteR/MDELite.jar:$x/MDELiteR/libvm/:$x/MDELiteR/lib/:$x/MDELiteR/libpl/:$x/MDELiteR/libvm/*:$x/MDELiteR/lib/*:$x/MDELiteR/libpl/*
export CLASSPATH
