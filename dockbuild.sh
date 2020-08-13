docker build --no-cache -f ./Dockerfile.build -t lex-core-build .

docker run --name lex-core-build lex-core-build:latest &&  docker cp lex-core-build:/opt/target/bodhi-1.0-SNAPSHOT.jar .

docker rm -f lex-core-build
docker rmi -f lex-core-build

docker build --no-cache -t 708570229439.dkr.ecr.us-east-1.amazonaws.com/lex-core-service:space-topics-autocomplete .
docker push 708570229439.dkr.ecr.us-east-1.amazonaws.com/lex-core-service:space-topics-autocomplete
