#!/bin/sh

echo '#!/bin/sh' > ~/.xinitrc
echo 'exec i3' >> ~/.xinitrc
sudo cp ./scripts/battery_plug /etc/acpi/events/
sudo cp ./scripts/headphone_jack /etc/acpi/events/

sudo cp ./scripts/lock.service /etc/systemd/system/lock.service
systemctl enable lock
