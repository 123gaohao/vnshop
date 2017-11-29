#!/bin/bash

WEB_PATH='/home/wwwroot/x-shop/'
WEB_PATH_CLIENT='/home/wwwroot/x-shop/client'
WEB_USER='www'
WEB_USERGROUP='www'

echo "Start deployment shop.gaohao.cc"
cd $WEB_PATH
echo "pulling source code..."
# git reset --hard origin/release
# git clean -f
git pull
git checkout master
echo "changing permissions..."
cd $WEB_PATH_CLIENT
npm run bulid
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH_CLIENT
echo "Finished."
