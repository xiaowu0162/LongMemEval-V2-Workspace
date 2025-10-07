#!/bin/bash

# reference: https://github.com/gasse/webarena-setup/tree/main/webarena

# Don't run this on NLP7-11
# Ask Di to setup the server for you instead

out_dir=/local4/diwu/longmemeval-v2-data/webarena/environment/

files=(
    http://metis.lti.cs.cmu.edu/webarena-images/shopping_final_0712.tar
    http://metis.lti.cs.cmu.edu/webarena-images/shopping_admin_final_0719.tar
    http://metis.lti.cs.cmu.edu/webarena-images/postmill-populated-exposed-withimg.tar
    http://metis.lti.cs.cmu.edu/webarena-images/gitlab-populated-final-port8023.tar
    http://metis.lti.cs.cmu.edu/webarena-images/wikipedia_en_all_maxi_2022-05.zim
    https://zenodo.org/records/12636845/files/openstreetmap-website-db.tar.gz
    https://zenodo.org/records/12636845/files/openstreetmap-website-web.tar.gz
    https://zenodo.org/records/12636845/files/openstreetmap-website.tar.gz
)

for f in "${files[@]}"; do
    echo $f
    wget -P ${out_dir} $f
done
