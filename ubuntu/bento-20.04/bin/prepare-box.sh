#!/bin/bash

BOX=dev-box-ubuntu

vagrant package --output ${BOX}.box
vagrant cloud auth login
vagrant cloud publish cloudkats/${BOX} $(date +%Y.%m.%d) virtualbox ${BOX}.box --release
