FROM ubuntu:latest

MAINTAINER Oliver_Reid_@hotmail.co.uk

# Update your system

RUN apt-get update

#Install all the packages needed to run PhantomBot

RUN apt-get install -y unzip default-jdk wget

# Download phantombot

RUN wget https://github.com/PhantomBot/PhantomBot/releases/download/v2.0.7.2/PhantomBot-2.0.7.2.zip
RUN unzip PhantomBot-2.0.7.2.zip
