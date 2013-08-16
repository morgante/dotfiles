source /opt/boxen/env.sh

# BI Deploy: environment branch
alias bideploy="ssh admin@10.10.10.240 'php /home/admin/deploy/deploy.php morgante $1 $2 $3'"

# Get status of all git repos in current directory
alias git-check="find . -maxdepth 4 -name .git -execdir pwd \; -execdir git status \;"