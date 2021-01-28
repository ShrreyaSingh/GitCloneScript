
#usage
#gitCloneScript.sh <gitUserName> <gitPassword> <gitProjectName>

#setting up command line arguments
gitUserName=${1}
gitPassword=${2}
gitProjectName=${3}

#execution of setup begin from here

#setting up local username and email
git config --global user.email "${gitUserName}@github.com"
git config --global user.name "${gitUserName}"

#setting up permanent storage of git user name and password
#this is not safe. for enterprise use ssh keys
git config --global credential.helper store

#cloing the remote repository into local with username and password
git clone "https://${gitUserName}:${gitPassword}@github.com/${gitUserName}/${gitProjectName}.git"

#changing directory to project
cd ${gitProjectName}
