cd && cd goinfre && mkdir docker && rm -rf ~/Library/Containers/com.docker.docker && ln -s ~/goinfre/docker ~/Library/Containers/com.docker.docker
echo "CREATED DOCKER FOLDER"
echo "LAUNCHING DOCKER"
/usr/local/munki/launchapp -a "Docker"
echo "WAITING FOR DOCKER TO LAUNCH"
sleep 20
echo "BUILING DOCKER IMG"
curl https://raw.githubusercontent.com/abouabra/valgrind_1337/master/Dockerfile -o Dockerfile
docker build -t valgrind_1337 .
echo "SETTING VARIABLES"
echo "alias valgrind='docker run -it --rm -v $1:/valgrind valgrind_1337'" >> ~/.zshrc
source  ~/.zshrc
#docker run -it --rm -v ~/ThePathToYourFolder:/valgrind valgrind_1337
# docker run -it --rm -v $1:/valgrind valgrind_1337




#sh -c "$(curl -fsSL https://raw.githubusercontent.com/abouabra/valgrind_1337/master/script.sh)"