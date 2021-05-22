#!/bin/sh

source $(dirname $0)/PackageVariablesAur.sh
pamac build $requiredPackages
