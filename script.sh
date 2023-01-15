cd && cd goinfre && mkdir docker && rm -rf ~/Library/Containers/com.docker.docker && ln -s ~/goinfre/docker ~/Library/Containers/com.docker.docker
/usr/local/munki/launchapp -a "Docker"
curl 
docker build -t valgrind/1337 .