# ~/.bashrc: executed by bash(1) for non-login shells.

export PS1="\e[1;36m[\t \w]\$ \e[m"
umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
#alias l='ls $LS_OPTIONS -l'
alias la='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -lah'
alias la='ls -la'

alias m='less'
alias ff='find . -name '  # searches in all sub directories
alias h='history'
alias vhost_conf='/opt/psa/admin/sbin/websrvmng --reconfigure-vhost --vhost-name=\!*' 

alias oo='cd $OLDPWD'

alias vh='cd /var/www/vhosts'
alias mlog='less /usr/local/psa/var/log/maillog'
alias cdmlog='cd /usr/local/psa/var/log'
alias cdsme='cd /usr/local/bin/SecureMyEmail/Eighteen'

#Run the Eighteen Alert once
#alias asme='cd /usr/local/bin/Exonmail;/usr/local/bin/perl /usr/local/bin/Exonmail/eighteen_alert.pl 1'

#Start all Eighteen daemons
alias csme='cd /usr/local/bin/SecureMyEmail/Eighteen/;/usr/local/bin/SecureMyEmail/Eighteen/eighteen_control.pl'

#Display all running Eighteen daemons
alias psme='ps -ef | grep eighteen | grep -v grep'
alias restartqmail='/etc/init.d/qmail restart'
alias cdqe='cd /var/qmail/mailnames/exonmail.com/'
alias cdqu='cd /var/qmail/users/'
alias cdq='cd /var/qmail/'
alias cdqq='cd /var/qmail/mailnames/quarantine'

alias mlog='m /usr/local/psa/var/log/maillog'
alias qmnu='/var/qmail/bin/qmail-newu'

alias stopqmail='/etc/init.d/qmail stop'
alias wip='/usr/bin/whois -h whois.lacnic.net '

#To delete all pending mails in que. Restart qmail via plesk (Home | Services) aftrwards
alias delqmailque='cd /var/qmail/queue && find intd todo local remote mess info bounce -type f -print |xargs rm'

#Delete only the bounced messages
alias delbounces='cd /var/qmail/queue && find bounce -type f -print |xargs rm'

#instmodsh - to find installed perl modules
#How to block an IP attacker. e.g.
#route add 65.21.34.4 gw 127.0.0.1 lo
# Delete from the block: e.g.
#route delete 65.21.34.4
#Check the route
# netstat -nr

alias mdbg='less /tmp/debug.txt';
alias merr='less /var/www/vhosts/dev.blogbuddy.webgenie.com/statistics/logs/error_log'
alias merr3='less /var/www/vhosts/blogballyhoo.com/statistics/logs/error_log'
alias cdmysql='cd /var/lib/mysql/turfsense'
alias inspm='instmodsh'
alias rfhl='m /var/www/vhosts/turfsense.net/cgi-bin/hn_refresh_horse_data_log.txt'
#apache2ctl start
alias mdq='cat /var/www/vhosts/turfsense.net/cgi-bin/query.txt'
alias restart_mysql='/etc/init.d/mysql restart'
alias restart_apache='service apache2 restart'
alias hnf='less /var/www/vhosts/turfsense.net/cgi-bin/hn_oddsfirm.txt'


alias hns='ps -ef | grep hn | grep -v grep'
#ln -s /usr/share/zoneinfo/Australia/Victoria localtime
alias ur='cd /usr/local/apache/sites/webgenie.com/usr/records'
#mysql -uadmin -p`cat /etc/psa/.psa.shadow`;
#create user 'avs'@'localhost' identified by '2Kenooch';
#grant all privileges on *.* to 'avs'@'localhost' identified by '2Kenooch' with grant option;
alias hndata='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_refresh_race_data.cgi CheckIntegrityOfTodaysData'
alias bfdata='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn.cgi get_bf_market_and_selection_ids'
alias hnrace='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_refresh_race_data.cgi GetAndInsertTabResultsUrl'
alias hnmarket='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn.cgi get_bf_market_and_selection_ids'
alias bfaccount='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_oddsfirm_spawn.pl getAccountFunds'

