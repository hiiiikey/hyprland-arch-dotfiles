
#!/bin/bash


# Define options with Nerd Font icons
options=" Suspend\n Logout\n Reboot\n Shutdown"

# Show the rofi menu with the specified font
chosen="$(echo -e "$options" | rofi  -dmenu -i -p "Power Menu:" -font "JetBrainsMono Nerd Font Medium 11.5" -theme-str 'window {height:350px; width:500px; } ')"


# Function to confirm action with buttons (Yes/No), defaulting to "No"
confirm_action() {
    rofi -dmenu -i -p "Are you sure?" -mesg "Select 'Yes' to confirm." -theme-str 'window {height:250px; }' -markup-rows -font "JetBrainsMono Nerd Font Medium 12.5"  <<< $' No\n Yes'
}

# Take action based on the selected option
case $chosen in

    *Suspend*)
       # confirm=$(confirm_action)
        # if [[ $confirm == *Yes* ]]; then
            systemctl suspend 
        # fi ;;
        ;;
    # *Lock*)
        # betterlockscreen -l blur ;;
    # *Logout*)
    #     confirm=$(confirm_action)
    #     if [[ $confirm == *Yes* ]]; then
    #         killall sway
    #     fi ;;
    *Reboot*)
        confirm=$(confirm_action)
        if [[ $confirm == *Yes* ]]; then
            hyprshutdown -t 'Restarting...' --post-cmd 'reboot'
        fi ;;
    *Shutdown*)
        confirm=$(confirm_action)
        if [[ $confirm == *Yes* ]]; then
            hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0' 
        fi ;;
    *)
        exit 1 ;;
esac

