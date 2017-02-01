function parse_git_branch_and_add_brackets {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}



function __get_dir {
    DIR=$(basename `pwd`)
    if [[ $DIR == "mobility-ios" ]]
    then
	LOGO=" "
    else
	LOGO=""
    fi
}

PROMPT_COMMAND='__get_dir'

PS1="\W \u\[\033[0;33m\]\$(parse_git_branch_and_add_brackets) \$LOGO\[\033[0m\]\$ "

PYTHONPATH="/usr/local/google_appengine:$PYTHONPATH"
export PYTHONPATH
PATH="/Users/fracaped/android-sdks/platform-tools:~/android-ndk-r8d:/usr/local/bin:/Users/fracaped/Documents/phacility/arcanist/bin:/opt/local/bin:$PATH"
ANDROID_HOME="/Users/fracaped/android-sdks/"
export ANDROID_HOME
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$HOME/.fastlane/bin:$PATH"
