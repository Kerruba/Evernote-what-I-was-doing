# Evernote-what-I-was-doing
A simple apple script that let you log in an Evernote note what you're doing at the moment

Download this repository to actually make it work! :-)

# Setup

In order to make this small script to work, you will need a **Journals** notebook somewhere in your evernote as well as a note in there called **What I am doing**

# Run the script
To run the script should be enough to call
```bash
osascript ./evernote_new_task_entry.applescript
```

# Crontab
You can define a crontab to run this script at a scheduled time. Follow the instructions that you can find [here](https://ole.michelsen.dk/blog/schedule-jobs-with-crontab-on-mac-osx.html).

An example of what to add to the crontab for this script to run every half hour is:
`0/30 * * * 1-5 osascript <path-to-the-.applescript-file>`
