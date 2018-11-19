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

* Case 1: You COMMIT changes to a file in your local repo and try to PUSH to remote repo that has changes in another file
* Case 2: You make changes to a file in your local repor that has different changes in the remote repo and you try to PUSH from the remote, which generates an error, and when you PULL from the remote repo it generates conflict 

The first case above is easily dealt with simply by doing a PULL to get the latest files from the remote repo and then PUSHing your changes in the local back to the remote repo. Because you have committed your local changes, Git will recognize this as the latest version and update the file in the remote repo.

The second case is more challenging. 

Example:

* File A has been changed in remote repository but not PULLed into local repo
* File A has been changed in local repo and COMMITTED
* PUSH to remote repo generates an error with 'Updates were rejected...'
* PULL from remote (which would work fine in Case 1 above) generate CONFLICT error and identifies File A as the source of conflict

#### What to do?

First thing is to see what the conflict is:

1. Git window > icons will indicate two versions of the file as unmerged 'U U'
2. Select file > Diff
3. File window will show conflicts within <<<<< HEAD and >>>>> <commit id>
   - two columns with row numbers identify where the changes happened: column 1 refers to the local version, column 2 refers to the remote version
   - ====== also demarcates the local vs remote changes, whith local above the ======== and remote changes below
4. Local version of the file will now also have these markings

Options:

#### Keep local changes

1. Git > select file > Diff > identify conflict > Revert
2. Commit > PUSH (file may not appear in Git window)

#### Keep remote changes

1. Git > select file > Diff > identify changes
2. Open file
3. Remove the code identified as the local change, leave the code identified as remote changes, remove any of the conflict markings
4. Stage > Commit > PUSH

#### Keep/merge some changes from both local and remote

Basically same as above for 'Keep remote changes', just modify code as desired.
Then Stage > Commit > PUSH

### General

#### What happens to files that I commit in the same commit that generates a conflict, but these files are not involved in the conflict?

They will be pushed to the remote repo as part of the next successful PUSH, since changes in them are already committed.

#### If a file is deleted in the remote repository and there is a newer version that has been Committed in the local repository, what will happen when I try to PUSH the updated file to the remote repo?

First of all, there will be an error with 'Updates were rejected...'. 

Then, when you PULL from the remote repository, an Conflict will be generated. In the Git window, Status will show one version of file unmerged, one deleted: 'U D'.

You can:

* Diff > Revert to recover the local file; then Commit > PUSH