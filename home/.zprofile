source /opt/boxen/env.sh

# BI Deploy: environment branch
alias bideploy="ssh admin@10.10.10.240 'php /home/admin/deploy/deploy.php morgante $1 $2 $3'"

alias bi-mongo1='mongo --host 10.10.10.36 businessinsider'
alias bi-mongo2='mongo --host 10.10.10.35 businessinsider'
alias bi-analytics='mongo --host 10.10.10.242:27018 bi_analytics'
alias bi-analytics2='mongo --host 10.10.10.243 bi_analytics'

alias bi-solr="(cd /opt/boxen/homebrew/Cellar/solr36/3.6.2/libexec/example/; java -jar start.jar)"

# Get status of all git repos in current directory
alias git-check="find . -maxdepth 4 -name .git -execdir pwd \; -execdir git status \;"

# BI composer
alias phpcomp="php /opt/boxen/bin/composer.phar"