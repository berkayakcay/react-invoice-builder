#!/bin/sh

yarn global add serve

rm -rf build

npm run build

serve -s build -l 3000
