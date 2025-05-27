BODY=$(
  jq -n \
    --arg iss "$USER_ID" \
    --arg sub "$DEVICE_ID" \
    --arg jti "$(uuidgen)" \
    --argjson nbf "$(date +%s)" \
    --argjson iat "$(date +%s)" \
    --argjson exp "$(($(date +%s) + 60))" \
    '{
      iss: $iss,
      sub: $sub,
      jti: $jti,
      nbf: $nbf,
      iat: $iat,
      exp: $exp,
      operation: {
        type: "MUTATE_LOCK",
        "locked":false
      }
    }'
)

