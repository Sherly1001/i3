#!/bin/bash

echo "exec i3" > ~/.xinitrc

sudo cat | sudo tee -a /etc/environment <<end
GTK_THEME=Adwaita:dark

XMODIFIERS='@im=ibus'
GTK_IM_MODULE='ibus'
QT_IM_MODULE='ibus'
end

sudo cp ./scripts/brightness /etc/acpi/events/
sudo cp ./scripts/lock.service /etc/systemd/system/lock.service

systemctl enable lock
systemctl enable acpid
