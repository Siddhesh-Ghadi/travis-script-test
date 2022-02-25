PACKAGE_NAME=github.com/fsnotify/fsnotify
PACKAGE_VERSION=${1:-v1.5.1}
PACKAGE_URL=https://github.com/fsnotify/fsnotify.git

#yum install -y git golang

go get $PACKAGE_NAME@$PACKAGE_VERSION

cd ~/go/pkg/mod/$PACKAGE_NAME@$PACKAGE_VERSION
go mod tidy
go install
go test
