#!/bin/bash

emerge -avuDN --pretend world > /home/josh/scripts/package_module/list 
exec grep -oP '(?<=Total: )[0-9]+' /home/josh/scripts/package_module/list > /home/josh/scripts/package_module/update_num


#notify-send package_module 'package updates have been refreshed' 
