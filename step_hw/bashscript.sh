#!/bin/bash

echo "Enter group name: "
read group

until groupadd $group
do
  read group
done

if [[ $? != 0 ]]; then echo "Error, group already exists" fi

echo "${group} created"

