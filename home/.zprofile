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

# Docker Stuff
alias docker='docker --tls'
alias docker-killall='docker kill $(docker ps -q)'
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/mpell/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Lazy git
alias up='git commit -a -m "yo" && git push'

# Lame Sublime
alias sub="open -a \"Sublime Text 2\""