#!/bin/bash 
# Simple Script for Restoring Default Window Size and Position
# by Jim Lambert on February 2, 2025

# ASCII HEADER
echo 
cat << "EOF"
   
| |  | (_)         | |               | ___ \            | |  
| |  | |_ _ __   __| | _____      __ | |_/ /___ ___  ___| |_ 
| |/\| | | _ \ / _` |/ _ \ \ /\ / / |    // _ / __|/ _ | __|
\  /\  | | | | | (_| | (_) \ V  V /  | |\ |  __\__ |  __| |_ 
 \/  \/|_|_| |_|\__,_|\___/ \_/\_/   \_| \_\___|___/\___|\__|

EOF

# COLORS   
RED='\033[0;31m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color

# ARRAY OF COMMANDS AS STRINGS
commands=(
'defaults delete com.apple.AppStore "NSWindow Frame AppStoreMainWindow"'
'defaults delete com.apple.MobileSMS "NSWindow Frame CKMessagesSceneDelegate"'
'defaults delete com.apple.photos "NSWindow Frame MainWindow"'
'defaults delete ~/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari.plist "NSWindow Frame BrowserWindowFrame"'
'defaults delete com.apple.SystemProfiler "NSWindow Frame SystemProfile"'
'defaults delete com.apple.systempreferences "NSWindow Frame main"'
'defaults delete com.apple.RemoteDesktop "NSWindow Frame mainWindow"'
)

# ECHO AND EXECUTE COMMANDS
for command in "${commands[@]}";
do
    echo -e "${GREEN}$command ${NC}"
    eval "$command"
    echo ""
done

 echo -e "${GREEN}Done."

