# Base image 

FROM php:apache-bullseye as builder
RUN apt update \
    && apt upgrade 
COPY ./html/ /var/www/html/


FROM php:apache-bullseye 
COPY --from=builder / /


