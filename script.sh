cd && cd goinfre && mkdir docker && rm -rf ~/Library/Containers/com.docker.docker && ln -s ~/goinfre/docker ~/Library/Containers/com.docker.docker
/usr/local/munki/launchapp -a "Docker"
curl curl https://raw.githubusercontent.com/abouabra/valgrind_1337/master/Dockerfile -o Dockerfile
docker build -t valgrind_1337 .
valgrind 
docker run -it --rm -v ~/ThePathToYourFolder:/valgrind valgrind_1337