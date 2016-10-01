function parse_git_branch() {
  __git_ps1
}

function serve() {
  ruby -run -e httpd -- -p 4444 ${1:-'.'}
}

