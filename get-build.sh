BUILD_URL="$1"
TRANSFER_BASE="https://transfer.sh"
ID=`echo $BUILD_URL | cut -d'/' -f 4`
NAME=`echo $BUILD_URL | cut -d'/' -f 5`
URL=$TRANSFER_BASE/get/$ID/$NAME
curl -L -o build.zip -O --silent $URL
[ -d build ] && rm -rf build
unzip build
rm build.zip 
