#!/bin/bash

#Cond1 && Cond2 || Cond3
age=18

[ "$age" -ge 18 ] && echo "Adult" || echo "Minor"