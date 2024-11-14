# If you don't have an ephemeral key yet, generate one, otherwise reuse the existing one
openssl genpkey -algorithm ed25519 -out private.der

# Format the public key for use with the ephemeral key registration endpoint
PUBLIC_KEY=`openssl pkey -in private.key -pubout -outform DER -out - | base64`

# Register the keypair with Doordeck (may require verification, see "Register Ephemeral Key With Secondary Authentication")
API_RESPONSE=$(curl -s -X POST https://api.doordeck.com/auth/certificate \
  -H 'authorization: Bearer TOKEN' \
  -H 'content-type: application/json' \
  -d '{"ephemeralKey":"'$PUBLIC_KEY'"}')

# Setup variables needed for the unlock operation
CERTIFICATE_CHAIN=$(echo $API_RESPONSE | jq -r .certificateChain)
USER_ID=$(echo $API_RESPONSE | jq -r .userId)
DEVICE_ID="00000000-0000-0000-0000-000000000000" # Replace with the lock's ID

HEADER=$(jq -n \
  --arg alg "EdDSA" \
  --arg typ "JWT" \
  --argjson x5c "$CERTIFICATE_CHAIN" \
  '{
    alg: $alg,
    typ: $typ,
    x5c: $x5c
  }')
