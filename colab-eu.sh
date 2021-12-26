sudo apt install screen -y
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.32/lolMiner_v1.32a_Lin64.tar.gz
tar -xf lolMiner_v1.32a_Lin64.tar.gz
cd 1.32a
echo -n "$(tput setaf 3)GPU Found => Tesla ";nvidia-smi | grep "Tesla" | sed "s/.*Tesla \([^ ]*\).*/\1/"
echo "$(tput sgr 0)"
echo "$(tput setaf 2)"
echo -e "\e[1mlolMiner is Running..!\e[22m"
echo "$(tput sgr 0)"
screen -S lol -d -m ./lolMiner --algo BEAM-III --pool stratum+tcp://beamv3.usa-east.nicehash.com:3387 --user 3MH9qi2VorbtKzJJxB47F2XmWtwTGnrieW.buruh1 --cclk 400
while true
do
sleep 30
done
