new_size=$1
line=$(grep "FontName" ~/.config/xfce4/terminal/terminalrc)
font_name=$(echo "$line" | sed s/'\w*$'//)
font_size=$(echo "$line" | grep -oE '[^ ]+$')
##echo $font_name"jjj"
##echo $font_size"iii"
action='s/'$font_name$font_size'/'$font_name$new_size'/'
sed -i "$action" ~/.config/xfce4/terminal/terminalrc

