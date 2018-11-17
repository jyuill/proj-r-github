# proj-r-github
Testing RStudio + Github integration features

## Scenarios Covered include:

### Roll-backs

#### How do I roll back to a previous version of a file?

1. RStudio > Git window > History
2. Find file version you want to roll back to
3. View File @ <commit id> to open
4. Save As...different file name or overwrite existing
5. Commit (and Push)

#### Can I recover a code snippet from an older version of a file?

Yes: use the same process as above to open the old file. You can copy desired code from the old file and paste it into the existing file. 

#### Can I recover a deleted file?

Yes: just use same process as above to find the file version you want in a commit before it was deleted and Save As.

Even if you don't necessarily want to recover a deleted file, you can always go into an older Commit and look at the code.

### Conflict resolution

Conflicts typically happen when you don't PUSH your files to the remote repository when done working OR you don't PULL files from the remote repository at the start of a work session (and changes have been Pushed to the remote from elsewhere).

#### Files conflict between local and remote and you want to keep local

#### Files conflict between local and remote and you want to keep remote

#### Files conflict between local and remote and you want to figure out what the conflicts are

### General

#### If I delete a file in the remote repository and have a newer version in the local repository, will it get deleted when I pull from the remote repository?
