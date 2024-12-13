
#!/bin/bash

# Petición para obtener el token de access_token
curl -XPOST 'http://localhost:8080/realms/myrealm/protocol/openid-connect/token' \
-H 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencoded 'grant_type=password' \
--data-urlencoded 'username=testuser' \
--data-urlencoded 'password=testpassword' \
--data-urlencoded 'client_id=my-app'

# Peticion para acceder al OAuth 2 resource server (Spring Webflux con endpoint helloController)
curl -H 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJuYXlxS21JNFlRcThXeVZlRjdnWW16UEpnd2lMYldoTWZSZEpsWlJSakd3In0.eyJleHAiOjE3MzQwOTQ1NjQsImlhdCI6MTczNDA5NDI2NCwianRpIjoiNDY2NWE1MjAtZDU2NC00NzQ5LWI2YjEtODZjZTYwZDY5ZTZlIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDgwL3JlYWxtcy9teXJlYWxtIiwic3ViIjoiODgyMzc2MjItY2UxNy00OTcwLTllOWQtZGJmZThkMzc5MWZjIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoibXktYXBwIiwic2lkIjoiODA5YWI2YjAtYmE3Zi00NTUzLTg0NGMtMDFkZmM4ZjU0NmY4IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJBRE1JTiJdfSwic2NvcGUiOiJlbWFpbCBwcm9maWxlIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJBZG1pbiBVc2VyIiwicHJlZmVycmVkX3VzZXJuYW1lIjoiYWRtaW51c2VyIiwiZ2l2ZW5fbmFtZSI6IkFkbWluIiwiZmFtaWx5X25hbWUiOiJVc2VyIiwiZW1haWwiOiJhZG1pbnVzZXJAY2VydGlkZXZzLmNvbSJ9.uzTCKnOpskrWHLuD1B23UuulknEXY9TxL1CaZEFS1ukYlE0dOcTrvvDa_7-lYsPeSc6s8Xys91dzNF_MCRYrdiCyHrs56v7Qyijv0PwEfn9dIK9Wpd09A3BzTjDXmKPie9iz7fobj8R-fCO2SvlQ6u8PSCenQ03GAR-SDPRxwoxKA0SvNL9udLaN4ylRkzpRGfCWnIS-xG9yjx03qRRHwQPoC-qMvWgk8JnHwYeNx6xW97aVaHMxRppgvaKbQLHcE8gQox9tFrv5qzUgd2o_zfedfQyC05KWXgPpy78G6H9IT-6MBNjRsyy7MzO1_7zqBFqANa1x8ogyERZitCrhew' \
http://localhost:8081/hello2
