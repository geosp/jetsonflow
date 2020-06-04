registry=$1
image=$2
imageID=$(docker images | grep "^${image}" | awk '{print $3;}')
docker tag $imageID "${registry}/${image}"
docker push "${registry}/${image}"

