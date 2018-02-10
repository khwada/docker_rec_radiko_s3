# docker_rec_radiko_s3
## Reference
- https://gist.github.com/matchy2/3956266
- https://github.com/sankaku/docker_rec_radiko

## Build
```
docker build . -t docker_rec_rediko_s3
```

## Usage
```
docker run --rm \
    -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" \
    -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" \
    -e "AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION" \
    docker_rec_rediko_s3 \
    /usr/local/bin/docker_rec_radiko_s3.sh <CHANNEL_ID> <DURATION_IN_MINUTES> <FILENAME_PREFIX> s3://<BUCKET_NAME>
```
