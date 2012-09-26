# Mostrar la branch de git en el prompt

function parse_git_branch_and_add_brackets {

    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
                                                                                                                                  

PS1="\W \u\[\033[0;33m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

PYTHONPATH="/Users/pfraca/Dropbox/github/cloudtek/analyzer:/Users/pfraca/Dropbox/github/cloudtek/infotek/:/Users/pfraca/Dropbox/github/cloudtek/infotek/common_utils:/usr/local/google_appengine:/Users/pfraca/Dropbox/github/cloudtek/analyzer/spreadsheet/lib/gdata.zip:$PYTHONPATH"
export PYTHONPATH
PATH="/Users/pfraca/android-sdk-macosx/platform-tools:/usr/local/bin:$PATH"