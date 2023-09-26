#!/bin/bash

#Script to show how to use variables

age=25
name="Sandesh"

echo "My name is $name and age is $age"

name="Paul"

echo "My name is $name and age is $age"

#Variables to store the output of the command

HOSTNAME=$(hostname)

echo "Name of this machine is $HOSTNAME"