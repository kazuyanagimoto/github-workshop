# DVC Workflows

## Step 1. Initialize the project

1. Initilize DVC in the Git project
```
dvc init
```

2. Create a Git commit

## Step 2. Setup Remote Storage
1. Create a folder in Google Drive
2. Copy the folder ID
3. Setup the remote storage (Google Drive) in DVC
```
dvc remote add --default myremote gdrive://GDRIVE_FOLDER_ID
```

## Step 3. DVC Basics

1. Add data to DVC
```
dvc add data/data1.csv
```

Or for all the data in DVC
```
dvc add -R data
```

2. Chcek the .dvc file and .cache folder

3. Create a Git commit

4. Push to remote storage
```
dvc push
```

5. Check the remote storage

## Step 4. Work with different machine

1. Pull from the main branch in the different machine
```
git chekout main
git pull origin main
```

2. Pull the data in the different machine
```
dvc pull
```
