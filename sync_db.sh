#!/bin/bash

## Overwrite dev db with prod data

fromDb='boilerplate'
toDb='boilerplate_dev'

mongo $toDb --eval "db.dropDatabase(); db.copyDatabase('$fromDb', '$toDb')"
