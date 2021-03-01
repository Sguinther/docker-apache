To start, make sure you actually have docker downloaded:
- sudo apt install apt-transport-https ca-certificates curl software-properties-common
GPG key:
- curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
Add docker repo to APT sources:
- sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
Make sure its a docker repo:
- apt-cache policy docker-ce
Then install docker:
- sudo apt install docker-ce
Allow non root user to use docker commands (makes things easier)
- sudo usermod -aG docker sam
Next get docker compose up and working
install docker compose and let it be used as docker-compose with:
- sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
Make it executable:
- sudo chmod +x /usr/local/bin/docker-compose
Version check:
- docker-compose --version
Next, set up file structure:
- mkdir dockerapache
-sudo nano Dockerfile
{write dockerfile code}
-sudo nano docker-compose
{write compose code}
Next, get the container created and running:
- sudo nano docker-compose build
This instantiates the container
- sudo docker-compose up -d
This runs the detached docker container
Check what port is running the instance with:
- sudo docker ps
Lastly, go to your ip and see your website, for me I recieved the error SSL_ERROR_RX_RECORD_TOO_LONG
scavenging the internet didn't fix this. 


