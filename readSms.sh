MODEMNO=$(mmcli -L | grep -o "Modem/[0-9]" | grep -o [0-9]$)
#list newest SMS
SMSNO=$(mmcli -m ${MODEMNO} --messaging-list-sms | awk '/received/{split($1, ar, /\//); print ar[6]; exit}')
#read message
mmcli -m ${MODEMNO} -s /org/freedesktop/ModemManager1/SMS/${SMSNO}

