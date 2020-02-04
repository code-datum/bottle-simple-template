#!/usr/bin/env bash
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
if [[!]]
source ${PROJECT_APP}/venv/bin/activate
echo "Install django framework package"
echo "Pip install requirements.local.txt"

pip install -r local/requirements.txt
mkdir bottle
cd bottle
python3 -m pip install virtualenv
virtualenv venv
#source venv/bin/activate
#echo "bottle==0.12.8" > requirements.txt
#echo "freeze">> requirements.txt
