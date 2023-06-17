echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/kumarmanish21/SankiMusic /SankiMusic
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/kumarmanish21/SankiMusic -b $BRANCH /SankiMusic
fi
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
