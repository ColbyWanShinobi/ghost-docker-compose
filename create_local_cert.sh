#! /bin/bash

domain_name=ghost.home.arpa

current_script=$0
script_path=$(dirname ${current_script})
echo ${script_path}

mkdir -p ${script_path}/certs
key_filename=${domain_name}.key

if [[ ! -f ${script_path}/certs/${domain_name}.crt ]]
then
  openssl req -newkey rsa:2048 -nodes -keyout ${script_path}/certs/${domain_name}.key -out ${script_path}/certs/${domain_name}.csr
  openssl x509 -trustout -signkey ${script_path}/certs/${domain_name}.key -in ${script_path}/certs/${domain_name}.csr -req -days 365 -out ${script_path}/certs/${domain_name}.crt

  chmod +r "${script_path}/certs/${domain_name}.key" "${script_path}/certs/${domain_name}.crt"

  echo -e "Key successfully created for local domain: ${domain_name}\n"
else
  echo -e "Key already present for local domain: ${domain_name}\n"
fi