alias F30ResultsNotification='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_oddsfirm_spawn.pl F30ResultsNotification'
alias initialise_oddsmonitor='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn.cgi initialise_oddsmonitor'
alias CheckStartTimeError='cd /var/www/vhosts/turfsense.net/cgi-bin;clear;./hn_refresh_race_data.cgi CheckStartTimeError'
alias F30AlertsUpdate='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_oddsfirm_spawn.pl F30AlertsUpdate'
alias getAllMarkets='cd /var/www/vhosts/turfsense.net/cgi-bin; ./bf_api.pl getAllMarkets'
alias GetDetailsForClientReport='cd /var/www/vhosts/turfsense.net/cgi-bin; ./hn_om.cgi GetDetailsForClientReport'
alias CheckAndCorrectClosingTimes='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn.cgi CheckAndCorrectClosingTimes'
alias GetAndInsertTabResultsUrl='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_refresh_race_data.cgi GetAndInsertTabResultsUrl'
alias getAccountFunds='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_oddsfirm_spawn.pl getAccountFunds'
alias refresh_horsedata='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn.cgi refresh_horsedata';
alias GetAndInsertClosingTimesFromTabMobi='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_refresh_race_data.cgi GetAndInsertClosingTimesFromTabMobi'
alias GetAndInsertClosingTimesFromWilliamHill='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_refresh_race_data.cgi GetAndInsertClosingTimesFromWilliamHill'
alias getBetHistory='cd /var/www/vhosts/turfsense.net/cgi-bin;./bf_api_BetHistory.pl getBetHistory'
alias hntimes='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_refresh_race_data.cgi GetAndInsertClosingTimesFromTabMobi'
alias IterateWithOBS='clear; cd /var/www/vhosts/turfsense.net/cgi-bin; ./hn_om.cgi IterateWithOBS'

alias client_reports='cd /var/www/vhosts/turfsense.net/cgi-bin;./hn_om.cgi client_reports AIS'
alias hsp='./hn_oddsfirm_spawn.pl'
alias tab='GetAndInsertClosingTimesFromTabMobi'

alias stop_mysql='/etc/init.d/mysql stop'
avs=/var/www/vhosts/arapaut.com/httpdocs
alias sp='source ~/.bashrc'
alias frm='/bin/rm' # Force an rm without interative
wd=/var/www/vhosts/sdm.webgenie.com/httpdocs/ # Default dir to go upon login
alias cdwd='cd $wd'
export PATH=~/.rakudobrew/bin:$PATH
alias cn='/var/www/vhosts/webgenie.com/cgi-bin/country.pl'
od=/var/www/vhosts/webgenie.com/httpdocs
wg=/var/www/vhosts/webgenie.com/httpdocs
alias wg='cd $wg'
sdm=/var/www/vhosts/sdm.webgenie.com/httpdocs
alias sdm='cd $sdm'
alias conf='cd /var/www/vhosts/system/webgenie.com/conf'
ht=/var/www/vhosts/webgenie.com/httpdocs/
alias ht='cd $ht'
ht0=/var/www/vhosts/webgenie.com/httpdocs/Software/SDM
alias ht0='cd $ht0'
ht1=/var/www/vhosts/sdm.webgenie.com/httpdocs
alias ht1='cd $ht1'
ht2=/var/www/vhosts/webgenie.com/httpdocs/Software/WGM
alias ht2='cd $ht2'
wgm=/var/www/vhosts/webgeniemobile.com/httpdocs/Dev
alias wgm='cd $wgm'
alias ht3='cd $wgm'
nib=/var/www/vhosts/noimageblocking.webgenie.com/httpdocs
alias ht4='cd $nib'
ht5=/var/www/vhosts/speedupmywebsite.webgenie.com/httpdocs/
alias ht5='cd $ht5'

cgi=/var/www/vhosts/webgenie.com/cgi-bin
alias cgi='cd $cgi'
cgi1=/var/www/vhosts/sdm.webgenie.com/cgi-bin
alias cgi1='cd $cgi1'
cgi2=/var/www/vhosts/ts.webgenie.com/cgi-bin 
alias cgi2='cd $cgi2'
cgi3=/var/www/vhosts/webgeniemobile.com/cgi-bin
alias cgi3='cd $cgi3'
cgi4=/var/www/vhosts/noimageblocking.webgenie.com/cgi-bin
alias cgi4='cd $cgi4'
cgi5=/var/www/vhosts/speedupmywebsite.webgenie.com/httpdocs/cgi-bin
alias cgi5='cd $cgi5'

logs=/var/www/vhosts/system/webgenie.com/logs
alias logs='cd $logs'
logs1=/var/www/vhosts/system/sdm.webgenie.com/logs
alias logs1='cd $logs1'
logs3=/var/www/vhosts/system/webgeniemobile.com/logs
alias logs3='cd $logs3'
logs4=/var/www/vhosts/system/noimageblocking.webgenie.com/logs
alias logs4='cd $logs4'
logs5=/var/www/vhosts/system/speedupmywebsite.webgenie.com/logs
alias logs5='cd $logs5'

alias bck='/var/www/vhosts/webgeniemobile.com/cgi-bin/backup.cgi'
dz=/var/www/vhosts/webgenie.com/httpdocs/SC/metallographic
alias dz='cd $dz'
ai='/var/www/vhosts/webgenie.com/httpdocs/AI/Jumble/WorkBench'
psi='/var/www/vhosts/webgenie.com/httpdocs/SC/PaulSingh'
alias ai='cd $ai'
alias psi='cd $psi'
alias aic='grep "/AI/Jumble/" /var/www/vhosts/system/webgenie.com/logs/access_log | grep -v 58.107'
alias sp='source ~/.bashrc' 
psi

alias a='./singh.cgi'
