echo "Welcome to EasyDNS REST api CLI"
echo "Installing Dependencies"
sudo pip3 install pyinstaller requests
if [ $? -eq 1 ]; then
    echo "😥 Cant Find pip3 in your machine " 
    echo "😥 Try again after installing pip3"
else
    pyinstaller --onefile easydns-restapi-cli.py --name easydnscli
    mv ./dist/easydnscli /usr/local/bin
    if [ $? -eq 1 ]; then
        echo "Try installing again with sudo!"
    fi
    echo "Installation ended successfully 🤩"
    echo "👉️ 👉️ 👉️ Try typing 'easydnscli --version'"
fi

