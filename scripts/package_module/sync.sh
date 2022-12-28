#!/bin/bash

#sync
emerge --sync

su josh -c /home/josh/scripts/package_module/dbus.sh

if [ -r "/home/josh/scripts/package_module/Xdbus" ]; then
	. "/home/josh/scripts/package_module/Xdbus"
fi

su josh -c 'notify-send "package_module" "sync completed"'

# grab all pkgs needing updates, store in list file for later viewing / manip
emerge -vuDN --pretend @world > /home/josh/scripts/package_module/list

# if portage needs to be updated, do it now

if [  `grep -q "sys-apps/portage" /home/josh/scripts/package_module/list` ]; then
		emerge -vuDN sys-apps/portage
		su josh -c 'notify-send "package_module" "portage updated"'
	else
		su josh -c 'notify-send "package_module" "no portage update found"'
fi

# grab number of package updates
grep -oP '(?<=Total: )[0-9]+' /home/josh/scripts/package_module/list > /home/josh/scripts/package_module/update_num
su josh -c 'notify-send "package_module" "package updates have been refreshed"'

