#!/bin/bash

mkdir ~/research 2>/dev/null

find /home -type f -perm 777

ps aux -m | head 
