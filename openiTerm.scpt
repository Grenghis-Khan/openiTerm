on run {input, parameters}
	tell application "Finder"
		set myPath to (POSIX path of (target of front window as alias))
	end tell
	
	tell application "iTerm"
		activate
		delay 0.2
		if not (exists window 1) then
			create window with default profile
		end if
		
		delay 0.2
		
		tell current session of current window
			write text "cd " & quoted form of myPath
		end tell
	end tell
	
	return input
end run

