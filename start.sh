if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/abhaysinghchauhann/AA-PVT.git /AA-PVT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AA-PVT
fi
cd /AA-PVT
pip3 install -U -r requirements.txt
echo "Starting AA-PVT...."
python3 bot.py