#!/bin/bash

emerge -vuDN --pretend @world > /home/josh/scripts/package_module/list 
exec grep -oP '(?<=Total: )[0-9]+' /home/josh/scripts/package_module/list > /home/josh/scripts/package_module/update_num


notify-send "package_module" "packages have been updated"
