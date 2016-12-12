#!/bin/bash

## Overwrite dev db with prod data

fromDb='resist-yo'
toDb='resist-yo_dev'

mongo $toDb --eval "db.dropDatabase(); db.copyDatabase('$fromDb', '$toDb')"
