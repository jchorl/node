set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag jchorl/node:latest-arm jchorl/node:testing || true
docker tag jchorl/node:latest-amd64 jchorl/node:testing || true
docker push jchorl/node:testing
