#!/bin/bash

sudo fallocate -l 16G /swapfile
sudo chmod 600 /swapfile
ls -hl /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show

