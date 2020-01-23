Run docker using the below command

docker run --network=host -it -v opt/my_docker/tests/odoo-dev/project/odoo-12/:/opt/odoo/odoo-12


use -v option to mount odoo source codes, and conf, to make this docker image more dynamic
