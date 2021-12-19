#!/bin/zsh
#replace volume machdd with your volume
INDEX=$(mdutil -s -v /Volumes/MacHDD | grep disabled) 
NOW=$( date '+%F_%H:%M:%S' )
# Power: 0 is battery; 1 is charger.
power=$(pmset -g ps | grep -c 'AC Power')

  if [ $power -eq 0 ] ; then
	echo ${NOW}":AC Power off: Spotlight disable"
    # Turn off Spotlight indexing
	if [[ "$INDEX" =~ .*"disabled".* ]]; then
	    echo "Already disabled."
			else
	    mdutil -i off /
	fi
  fi

  if [ $power -eq 1 ] ; then
	echo ${NOW}":AC Power on: Spotlight enable"
    # Turn on Spotlight indexing while on charger
if [[ "$INDEX" =~ .*"disabled".* ]]; then
    mdutil -i on /
else
    echo "Already enabled"
fi
  fi
