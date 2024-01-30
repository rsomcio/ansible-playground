%{ for hostname, ip in instance_info ~}
cat << EOF >> ~/.ssh/config_test

Host ${hostname}
    HostName ${ip}
    User ${user}
    IdentityFile ${identityfile}
EOF
%{ endfor ~}
