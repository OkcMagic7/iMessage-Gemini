#!/bin/sh

#  SendText.scpt
#  iMessageGemini
#
#  Created by Hunter Ward on 1/30/24.
#  
-- SendText.scpt
-- Sends a text message using iMessage
-- Parameters: recipientNumber (String), messageText (String)

on run argv
    set recipientNumber to item 1 of argv
    set messageText to item 2 of argv

    tell application "Messages"
        set targetService to 1st service whose service type = iMessage
        set targetBuddy to buddy recipientNumber of targetService
        send messageText to targetBuddy
    end tell
end run
