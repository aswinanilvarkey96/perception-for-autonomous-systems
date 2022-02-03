# Repository for course perception for autonomous systems at DTU

## For jupiter notebook
[![Jupiter Build Status](https://dev.azure.com/s202609/Other/_apis/build/status/Build%20Jupyter%20notebook?repoName=mactat%2Fperception-for-autonomous-systems&branchName=master)](https://dev.azure.com/s202609/Other/_build/latest?definitionId=8&repoName=mactat%2Fperception-for-autonomous-systems&branchName=master)

Create .env file
In '.env' file provide those information
```
ROOT_DIR -> directory of your project
JUPYTER_PORT -> port for jupyter notebook
JUPYTER_TOKEN -> password to access jupyter
JUPYTER_DIR -> directory where notebooks are loacted (/jupyter/<dir in mounted storage>)
JUPYTER_ENABLE_LAB -> [yes/no]
```
`Docker compose up`