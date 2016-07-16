FROM ubuntu:latest

MAINTAINER Oliver_Reid_@hotmail.co.uk

# Update your system
RUN apt-get update

#Install all the packages needed to run PhantomBot
RUN apt-get install -y unzip net-tools default-jdk wget sudo

#Add user for bot acct
RUN useradd -ms /bin/bash phantombot
RUN su phantombot
# Download phantombot

RUN wget https://github.com/PhantomBot/PhantomBot/releases/download/v2.0.7.2/PhantomBot-2.0.7.2.zip
RUN unzip PhantomBot-2.0.7.2.zip
RUN rm PhantomBot-2.0.7.2.zip
# Expose Port for bot to work.

EXPOSE 25000
EXPOSE 25001
EXPOSE 25002
EXPOSE 25003
EXPOSE 25004
EXPOSE 25005
EXPOSE 22
