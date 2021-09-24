---
theme: apple-basic
colorSchema: dark
download: true
layout: intro
---

# Git and GitHub Workshop

Version Control for Economists

<div class="absolute bottom-10">
  <span class="font-700">
    Kazuharu Yanagimoto <br><br>
    September 24, 2021
  </span>
</div>


---

# Why Do People Use Git?

<br>

## 📝 **Recording**
take logs of all coding activity of you and your collaborators

## 🕒 **Restorable**
go back to a previous version of codes

## 🔍 **Comparable**
focus on the change in the codes, and detect bugs

## 🔀 **Branch**
separate things complete and things under development

---

# Is Git Easy?

<br>

## No. I am sorry.
- Git has many commands with many options
- Need some knowledge to recover from a trouble
- Git allows various styles to use, which are different across people and organization

## I propose
- First follow my workflow, which requires the minimum knowledge
- Once you're comfortable with it, learn the detail

---
layout: image-right
image: /img/Octocat.png
---

# Is GitHub Git?

<br>

## Git Is a Version Control Tool
- App
- Command Line
- Works Locally

## GitHub Is a Web-Service
- Publish the code
- Collaboration

---

# CUI vs GUI?

<br>

## GUI Applications for Git & GitHub
- [GitHub Desktop](https://desktop.github.com/)
- [VSCode](https://code.visualstudio.com/)
- [Fork](https://git-fork.com/)

## I propose

- Hybrid way in VSCode
- CUI knowledge is necessary for GUI



---
layout: section
---

# Basics of Git

---

# Local & Remote Repository

![Local Image](/drawio/git_repository.svg)

---

# Commit Is a Save Point!

<br>

![Local Image](/drawio/git_history.svg)

---

# You Can Go Back to Any Commit

<br>

![Local Image](/drawio/git_back.svg)


---

# You Can Compare Any Two Commits

<br>

![Local Image](/drawio/git_compare.svg)

---

# HEAD and Branch

- Branch: a label of commit
- HEAD: the branch you are seeing

<br>
<br>

![Local Image](/drawio/git_branch.svg)



---

# Merge

<br>
<br>

![Local Image](/drawio/git_merge.svg)

---
layout: center
class: text-center
---

# Let's Create a Repository


---
layout: section
---

# Git & GitHub Workflow

---

# 1. Sync Local Repository

```shell
git checkout main
git pull origin main
```

![Local Image](/drawio/wf_pull.svg)


---

# 2. Write Your Codes
After checkout to new developing branch
```shell
git checkout -b "dev"
```

Write your codes

![Local Image](/drawio/wf_branch.svg)

---

# 3. Commit
At a good saving point
```shell
git add foo1.txt foo2.txt
git commit -m "hogehoge"
```

If you want to stage all modified files, ```git add .```

<br>

![Local Image](/drawio/wf_commit.svg)

---

# 4. Push to the Remote Repository
```shell
git push origin dev
```
![Local Image](/drawio/wf_push.svg)


---

# 5. Pull Request and Merge

<br>
<br>
<br>

![Local Image](/drawio/wf_pr.svg)

---

# Questions about Branches

<br>

## *Why Do We Use Branch?*
- Keep "main" branch clean
- Easy to detect a bug (because "main" works perfectly)

## *When Should I Create a Branch?*
A simple suggestion is "feature branch workflow"
- Create a branch if you want to add a new feature
- For the economic research, model, slides, paper, and a BUG-FIX
- Delete branch when it's done
  - In remote repository, after the merge, the button appears
  - In local repository, run ```git branch -d BRANCH_NAME```

---
layout: center
class: text-center
---

# Let's Handson


---
layout: section
---

# Git with Data

---

# Data Version Control (DVC)

<br>

## *How Can We Work with Data in Git?*
- We want to store the data in the Git project (because referred in the code)
- Not interested in change in each line of the data (imagine data cleaning)
- There is a limit for the file size in GitHub (100 MB)

## *How Does DVC Work?*
- Create a text file for the meta-information of the data
- Git manages only the text file
- Git can follow when the data is added, modified, deleted through the text file
- The original data is stored in the remote storage (Google Drive, Amazon S3, ..)

---

# How Does DVC Work?

![Local Image](/drawio/dvc.svg)

---

# DVC Commands

<br>

## 1. Before your commit, create DVC files

```shell
dvc add foo1.csv
```

You can specify a folder with *-R* option ```dvc add -R data```

## 2. After Git push, push data to the remote storage

```shell
dvc push
```

<br>

## 3. After Git pull, pull data from the remote storage

```shell
dvc pull
```

---
layout: center
class: text-center
---

# Let's Handson

---

# Troubleshoot

<br>

## Git Reference log
You can see all the git command activity

```shell
git reflog
```

<br>

## Git Reset
You can reset any git activity

```shell
git reset --soft COMMIT_ID_OR_REFLOG_ID
```

---

# Conflict

<br>

Conflict might occur
- When merge
- If the main and development branches have different lines of codes in the same file

To solve this
- You can open a text editor
- Choose which lines you keep


---
layout: center
class: text-center
---

# Learn More
[Introduction to Git](https://docs.microsoft.com/en-us/learn/modules/intro-to-git/)・
[Introduction to GitHub](https://docs.microsoft.com/en-us/learn/modules/introduction-to-github/)