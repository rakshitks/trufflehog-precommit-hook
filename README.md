
# Pre commit hook trufflehog 

In order to identify secrets being pushed to github repository . We have introduced pre commit hooks which blocks your commit if it contains any secrets .
This pre commit hook will be attached to all repository which are newly cloned and the existing ones 

## Requirement
Python 3  and above should be installed on the system <br>
pip3 should be installed on the system

## Installation 
Clone the repository
```
git clone https://github.com/rakshitks/trufflehog-precommit-hook.git
```
Go inside the folder
```
cd trufflehog-precommit-hook/
```
Update the permission of the files
```
chmod a+x *
```
Now run the file install.sh. This file will install everything to set up the pre commit hook
```
bash install.sh
```

## Testing the pre commit hook
```
git clone <repo>

```

Make changes in the file and push the changes
```
git add . 
```

Now commit the changes . If installation is correct trufflehog will run 
```
git commit -m "My first commit"
```

If there are secrets this will be showed in the terminal along with secret details
```
TruffleHog...............................................................Failed
```
