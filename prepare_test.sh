FOLDER="cpp-backend-tests"
REPO=${PWD}/$( dirname -- "$0"; )
cd ${REPO} || exit 1
if [ ! -d "$FOLDER" ] ; then
  git clone git@github.com:wo1f/"$FOLDER".git "$FOLDER"
else
  (
  cd "$FOLDER" || exit 1
  git pull
  )
fi


if [ ! -d "${REPO}/.venv" ] ; then
  python3.9 -m venv ${REPO}/.venv
fi
  source ${REPO}/.venv/bin/activate
  python -m pip install --upgrade pip
  python -m pip install -r requirements.txt
