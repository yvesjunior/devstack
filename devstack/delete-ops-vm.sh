#!/bin/bash

echo "suppression de vm"
#id=$(nova image-list|grep ACTIVE| cut -d'|' -f 2| head -n 1)

list=$(nova list|grep ACTIVE|cut -d'|' -f 2)
for i in $list
do
	nova force-delete $i
done
echo "list de vm present"
nova list
