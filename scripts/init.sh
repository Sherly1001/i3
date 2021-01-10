#!/bin/bash

cat > ~/.xinitrc <<end
#!/bin/bash

export GTK_THEME=Adwaita:dark

export XMODIFIERS='@im=ibus'
export GTK_IM_MODULE='ibus'
export QT_IM_MODULE='ibus'
ibus-daemon -drx

exec i3
end

sudo cp ./scripts/brightness /etc/acpi/events/
sudo cp ./scripts/lock.service /etc/systemd/system/lock.service

systemctl enable lock
systemctl enable acpid
