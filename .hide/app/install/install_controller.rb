# bash implementation
require_relative '../../lib/screensaver/screensaver_controller.rb'
`
#!/bin/bash
adaptive_wait () {
TIMEOUT=25
  until [ -d ~/Library/Screen\ Savers/Aerial.saver ] || [ -d /Library/Screen\ Savers/Aerial.saver ] || [ $TIMEOUT -eq 0 ] ; do
    if ! ((TIMEOUT % 5)); then
    osascript -e 'display notification "To allow for Decision/User Credentials" with title "Application Waiting"'
    fi
    sleep 1
    TIMEOUT=$[$TIMEOUT-1]
  done
}
adaptive_wait
`
require_relative '../../helper/check/user_input.rb'# adaptive_wait
require_relative '../../helper/notify/notification_controller.rb'
require_relative '../../lib/launch_agent/launch_agent_controller.rb'
