export GO15VENDOREXPERIMENT=1

all: install

build:
	go build 

install:
	go install 

release:
	GOOS=linux GOARCH=386 go build  -o release/getotp-linux-386 
	GOOS=linux GOARCH=amd64 go build  -o release/getotp-linux-amd64 
	GOOS=linux GOARCH=arm go build  -o release/getotp-linux-arm 
	GOOS=darwin GOARCH=amd64 go build  -o release/getotp-mac-amd64 
	GOOS=windows GOARCH=386 go build  -o release/getotp-windows-386.exe 
	GOOS=windows GOARCH=amd64 go build  -o release/getotp-windows-amd64.exe 

