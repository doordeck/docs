# Prepare and sign the JWT
HEADER_B64=`echo -n $HEADER | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
BODY_B64=`echo -n $BODY | base64  | sed 's/+/-/g;s/\//_/g;s/=//g'`
echo -n $HEADER_B64.$BODY_B64 > tbs.bin
SIGNATURE_B64=$(openssl pkeyutl -sign -inkey private.key -rawin -in tbs.bin | base64 | sed 's/+/-/g;s/\//_/g;s/=//g')
JWT=$HEADER_B64.$BODY_B64.$SIGNATURE_B64

curl "https://api.doordeck.com/device/$DEVICE_ID/execute"
  -X POST
  -H 'authorization: Bearer TOKEN'
  -H 'content-type: application/jwt'
  --data-binary "$JWT"
