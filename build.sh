docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID viveksharma1103/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID viveksharma1103/$JOB_NAME:latest

docker push viveksharma1103/$JOB_NAME:$BUILD_ID

docker push viveksharma1103/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID viveksharma1103/$JOB_NAME:$BUILD_ID viveksharma1103/$JOB_NAME:latest
