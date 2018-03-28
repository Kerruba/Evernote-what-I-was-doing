tell application "Evernote"
	activate
	set alertTitle to "Checking for new task"
	set alertMessage to "Do you want to add a new entry to the task list?"
	set alertDialog to display alert alertTitle message alertMessage buttons {"Yes", "No"} default button "No" giving up after 10
	if button returned of alertDialog = "No" then
		return
	end if
	set notebook_name to "Journals"
	set note_name to "What I am doing"
	set note_query to "notebook:\"" & notebook_name & "\" intitle:\"" & note_name & "\""
	set datetime to (do shell script "date '+%Y-%m-%d %H:%M'")
	
	if (not (notebook named notebook_name exists)) then
		make notebook with properties {name:notebook_name}
	end if
	set journal to notebook notebook_name
	
	set _note to get first note of notebook notebook_name where its title is note_name
	
	set theResponse to display dialog "What are you working on now?" default answer "" buttons {"Cancel", "Submit"} default button "Submit"
	tell _note to append html "<li>" & datetime & ": " & (get text returned of theResponse) & "</li>"
	
end tell
