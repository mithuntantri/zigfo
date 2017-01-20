# zigfo
https://www.zigfo.com

An E-Commerce Application written using [Go](https://golang.org) and [Angular 1](https://angularjs.org) that uses HTTP and Websockets for communication.

#### Requirements

* NPM, Bower and Brunch (Package Managers & Compiler)
* Golang
* Postgres
* RethinkDb

|Package Name|Port (If Applicable)|
|------------|--------------------|
|Postgres    |5432                |
|Redis       |6379                |
|Rethinkdb   |8080                |

### Installation

Clone the Repository

`git clone git@github.com:mithuntantri/zigfo.git`

Download the api package dependencies by switching to `api` directory in your GOPATH and by running `go get`

Download the client package dependencies by switching to `client` directory and by running

`npm install` and `bower install`

Build the brunch project using

`brunch build --production`

#### Nginx Configuartion

Copy the `nginx.conf` configuration file to the `nginx` folder with the name `zigfo`

`cp nginx.conf /etc/nginx/sites-available/zigfo`

`ln -s /etc/nginx/sites-available/zigfo /etc/nginx/sites-enables/zigfo`

`nginx -t`

`service nginx restart`

### Usage

* Have the Rethinkdb Server running
* Keep the Redis Instance running
* Run the start.sh script to start the server

#### Postgres Setup

Install Postgres from Ubuntu's default repository

`sudo apt-get update

sudo apt-get install postgresql postgresql-contrib`

Switch to `api` folder and log into postgresql

`sudo -u postgres psql` and you will be prompted for password

Follow the following Commands

`create database zigfo`

`\c zigfo`

`\i createscripts.sql`

`\i insertscripts.sql`

#### Rethinkdb Setup

Install Rethinkdb by adding the [Rethinkdb Repository](http://download.rethinkdb.com/apt) to your list of repositories and install via apt-get

`source /etc/lsb-release && echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list

wget -qO- https://download.rethinkdb.com/apt/pubkey.gpg | sudo apt-key add -

sudo apt-get update

sudo apt-get install rethinkdb`

Get the build dependencies

`sudo apt-get install build-essential protobuf-compiler python \

                     libprotobuf-dev libcurl4-openssl-dev \
                     
                     libboost-all-dev libncurses5-dev \
                     
                     libjemalloc-dev wget m4`

Get the source

`wget https://download.rethinkdb.com/dist/rethinkdb-2.3.5.tgz

tar xf rethinkdb-2.3.5.tgz`

Build the server

`cd rethinkdb-2.3.5

./configure --allow-fetch

make

sudo make install`

#### Starting the server

Switch to `api/cms` folder and run `go get` and `cms`

Switch to `api/otps` folder and running `go get` and `otps`

#### Build the Static files for Production

Navigate to `client` folder

Run `npm install` and `bower install`

Run `brunch build --production`

Author: **[Mithun Tantri](http://mithuntantri.in)**

License: **Apache License v2.0**
