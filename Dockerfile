FROM continuumio/miniconda3
# add the files inside the current directory to the /code directory inside the container
ADD . /code
WORKDIR /code
RUN \
    apt-get update -y &&\
    conda install tensorflow -y &&\
    pip3 install -r requirements.txt

EXPOSE 8000


ENTRYPOINT ["sh", "start.sh"]
