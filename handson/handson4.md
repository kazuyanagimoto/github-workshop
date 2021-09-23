# Trouble Shooting

## 0. Git reflog
You can check the history of all your git activity
```
git reflog
```

Nothing bad happens in git beacuse of the reflog (just keep in mind)

## 1. Reset
Until you push, you can go back to the previous commit

```
git reset --soft HEAD^
```

You can do a hard reset, but it's beyond of this workshop.

## 2. Conflict
If you edit the same line of the code in different branches and try to merge them,
you will get conflict.

Solving conflict looks nightmare, but actually choose
- the lines of code A
- the lines of code B
- lines of the both code A and B


## 3. Stash
When you do not want to create a commit, you might want to checkout.
```git stash``` is a good option.

```
git stash -u
git stash list
git checkout main
git checkout dev
git stash pop
```