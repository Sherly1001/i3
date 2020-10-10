#!/bin/bash

echo '#!/bin/sh' > ~/.xinitrc
echo 'exec i3' >> ~/.xinitrc
sudo cp ./battery_plug /etc/acpi/events/
sudo cp ./headphone_jack /etc/acpi/events/
