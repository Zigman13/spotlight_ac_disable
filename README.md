# spotlight_ac_disable
Spotlight enable/disable when ac on/off. 

1. Place .sh file inside /opt directory
2. Change your main volume name inside script.
3.Setup as osx root cronjob for every 5,10 etc minutes via crontab -e, like this:
su root
crontab -e
and add this line
*/10 * * * * /opt/spotlight_cronjob.sh >> /tmp/crontab_spotlight_status.log 2>&1
4. enjoy better battery life!
