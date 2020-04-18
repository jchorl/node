set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag jchorl/node:latest-arm jchorl/node:latest
docker push jchorl/node:latest
