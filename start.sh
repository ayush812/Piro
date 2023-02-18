if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ayush812/Piro.git /piro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /piro
fi
cd /piro
pip3 install -U -r requirements.txt
echo "Starting PiroAutoFilterBot...."
python bot3.py
