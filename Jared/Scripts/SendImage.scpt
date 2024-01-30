#!/bin/sh

#  SendImage.scpt
#  iMessageGemini
#
#  Created by Hunter Ward on 1/30/24.
#  
-- SendImage.scpt
-- Sends an image using iMessage
-- Parameters: recipientNumber (String), imagePath (String)

on run argv
    set recipientNumber to item 1 of argv
    set imagePath to item 2 of argv

    tell application "Messages"
        set targetService to 1st service whose service type = iMessage
        set targetBuddy to buddy recipientNumber of targetService
        send POSIX file imagePath to targetBuddy
    end tell
end run
