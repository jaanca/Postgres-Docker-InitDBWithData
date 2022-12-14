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
$containerPortExposeInternal=5432
$dockerContext="ms_postgres_server/"

# Build
# docker pull $imagename
cd $dockerContext
docker build . -t $imagename -f Dockerfile
cd ..

# Release
docker stop $containername
docker container rm $containername
$containerPorts="$containerPortExposetoHost"+":"+"$containerPortExposeInternal"
$volumeData="$folder_data\:/var/lib/postgresql/data"
docker run -d `
    -p $containerPorts `
    --hostname $containername `
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD `
    -v $volumeData `
    --name $containername `
    $imagename

$url="Exposed service: psql host=localhost port=$containerPortExposetoHost dbname=postgres user=postgres password=$POSTGRES_PASSWORD"
write-output "############################################"
write-output $url

# Read the final output from log container
docker logs $containername --tail -1 --follow



