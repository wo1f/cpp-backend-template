FOLDER="cpp-backend-tests"
if [ ! -d "$FOLDER" ] ; then
    git clone git@github.com:wo1f/"$FOLDER".git "$FOLDER"
else
  (
  cd "$FOLDER" || exit
  git pull
  )
fi

DELIVERY_APP=${PWD}/app/main.py pytest --verbose cpp-backend-tests/tests/test_example.py
