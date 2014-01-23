#! /bin/bash
bin/buildout -o
bin/supervisord
echo '1) configure reverse-proxy on nginx/apache. Sample nginx config: http://readthedocs.org/docs/almir/en/latest/userguide.html#configuring-nginx-as-frontend'
echo "2) change settings: vim buildout.cfg && bin/buildout && bin/supervisorctl restart all"
