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

Conflicts can arise when an individual file is changed in different locations and local and remote repositories are not syncronized properly. This typically happen when you don't PUSH your files to the remote repository when done working OR you don't PULL files from the remote repository at the start of a work session and in the meantime changes have been made elsewhere on another computer and PUSHed to the remote repository. Conflict arises when:

* You make changes to any file in your local repo and try to PUSH to remote
* You make changes to a file in your local repor that has different changes in the remote repo and you try to PULL from the remote

The first case above is easily dealt with simply by doing a PULL to get the latest 
Example 1:

* File has been changed in remote repository but not PULLed into local
* File has changed in local repo and COMMITTED
* PULL from remote repo identifies Conflict that can't be resolved by software

#### What to do?

First thing is to see what the conflict is:

1. Git window > select file > Diff
2. Icons will indicated it is unmerged (U)
3. File window will show conflicts within <<<<< HEAD and >>>>> <commit id>

Options:

* Select Stage and Commit. This will capture the code with conflict identified. Can then edit the file to resolve the conflict manually. Stage > Commit.
* Select Revert to roll back changes on remote file and keep current version of local file. Commit (even though will look empty). PUSH.

#### Files conflict between local and remote and you want to keep local

1. PULL - identify conflict
2. Diff > Revert
3. Commit > PUSH

#### Files conflict between local and remote and you want to keep remote

### General

#### If I delete a file in the remote repository and have a newer version in the local repository, will it get deleted when I pull from the remote repository?
