# datafun-05-sql

##Git Repository
1. Setup new repository in github including a readme
2. Clone to local
```powershell
    git clone url
```
3. Open in vs code

##Setup the environment
1. Activate the virtual environment
```powershell
    py -m venv .venv
    .\.venv\Scripts\Activate.ps1
```
2. Add a .gitignore file and include .vsode/ and .venv/

##Install dependencies
1. Add pyarrow and pandas
```powershell
    py -m pip install pandas pyarrow
    py -m pip freeze > requirements.txt
```

##How to force reinstall of pandas when it says pandas does not exist
```
pip install --upgrade --force-reinstall pandas
```

##Commit changes and push to github
```powershell
    git add . 
    git commit -m "message"
    git push -u origin main
```
**Add new folder and files
1. Add new folder "data"
2. Add new files authors.csv and books.csv