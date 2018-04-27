# Requires a pre-built local image called pytorch, build from the pytorch repo.
#
# Build the docker image with:
#
#  $ docker build -t siamfacial .
#
# Run with:
#
#  $ nvidia-docker run --rm -it --ipc=host siamfacial:latest
#
    ## Aspirational.....
    # At the container prompt, start the visdom server, and the capsnet processing:
    #
    #  # python -m visdom.server & python capsule_network.py
    #
    # In a separate terminal on the docker host:
    #
    # Obtain the CONTAINER_ID...
    #
    #  $ docker ps
    #
    # Get the container IP address...
    #
    #  $ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <CONTAINER_ID>
    #
    # On the host, browse to <returned_IP>:8097

# Assuming this is a local build of master, at the moment
FROM topiaruss/pytorch:master

COPY ./requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /workspace 
WORKDIR /workspace
EXPOSE 8889/tcp

CMD ["./go.sh"]

