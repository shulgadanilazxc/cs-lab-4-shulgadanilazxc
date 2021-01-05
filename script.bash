#!/bin/bash
arg=$*
func () {
for a in ${arg[@]}
do
  answ=$(ping -c 1 -W 1 -q $a | grep transmitted)
  pattern="0 received";
  if [[ $answ =~ $pattern ]]
  then
     echo "HOST IS DOWN"
  else
     echo "HOST IS UP"
  fi
done
}
func $*
