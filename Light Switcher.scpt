(* A simple Apple Script that enables an easy switch between macOS "light" and "dark" built-in modes
 Florent DUFOUR 2017 *)

activate
set message to "What mode do you want ?"
set tempVar to display dialog message buttons {"Dark Mode", "Light Mode", "Exit"} default button 2

--

set choice to button returned of tempVar
if choice is "Dark Mode" then
	set res to true
else if choice is "Light Mode" then
	set res to false
else
	quit
	
end if

--

tell application "System Events"
	tell appearance preferences
		set dark mode to res
	end tell
end tell

quit
