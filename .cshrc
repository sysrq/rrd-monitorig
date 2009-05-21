#
# cshrc, see also csh(1), environ(7) for detail
#

# ------------------------------------------------------------------------->
# Описание файловых систем, загрузчика и т.д.
# ------------------------------------------------------------------------->

# Мой PROMPT. Когда пользователем - зеленый, когда рутом - красным.

set     COLOR1="%{\e[01;32m%}"
set     COLOR2="%{\e[00;32m%}"
set     COLOR3="%{\e[00;39m%}"

if( `whoami` == root ) then
        set COLOR2="%{\e[00;31m%}"
endif

set     prompt="$COLOR1\[$COLOR2`whoami`\@`hostname`$COLOR1] $COLOR2%b%/%b%#$COLOR3 "

# Настройки окружения

set     path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin /usr/home/max/openser_proxy/sbin)

set     LSCOLORS = "cxBxhxFxFxhxCxCxExEx"

set     filec
set     history = 110
set     savehist = 110

umask   0022
mesg    y

# Don't overwrite existing files with the redirection character ">"
#set    noclobber

# Notify me when the status of background jobs change
set     notify


# Don't let me log out by pressing <ctrl-d>
set     ignoreeof

# Прочие настройки

setenv  CHARSET KOI8-R
setenv  LANG    ru_RU.KOI8-R

set     LC_MESSAGES = C
set     LC_CTYPE = ru_RU.KOI8-R
set     LC_COLLATE = ru_RU.KOI8-R

setenv  EDITOR     ee
setenv  PAGER      more
setenv  BLOCKSIZE  K

# logname for send-pr(1)
setenv  LOGNAME "sysrq@sysrq.name"
setenv  NAME    "Max I. Shaposhnikoff"
setenv  NNTPSERVER "news.lucky.net" 
# X11
set     GDK_USE_XFT = 0
set     USE_GDK_XFT = 0


# my aliases
alias j         jobs -l
alias la        ls -aG
alias lf        ls -FAG
alias ll        ls -aFgloG
alias ls        ls -GkF
alias l         ls -la
alias df        df -h
alias du        du -h
alias c         clear
alias rm	rm -P


alias mine      'chmod og-rwx'

alias playit    'mplayer -hardframedrop -af comp,volnorm -osdlevel 3 -loop 0'
alias lameit    '-q0 -k -md -V0 -F -b128 -B320 -c -p --noath --clipdetect --replaygain-accurate'

alias grabit    'dagrab -d /dev/acd0 -v -a'
alias shootme   'import -window root /tmp/screen.png'
alias pushme    'screen -xRD'
alias isiloit   'iSiloBSD'

alias mailsnt   'grep status=sent /var/log/maillog | wc -l'
alias mailrej   'cat /var/log/maillog | grep reject | wc -l'

alias mc        /usr/local/bin/mc -a
alias sumc      sudo /usr/local/bin/mc -a
alias dfme      df -H -t ufs

alias psg       'ps -auxwww | grep \!* | grep -v grep'

alias qscan     sudo nmap -P0 --osscan_guess -p 21,22,23,25,53,80,110
alias fscan     sudo nmap -v -sT -F -O -P0 -T 1 -M 50
alias bindver   'nslookup -class=chaos -q=txt version.bind'

alias blankrw   burncd -v -f /dev/acd0 -e -s max blank
alias eraserw   burncd -v -f /dev/acd0 -e -s max erase
alias bulkiso   'readcd dev=2,0,0 f=cdimage.raw'
alias burnit    'mkisofs -rJ -jcharset koi8-r . | burncd -s max -e -v -f /dev/acd0 data - fixate'
alias dvdit     'growisofs -Z /dev/cd0 -rJ -jcharset koi8-r .'
alias isoit     'mkisofs -rJ -jcharset koi8-r -o isoit.iso .'
alias dvdinfo   'dvd+rw-mediainfo /dev/cd0'
alias open      'sudo cat /usr/local/etc/openvpn/logs/openvpn-status.log | grep 192'
alias fido      'telnet bbs.rndfido.net'

alias send-pr   "send-pr -s non-critical -c 'Max I. Shaposhnikoff <sysrq@sysrq.name>'"
alias top       "htop"
alias mtr       "mtr -t"
alias news 	"tin -r"
alias ena	"sudo -s"


# ------------------------------------------------------------------------->
# The END
# ------------------------------------------------------------------------->

