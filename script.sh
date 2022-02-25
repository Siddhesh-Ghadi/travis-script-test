PACKAGE_NAME=github.com/fsnotify/fsnotify
PACKAGE_VERSION=${1:-v1.5.1}
PACKAGE_URL=https://github.com/fsnotify/fsnotify.git

#yum install -y git golang

mkdir -p $GOPATH/github.com/fsnotify
cd $GOPATH/github.com/fsnotify

git clone https://github.com/fsnotify/fsnotify.git
git checkout $PACKAGE_VERSION
cd fsnotify

go mod tidy
go install
go test
