############################################
# Variables
$POSTGRES_PASSWORD="Psdbtowork"
$folder_data="C:\\tmp\\data"

############################################
# Build + Run a sample microservice like webpage

# Local variables
$containername="ms_postgres_server"
$imagename=$containername+":latest"
$containerPortExposetoHost=5432
$dockerContext="ms_postgres_server/"

# Build
# docker pull $imagename
cd $dockerContext
docker build . -t $imagename -f Dockerfile --build-arg GLOBAL_POSTGRES_PASSWORD=$GLOBAL_POSTGRES_PASSWORD
cd ..

# Release
docker stop $containername
docker container rm $containername
$containerPorts="$containerPortExposetoHost"+":"+"$containerPortExposetoHost"
$volumeData="$folder_data\:/var/lib/postgresql/data"
docker run -d `
    -p $containerPorts `
    --hostname $containername `
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD `
    -v $volumeData `
    --name $containername `
    $imagename

$url="Exposed service: redis://"+$containername+":"+$containerPortExposetoHost
write-output "############################################"
write-output $url

# Read the final output from log container
docker logs $containername --tail -1 --follow



