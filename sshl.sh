#!/usr/bin/expect -f

# # trunk(){

# # 	read _arg

# # 	local _re="$( echo $_arg | tr -d ":" )" 
# # 	echo $_re
# # }


# declare -r SERV="bandit.labs.overthewire.org"
# declare -r PORT=2220

# read -p "ENTER NAME:PAS -> " arg

# level="$( echo $arg | grep "[a-z0-9]*:" | sed 's/:[a-z0-9A-Z]*//' )"
# pas="$( echo $arg |  grep ":[a-z0-9A-Z]*" | sed 's/[a-z0-9A-Z]*://' )"

# echo $pas $level
# ssh -tt "$level@$SERV" -p $PORT<<EOT 
# "$pas"
# EOT

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
