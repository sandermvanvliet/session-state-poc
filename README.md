# ASP.Net + MySQL Session storage
This is a demonstration set-up of a load balanced ASP.Net application with session state stored in a MySQL database. The session state is shared over all ASP.Net application nodes using master/master replication in MySQL.

The set-up of this demonstration is as follows:

```
                       /----> [ASP.Net node #1] --> [MySQL node #1] 
                                                          ^                       
[client] -> [HA Proxy]                                    | replication
                                                          v
                       \----> [ASP.Net node #2] --> [MySQL node #2]
```

HA Proxy is configured to do Round Robin distribution so requests are shared over both nodes meaning there is no sticky session.

## Goals
* Demonstrate a high availibility set-up
* Demonstrate common failure scenarios:
  * HA Proxy fails
  * Web node fails
  * Both web nodes fail
  * MySQL node fails
  * Both MySQL nodes fail

## Requirements
* Docker version 1.12.1
* Docker Compose version 1.8.0

### Useful extras
* Kitematic (if you want/need a Docker GUI)

## Running the demo
* Clone this repository
* Enter the cloned directory
* Download the VerySimple ASP.Net app from here [https://github.com/sandermvanvliet/session-state-poc/releases/tag/0.0.1](https://github.com/sandermvanvliet/session-state-poc/releases/tag/0.0.1) and unzip the contents to the `published-app` folder
* Run: `docker-compose up`
* Wait for all containers to start (using `docker ps` or Kitematic)
* Run: `./after-start.sh`

The `after-start.sh` script will initialize the databases and configures replication between the MySQL nodes.

To view the demo you can simply connect to [http://localhost:8080](http://localhost:8080/).

You can use `scripts/slavetest-01.sh` and `scripts/slavetest-02.sh` to view the stored sessions and replication state.