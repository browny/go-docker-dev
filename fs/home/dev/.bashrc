
alias gengotags='find . -name "*.go" -not -path "./Godeps/*" -not -path "tags" | xargs gotags > tags'
