REPO=${PWD}/$( dirname -- "$0"; )

source ${REPO}/.venv/bin/activate

DELIVERY_APP=${REPO}/app/main.py python -m pytest --rootdir=${REPO} --verbose ${REPO}/cpp-backend-tests/tests/test_example.py
