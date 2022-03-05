FROM dockette/rendertron:latest

RUN apt-get update && apt-get -y install curl tor

ENV SITE="https://stop-russian-desinformation.near.page/"

# script to run rendertron and open URL https://stop-russian-desinformation.near.page/ 
COPY script.sh config.json torrc ./

# tune permissions
RUN chmod +x script.sh

USER 1000
CMD ./script.sh
