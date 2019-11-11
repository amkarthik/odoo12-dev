FROM python:3.7.4-slim-stretch

RUN groupadd admin && useradd -g admin -m harmony

RUN apt-get -y update && apt-get install -y wget && apt-get install -y curl && apt-get install -y build-essential

RUN apt-get install -y libpq-dev libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.5 libgdm-dev libdb4o-cil-dev libpcap-dev libtiff5-dev libjpeg62-turbo-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev tk8.6-dev python-tk python3-dev libsasl2-dev libldap2-dev libssl-dev fontconfig xfonts-base xfonts-75dpi


COPY ./requirements.txt /home/harmony

RUN pip install -r /home/harmony/requirements.txt

RUN apt-get install -y vim sudo

RUN mkdir /opt/support_files && cd /opt/support_files && wget https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb && dpkg -i wkhtmltox_0.12.5-1.stretch_amd64.deb

RUN apt update --fix-missing


CMD ["/bin/bash"]
