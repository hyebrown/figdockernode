

NOTE: running fighack.sh will delete all docker containers on the host!!!!  NOTE
=====================================================

assumptions:
-----------------------------------------------------
* running in linux environment
* run by user who has sudo permissions on the box
* docker is installed and in the path for root
* fig is installed and in the path for root

Steps to demo:
-----------------------------------------------------
* clone this repo 
* run fighack.sh in the dir it resides in (fig requires that fig.yml be in the working directory)


notes:
-----------------------------------------------------
* I kept reference to Chris Lea's ppa (some concern i've exposed access to it via public github repo)
* I left port 8000 exposed from docker1 to it's host 
** technically unecessary since docker2 communicates with docker1 over docker's internal subnet
** but it's handy to hit docker1 from an external browser to confirm it's behavior
** http://<docker1's host OS ip address>:8000/
