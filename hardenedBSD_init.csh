#!/bin/csh

git clone git@github.com:HardenedBSD/hardenedBSD.git hardenedBSD.git
if ( $? != 0 ) then
	git clone https://github.com/HardenedBSD/hardenedBSD.git hardenedBSD.git
endif

cd hardenedBSD.git

git remote add freebsd https://github.com/freebsd/freebsd.git
git fetch freebsd

# FreeBSD upstream repos
git branch --track {,freebsd/}master
git branch --track {,freebsd/}stable/10

# HardenedBSD master branch
git branch --track {,origin/}hardened/current/master

# HardenedBSD 10-STABLE topic branches
git branch --track {,origin/}hardened/10/aslr

# HardenedBSD CURRENT topic branches
git branch --track {,origin/}hardened/current/aslr
git branch --track {,origin/}hardened/current/intel-smap
git branch --track {,origin/}hardened/current/segvguard
git branch --track {,origin/}hardened/current/unstable
git branch --track {,origin/}hardened/current/unstable-with-libressl
git branch --track {,origin/}hardened/current/libressl
git branch --track {,origin/}hardened/current/log
git branch --track {,origin/}hardened/current/userlandenhanced
git branch --track {,origin/}hardened/current/pie
# HardenedBSD CURRENT upsteaming branches
git branch --track {,origin/}hardened/current/upstreaming/aslr
