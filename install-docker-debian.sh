# Based on https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-debian-9

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
	    apt-transport-https \
	        ca-certificates \
		    curl \
		        gnupg2 \
			    software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
	   "deb [arch=amd64] https://download.docker.com/linux/debian \
	      $(lsb_release -cs) \
	         stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker ${USER}
su - ${USER}
