# check out ezprompt.net

if [ -f ~/.git-completion.bash ]; then 

  . ~/.git-completion.bash 

fi

alias sshk='pbcopy < ~/.ssh/id_rsa.pub' 

alias bashrc='vim ~/.bashrc' 

alias bashr='source ~/.bashrc' 

alias gch='git checkout' 

alias gchm='git checkout mainline' 

alias gignore='git status -s | grep -e "^\?\?" | cut -c 4- >> .gitignore' 

alias gs='git status' 

alias gca='git commit --amend' 

alias gacm='git commit -a -m' 

alias gcm='git commit -m' 

alias gau='git add -u' 

alias glog='git log --oneline --decorate --graph --exclude="backup" --all' 

alias gd='git diff' 

alias gb='git branch' 

alias gb='git branch' 

alias gp='git pull' 

alias grbi='git rebase -i' 

alias gbrl='git branch | grep -v -e "master" -e "mainline" | xargs git branch -D' 

alias gbc='git rev-parse --abbrev-ref HEAD' 

alias gbdef="git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'" 

gpushu () { git push --set-upstream origin $(gbc); } 

gclean() { 

branch=$(gbc); 

gch $(gbdef); 

git pull; 

gb -d $branch; 

} 

function ff() { 

    find . -type f -a -exec grep -il "$1" '{}' \; | grep "$2" 

}




