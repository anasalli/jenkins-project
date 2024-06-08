# jenkins-project
jenkins final project 

build job ---> exec over ssh ---> jenkins--->
rsync /var/lib/jenkins/workspace/jenkins-project/Dockerfile root@110.101.2.39:/ansible

job build --> exec over ssh --> ansible ---> 
cd /ansible
docker build -t $JOB_NAME:v$BUILD_ID .
docker tag $JOB_NAME:v$BUILD_ID anas0ali/$JOB_NAME:v$BUILD_ID
docker tag $JOB_NAME:v$BUILD_ID anas0ali/$JOB_NAME:latest
docker push anas0ali/$JOB_NAME:v$BUILD_ID
docker push anas0ali/$JOB_NAME:latest
docker rmi -f $JOB_NAME:v$BUILD_ID anas0ali/$JOB_NAME:v$BUILD_ID anas0ali/$JOB_NAME:latest
