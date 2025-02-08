on run {input, parameters}
	tell application "Finder"
		set myPath to (POSIX path of (target of front window as alias))
	end tell
	
	if application "iTerm" is not running then
		-- iTerm not running: start it
		tell application "iTerm"
			activate
			delay 0.2
			tell current session of current window
				write text "cd " & quoted form of myPath
			end tell
		end tell
	else
		-- iTerm is running
		tell application "iTerm"
			activate
			delay 0.2
			
			if (exists window 1) is false then
				-- No windows: create one
				create window with default profile
				tell current session of current window
					write text "cd " & quoted form of myPath
				end tell
			else
				-- Window exists: create new tab
				tell current window
					create tab with default profile
					tell current session
						write text "cd " & quoted form of myPath
					end tell
				end tell
			end if
		end tell
	end if
	
	return input
end run