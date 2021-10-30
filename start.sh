echo "Cloning Repo...."
git clone https://github.com/ALBINPRAVEEN/Text-Scanner-bot.git /Text-Scanner-bot
cd /Text-Scanner-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
