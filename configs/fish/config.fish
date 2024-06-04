if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
    # Commands to run in login sessions can go here
end

fish_add_path $HOME/Dotfiles/scripts
# fish_add_path /opt/homebrew/bin
# fish_add_path /opt/homebrew/Caskroom/miniconda/base/bin

abbr a gcalcli
abbr aa gcalcli agenda
abbr am gcalcli calm
abbr an gcalcli --calendar='chagel@gmail.com' quick
abbr aw gcalcli calw
abbr aws-ec2 "aws ec2 describe-instances --output table --query \"Reservations[].Instances[].{Name:Tags[?Key=='Name'].Value | [0],InstanceID:InstanceId,InstanceType:InstanceType,PublicIP:PublicIpAddress,State:State.Name,PrivateIP:NetworkInterfaces[0].PrivateIpAddress}\""
abbr aws-users aws iam list-users --output table
abbr b bat
abbr be bundle exec
abbr bea bundle exec rails
abbr bec bundle exec rails c
abbr bed bundle exec rake db:migrate
abbr beg bundle exec guard
abbr bek bundle exec rake
abbr bes bin/rails s -p3000
abbr bet RAILS_ENV=test bundle exec rake db:drop db:create db:migrate
abbr c clear
abbr dpaste curl -s -F 'content=<-' http://dpaste.com/api/v2/
abbr e vim
abbr f fzf
abbr h history
abbr install brew install
abbr l ls -la
abbr lg "ls -la | grep"
abbr ll ls -lG
abbr lt "ls -lGt | head"
abbr m timew
abbr mgst mgitstatus
abbr mm timew month
abbr mslm timew summary :lastmonth
abbr msm timew summary :month
abbr mux tmuxinator
abbr mw timew week
abbr mxlm "timew export :lastmonth | ~/.timewarrior/extensions/to-csv"
abbr mxm "timew export :month | ~/.timewarrior/extensions/to-csv"
abbr n nautilus
abbr nn nnn -d -T t
abbr note vim -c 'edit note:$1'
abbr notes vim -c 'RecentNotes'
abbr ns "ls -c $NPATH | egrep -i $1"
abbr o handlr open
abbr reload source ~/.config/fish/config.fish
abbr t task
abbr ta tmux attach-session -t
abbr tl tmux list-session
abbr tm task long due.before:sonm
abbr tn task add
abbr tnt task add due:eod
abbr tt task ls due.before:tomorrow
abbr tw task ls due.before:soww
abbr uc uncommitted
abbr uninstall brew remove
abbr upgrade-system brew upgrade
abbr vg vim Gemfile
abbr vid vim ~/Dotfiles/
abbr vie vim ~/.vimrc
abbr vim nvim
abbr vit vim ~/.tmux.conf
abbr ws ruby -run -ehttpd . -p 8000

set -gx EDITOR vim
set -gx GPG_TTY (tty)
set -U nvm_default_version lts/iron

set -U fish_greeting "🐟"
