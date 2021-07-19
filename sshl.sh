#!/usr/bin/expect -f

set timeout 60

set PORT 2220
set SERV "bandit.labs.overthewire.org"

set level [lindex $argv 0] 
set pass [lindex $argv 1]


spawn ssh $level@$SERV -p $PORT

expect "$level@bandit.labs.overthewire.org's password: "
send "$pass\r" 
#---------------interact -> used to continue to interact with the program or script
interact
