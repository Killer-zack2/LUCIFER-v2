if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Akbotmakersnew/LUCIFER-v2.git /LUCIFER-v2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LUCIFER-v2
fi
cd /LUCIFER-v2
pip3 install -U -r requirements.txt
echo "Starting LUCIFER-v2...."
python3 bot.py
