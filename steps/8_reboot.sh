echo "---------------------------------"
echo " >> 8. rebooting <<"
echo "---------------------------------"

echo "if hostname needs to be set,"
echo "sudo scutil --set ComputerName newname"
echo "sudo scutil --set LocalHostName newname"
echo "sudo scutil --set HostName newname"

osascript -e 'tell app "loginwindow" to «event aevtrrst»'
