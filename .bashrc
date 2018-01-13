# ~/.bashrc: executed by bash(1) for non-login shells.

export PS1="\e[1;33m[\t \w]\$ \e[m"
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

alias cdmysql='cd /var/lib/mysql'
#apache2ctl start
alias stop_mysql='/etc/init.d/mysql stop'
alias restart_mysql='/etc/init.d/mysql restart'
alias restart_apache='service apache2 restart'
alias ur='cd /usr/local/apache/sites/webgenie.com/usr/records'
#mysql -uadmin -p`cat /etc/psa/.psa.shadow`;
#create user 'avs'@'localhost' identified by '2Kenooch';
#grant all privileges on *.* to 'avs'@'localhost' identified by '2Kenooch' with grant option;

alias frm='/bin/rm' # Force an rm without interative
alias conf='cd /var/www/vhosts/system/webgenie.com/conf'
ht=/var/www/vhosts/webgenie.com/httpdocs/
alias ht='cd $ht'

cgi=/var/www/vhosts/webgenie.com/cgi-bin
alias cgi='cd $cgi'

logs=/var/www/vhosts/system/webgenie.com/logs
alias logs='cd $logs'

dz=/var/www/vhosts/webgenie.com/httpdocs/SC/metallographic
alias dz='cd $dz'
psi='/'
alias psi='cd $psi'
alias sp='source ~/.bashrc' 
psi
function scps ()
{
	domain=eagle468.startdedicated.com
	scp $1 $domain $2
}
