# /bin/sh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0; \
sudo apt-add-repository https://cli.github.com/packages; \
sudo apt update; \
sudo apt install gh -y; \
gh auth login --hostname github.com; \
echo "Add ssh key in ~/.ssh/id_rsa file here"; \
curl -s https://api.github.com/orgs/ubivius/repos | \
grep "\"name\": \"telemetry" | \
sed 's/    "name": "//g' | \
sed 's/",//g' > repository_list.txt