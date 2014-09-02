#!/bin/sh

if ! [ `which brew` ]; then
	echo 'install homebrew.'
	xcode-select --install
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

if ! [ `which python` ]; then
	echo 'install python.'
	brew install python
fi

if ! [ `which ansible` ]; then
	echo 'install ansible.'
	brew install ansible
fi

ansible-playbook -i ~/provision/ansible/hosts ~/provision/ansible/playbook.yml