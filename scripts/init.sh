#!/bin/bash

cat > ~/.xinitrc <<end
#!/bin/bash

export GTK_THEME=Adwaita:dark

exec i3
end

sudo cp ./scripts/brightness /etc/acpi/events/
sudo cp ./scripts/lock.service /etc/systemd/system/lock.service

systemctl enable lock
systemctl enable acpid
