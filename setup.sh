#!/bin/bash

# Set environment variable with Github username in /root/.bash_profile
echo 'export GITHUB_USERNAME="shruthivar"' >> /root/.bash_profile

# Write config.hcl with the specified code and replace <HOSTNAME> value
echo 'cluster_addr  = "https://<HOSTNAME>:8201"' > config.hcl
echo 'api_addr      = "https://<HOSTNAME>:8200"' >> config.hcl
echo 'disable_mlock = true' >> config.hcl
sed -i 's/<HOSTNAME>/vault-server.hashicorp.com/g' config.hcl
