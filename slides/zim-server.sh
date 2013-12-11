#!/bin/bash

NAME=Zim
CMD="zim --server ~/Cloud/fileserver/zim-demo/"
PID=""

function get_pid {
   PID=`ps -ef|grep "zim --server"|grep -v grep|awk '{ print $2}'`
}

function stop {
   get_pid
   if [ -z $PID ]; then
      echo "$NAME is not running."
      exit 1
   else
      kill $PID
      sleep 1
      echo "$NAME stopped."
   fi
}


function start {
   get_pid
   if [ -z $PID ]; then
      nohup $CMD >/dev/null 2>&1 &
      echo "$NAME started."
   else
      echo "$NAME is already running."
   fi
}

function restart {
   get_pid
   if [ -z $PID ]; then
      start
   else
      stop
      start
   fi
}


function status {
   get_pid
   if [ -z  $PID ]; then
      echo "$NAME is not running."
      exit 1
   else
      echo "$NAME is running."
   fi
}

case "$1" in
   start)
      start
   ;;
   stop)
      stop
   ;;
   restart)
      restart
   ;;
   status)
      status
   ;;
   *)
      echo "Usage: $0 {start|stop|restart|status}"
esac