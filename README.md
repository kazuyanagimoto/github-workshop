# CEMFI GitHub Workshop

## Preparation
1. Create GitHub Account 
1. Download the following tools
1. Open GitHub Desktop and login

With CEMFI email address, you can get the student developer pack.

### Tools
- [GitHub Desktop](https://desktop.github.com/)
- [VSCode](https://code.visualstudio.com/) (Editor)
- [DVC](https://dvc.org/) (Version Control Tools for Data)

You might need to reboot your computer after the installation.

## Initialize Project
1. Create a Remote Repository
1. Clone it to your local machine (Click "Code" and open in GitHub Desktop)
1. Open the folder in VSCode
1. Prepare the folder in Google Drive (and copy the folder code)
1. Setup the remote of DVC
```
dvc init
dvc remote add --default myremote gdrive://GDRIVE_FOLDER_CODE
```

## WorkFlow
### 1. Sync Local Repository (Remote to Local)
```
git checkout main
git pull origin main
dvc pull
```
### 2. Work (Local)
1. Checkout to the developing branch
```
git checkout -b "hoge"
```
2. Write Codes
### 3. Commit (Local)
```
dvc add -R data
git add .
git commit -m "hogehoge"
```
### 4. Push and Pull Request (Local to Remote)
1. Push to the developing branch in remote repository
```
git push origin hoge
```
2. Open GitHub remote repository
3. Create Pull Request with message with "Fix #NUMBER"
4. If it is you, confirm merge and delete the branch

### 5. Sync Local Repository and Delete Developing Branch (Remote to Local)
```
git checkout main
git pull origin main
git branch -d hoge
```

### 6. Push to DVC Remote Storage
```
dvc push
```