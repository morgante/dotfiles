source /opt/boxen/env.sh
source ~/.private

# BI Deploy: environment branch
alias bideploy="ssh admin@10.10.10.240 'php /home/admin/deploy/deploy.php morgante $1 $2 $3'"

alias bi-mongo1='mongo --host 10.10.10.36 businessinsider'
alias bi-mongo2='mongo --host 10.10.10.35 businessinsider'
alias bi-analytics='mongo --host 10.10.10.242:27018 bi_analytics'
alias bi-analytics2='mongo --host 10.10.10.243 bi_analytics'

alias bi-solr="(cd /opt/boxen/homebrew/Cellar/solr36/3.6.2/libexec/example/; java -jar start.jar)"

# Get status of all git repos in current directory
alias git-check="find . -maxdepth 4 -name .git -execdir pwd \; -execdir git status \;"

# Add AWS to path
export PATH=$PATH:/Users/mpell/code/aws/eb/eb/macosx/python2.7/

# Add our custom bin folder to path
export PATH=$PATH:/Users/mpell/code/bin/

# BI composer
alias phpcomp="php /opt/boxen/bin/composer.phar"

# Gitshots
export GITSHOTS_SERVER_URL="http://blooming-earth-3802.herokuapp.com"

# Silly command
alias why='yes 2>&1 | while read line ; do echo $line | say ; done'

# Docker Stuff
alias docker-killall='docker kill $(docker ps -q)'
export DOCKER_HOST=tcp://localhost:48002
export DOCKER_TLS_VERIFY=0

# Lazy git
alias up='git commit -a -m "yo" && git push'

# Lame Sublime
alias sub="open -a \"Sublime Text 2\""

# Some Spider
export DOCKER_SOMESPIDER_HOME=/home/core/spider

# DocNav
export DOCNAV_ROOT=/home/vagrant/code/docnav/web
