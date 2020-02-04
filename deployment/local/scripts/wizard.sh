#!/usr/bin/env bash
#add these variable to .env.local
PROJECT_APP=bottle_app
echo "determine python version to write to .pythonversion"
if [[ ! -f .pythonversion ]]; then
    echo $(python --version) > .pythonversion
fi
echo "Create virtualenv"
python -m pip install virtualenv
python -m venv venv
source venv/bin/activate
mkdir requirements
touch requirements/local.txt
pip install -r requirements/local.txt
#Copy template to app.py
cp app_temp.py app.py
chmod +x run.sh
## run app
./run.sh