# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias cl="clear;pwd;echo -e '\e[95m$USER\e[39m@\e[96mmpddev \e[39m\n'"

PS1='\e[96m\$\e[97m\e[49m '
alias ll='ls -la --color=always'
alias ls='ls -a --color=tty'
alias rundisp="java -Dproperties.override.path=dataloader.properties -javaagent:lib/spring-instrument-3.2.3.RELEASE.jar -cp target/mpd-cch-1.0-SNAPSHOT.jar gov.mpd.cch.jobs.DispositionDataLoaderJob"
alias runloads="echo '\n\nAbout to run Control Loader!'; bash java -Dproperties.override.path=dataloader.properties -javaagent:lib/spring-instrument-3.2.3.RELEASE.jar -cp target/mpd-cch-1.0-SNAPSHOT.jar gov.mpd.cch.jobs.ControlDataLoaderJob; echo '\n\nAbout to run dataloader!!'; bash java -Dproperties.override.path=dataloader.properties -javaagent:lib/spring-instrument-3.2.3.RELEASE.jar -cp target/mpd-cch-1.0-SNAPSHOT.jar gov.mpd.cch.jobs.DataLoaderJob; echo '\n\nAbout to load Dispo Loader!!'; bash java -Dproperties.override.path=dataloader.properties -javaagent:lib/spring-instrument-3.2.3.RELEASE.jar -cp target/mpd-cch-1.0-SNAPSHOT.jar gov.mpd.cch.jobs.DispositionDataLoaderJob"
