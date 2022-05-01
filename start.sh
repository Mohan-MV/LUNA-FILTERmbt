if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BalamuruganDV/LUNA-NO-FEATURES.git /LUNA-NO-FEATURES
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LUNA-NO-FEATURES
fi
cd /LUNA-NO-FEATURES
pip3 install -U -r requirements.txt
echo "...."
python3 bot.py
