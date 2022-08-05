# Writes bash_aliases to the RPi
RUN tee /home/${user}/.bash_aliases << EOF
alias upload_Mechano='arduino-cli compile -b arduino:avr:uno -u -p <PORT> /home/${user}/LuCelegans/Capacitive'
alias upload_Chemo='arduino-cli compile -b arduino:avr:uno -u -p <PORT> /home/${user}/LuCelegans/RFID'
alias upload_Thermo='arduino-cli compile -b arduino:avr:uno -u -p <PORT> /home/${user}/LuCelegans/Thermistor'
EOF
