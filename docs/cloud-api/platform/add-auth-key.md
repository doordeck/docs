---
sidebar_position: 7
---

# Add Auth Key

Adds a new auth key to the permitted auth keys for user's of this application, can be RSA, EC or Ed25519.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/auth/key`

### Request Parameters

Key should be in [JSON Web Key format (JWK)](https://mkjwk.org), key must have a unique key ID (```kid```) field.
