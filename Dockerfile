FROM	debian:latest

RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install -y git \
				sudo \
				make \
				cmake \
				valgrind \
				vim \
				curl \
				zsh \
				bash-completion \
		&& sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
		&& echo "alias valgrind='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose'" >> ~/.zshrc

