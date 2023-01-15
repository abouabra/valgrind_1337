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
				zsh
		&& chsh -s $(which zsh) \
		&& sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
		&& cd /valgrind
