#!/usr/bin/sh
cd ../

git clone https://github.com/notyetuk/frontend.git frontend

cp ./fe.env.production ./frontend/.env.production

cd frontend && npm install && npm run build
cd build && cp -r ./* ../../app

cd ../../ && rm -rf frontend

echo "all cloned and built. gg"
