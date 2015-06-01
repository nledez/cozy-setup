#!/bin/bash

requirements="fabric fabtools"

if [[ "$VIRTUAL_ENV" == "" ]]; then
    curl https://bootstrap.pypa.io/ez_setup.py | python
    curl https://bootstrap.pypa.io/get-pip.py | python
fi

pip install -U $requirements

echo "Done. Please run: fab -H user@host:ip install"
