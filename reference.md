## Run Local

```
docker build -t nest-from-scratch -f Dockerfile .
docker run -it -p 3000:3000 nest-from-scratch

```

## Push
### Via Docker
```
docker build -t nest-from-scratch -f Dockerfile .

docker tag nest-from-scratch gcr.io/cfe-project-357217/nest-from-scratch

docker push gcr.io/cfe-project-357217/nest-from-scratch

```

### via GCloud Build

```
gcloud builds submit --tag gcr.io/cfe-project-357217/nest-from-scratch

```

## Running local
```
npm run serve:dev
```

## Running with live-reload
```
docker build -t nest-from-scratch -f Dockerfile .
docker run \
    -p 3000:3000 \
    -v nodemodules:/src/node_modules \
    -v `pwd`:/app \
    nest-from-scratch npm run dev:watch

```
