# Basic Python Project  

## 1. Use the Makefile  

1. `$ make install`  
2. `$ make lint`  
3. `$ make test`  


## 2. Initialize the Github Repo  

```bash
$ git init
$ git add .
$ git commit -m "first commit"
$ git branch -M main
$ git remote add origin git@github.com:Fleaurent/basic_python_project.git
$ git push -u origin main
```

## 3. Continuous Integration with GitHub Actions

a) select “Actions” in the GitHub UI and create a new one  
b) create a file inside `.github/workflows/<yourfilename>.yml`  

```.yml
name: Azure Python 3.5
on: [push]
jobs:
    build:
        runs-on: ubuntu-latest
        steps:
        - uses: actions/checkout@v2
        - name: Set up Python 3.9.8
            uses: actions/setup-python@v2
            with:
                python-version: 3.9.8
        - name: Install dependencies
            run: |
                make install
        - name: Lint
            run: |
                make lint
        - name: Test
            run: |
                make test
```