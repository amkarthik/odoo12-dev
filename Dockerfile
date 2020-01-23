FROM python:3.7.4-slim-stretch

RUN groupadd admin && useradd -g admin -m odoo

RUN apt-get -y update && apt-get install -y wget && apt-get install -y curl && apt-get install -y build-essential

RUN apt-get install -y libpq-dev libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.5 libgdm-dev libdb4o-cil-dev libpcap-dev libtiff5-dev libjpeg62-turbo-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev tk8.6-dev python-tk python3-dev libsasl2-dev libldap2-dev libssl-dev

COPY ./requirements.txt /home/odoo

RUN pip install -r /home/odoo/requirements.txt

RUN apt-get install -y vim sudo


CMD ["/bin/bash"]
