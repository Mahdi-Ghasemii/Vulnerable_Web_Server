#!/bin/bash

declare -A USERS
USERS=( ["ayham"]="AyhamDeebugg" ["F30s"]="1234" ["root"]="1234")

for USERNAME in "${!USERS[@]}"; do
    PASSWORD=${USERS[$USERNAME]}

    useradd -m -d /home/$USERNAME -s /bin/bash $USERNAME

    echo "$USERNAME:$PASSWORD" | chpasswd

    chown -R $USERNAME:$USERNAME /home/$USERNAME
    
    echo "User $USERNAME created with the specified password."

done