# Description

- Create a postgres server for linux in docker container and populate the data from a .sql file
- Using powershell initialize the system in docker desktop for Windows

# Description of the files
    .
    |-- docs/                               # Screenshots for running system
    |-- ms_auth/                            # Microservice
    |   |-- Dockerfile                      # Instructions to build container
    |   |-- modelCreate.sql                 # Script to populate database
    |-- build-run-ms_postgres_server.ps1    # Build image + Run Container + View the logs container for troubleshootings
    |-- README.md                           # Readme file
    
# Docker Desktop

```console
System Operative: Windows 10 x64
Install Docker Desktop + WSL2
```
# Create Container
```console
Execute script, read logs and Ctrl+C to Exit to continue with next one
PS C:\..> .\build-run-ms_postgres_server.ps1
```

# Graphic documentation

## First, the folder data it's empty
![Alt text](/docs/Screenshot_1.png?raw=true)
![Alt text](/docs/Screenshot_2.png?raw=true)
![Alt text](/docs/Screenshot_3.png?raw=true)
![Alt text](/docs/Screenshot_4.png?raw=true)

## Now, the data from postgres exist into folder windows
![Alt text](/docs/Screenshot_5.png?raw=true)
![Alt text](/docs/Screenshot_6.png?raw=true)
![Alt text](/docs/Screenshot_7.png?raw=true)
![Alt text](/docs/Screenshot_8.png?raw=true)
![Alt text](/docs/Screenshot_9.png?raw=true)
![Alt text](/docs/Screenshot_10.png?raw=true)
