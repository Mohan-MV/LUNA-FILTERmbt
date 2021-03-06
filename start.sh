if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BalamuruganDV/LUNA-FILTER.git /LUNA-FILTER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LUNA-FILTER
fi
cd /LUNA-FILTER
pip3 install -U -r requirements.txt
echo "Starting Luna❤️...."
python3 bot.py
