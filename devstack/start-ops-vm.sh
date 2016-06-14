#!/bin/bash

#default value for VM name, image id, flavor
VM_name="vm-$RANDOM" 
VM_image_id=$(nova image-list|grep ACTIVE| cut -d'|' -f 2| tail -n 1)
VM_flavor=3
#-------------------

for i in `seq 1 1`
do
VM_name="vm-$RANDOM"
nova boot $VM_name --flavor $VM_flavor --image $VM_image_id  > /dev/null
done
echo "creation de vm: "$VM_name
echo "list de vm present"
nova list
