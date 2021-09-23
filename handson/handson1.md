# Basics of Git & GitHub

## Step 1 Initite the Project
Create a remote repository and clone to local

- Choose the private repository (for research)
- Choose the language you are using for .gitignore
- README is just an option
- No need to choose license (for research)

## Step 2 Commit and Push
1. See the history of the initial Commit
```
git log
```

2. Write a new file and stage it

```
git add foo1.txt
```

3. See the status and history

```
git status
git log --oneline
```

4. Commit it and check the status and log
```
git commit -m "ADD foo1.txt"
git status
git log --oneline
```

5. Push to the main branch of the remote repository
```
git push origin main
```

## Step 3 VSCode
Repeat Step 2 by VSCode (with "foo2.txt")


## Step 4 Branch

1. Create a new branch and checkout to it
```
git branch "dev"
git branch checkout dev
```

Or

```
git checkout -b "dev"
```

2. See the list of the branches
```
git branch
```

3. Create some commit

4. Push to the remote branch

```
git push origin dev
```

5. Create a Pull Request and Merge

6. Pull to the main branch to local repository
```
git checkout main
git pull origin main
```


