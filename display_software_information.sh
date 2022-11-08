#!/bin/bash
#Displays software information (Software Number, Software Name, Bundle Version)
# PatrikRo, November 08 2022

#Variables
softwareInformation=`sw_vers`
computerName=`scutil --get ComputerName`

#Use of Jamf-Helper
#Custom logo for information window, here we use jamf self service logo
/Library/Application\ Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper \
-windowType hud -heading "Software Information" -description "$softwareInformation" -button1 "OK" \
-icon "/Applications/Self Service.app/Contents/Resources/AppIcon.icns" -defaultButton 1 -lockHUD