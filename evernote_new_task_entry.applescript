tell application "Evernote"
	activate
	set notebook_name to "Journals"
	set note_name to "What I am doing"
	set note_query to "notebook:\"" & notebook_name & "\" intitle:\"" & note_name & "\""
	set datetime to (do shell script "date '+%Y-%m-%d %H:%M'")
	
	if (not (notebook named notebook_name exists)) then
		make notebook with properties {name:notebook_name}
	end if
	set journal to notebook notebook_name
	
	--if (not ((find notes note_query) exists)) then
	--	create note title note_name with text " " notebook notebook_name
	--end if
	
	set _note to get first note of notebook notebook_name where its title is note_name
	
	set theResponse to display dialog "What are you working on now?" default answer "" buttons {"Cancel", "Submit"} default button "Submit"
	tell _note to append html "<li>" & datetime & ": " & (get text returned of theResponse) & "</li>"
	--set myNotes to find note note_query in notebook notebook_name
	
	
	--tell journal to append html theResponse
	
end tell
