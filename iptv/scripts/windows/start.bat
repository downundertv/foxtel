cd C:\Users\Brett Riley\Desktop\IPTV\foxtel\foxtel

if not exist venv\ (
    py -m venv venv
)

call "venv\scripts\activate"
python -m pip install --upgrade pip
pip install -U pip
pip install -r requirements.txt
py launch.py
deactivate
