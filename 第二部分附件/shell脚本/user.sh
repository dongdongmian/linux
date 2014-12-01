#!/bin/bash
w | cut -d' ' -f1 | sort|uniq>users
echo login>>users 
