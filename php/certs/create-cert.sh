#!/bin/bash

# source https://www.arubacloud.com/tutorial/how-to-create-a-self-signed-ssl-certificate-on-ubuntu-18-04.aspx

openssl genrsa -out private.key 2048

openssl req -new -config ./myserver.cnf -key private.key -out request.csr

openssl x509 -in request.csr -out certificate.crt -req -signkey private.key -days 365

