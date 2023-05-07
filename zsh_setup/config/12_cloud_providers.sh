# export AWS_SECRET_ACCESS_KEY=$(security find-generic-password -a AWS_SECRET -w)
# export AWS_ACCESS_KEY_ID=$(security find-generic-password -a AWS_ID -w)
export AWS_DEFAULT_REGION=us-west-2
alias with_aws='env AWS_ACCESS_KEY_ID=$(security find-generic-password -a AWS_KEY -w) AWS_SECRET_ACCESS_KEY=$(security find-generic-password -a AWS_SECRET -w) bash -c'
