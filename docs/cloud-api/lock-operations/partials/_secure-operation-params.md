The JWT header is formed of the following fields:

| Parameter | Required | Description                                |
|-----------|----------|--------------------------------------------|
| alg       | true     | `EdDSA` EdDSA for ephemeral key signatures |
| x5c       | true     | User's certificate chain                   |
| typ       | true     | `JWT`, JSON Web Token                      |

The JWT body is formed of the following fields:

| Parameter | Required                   | Description                                                                                                              |
|-----------|----------------------------|--------------------------------------------------------------------------------------------------------------------------|
| iss       | true                       | Issuer, this should be the user's ID                                                                                     |
| sub       | true                       | Subject, this should be the lock's ID                                                                                    |
| nbf       | true                       | Not before, a Unix timestamp indicating the earliest date the request is valid from, set to the current time             |
| iat       | true                       | Issued at, the current Unix timestamp                                                                                    |
| exp       | true                       | Expires, a Unix timestamp indicating when the request should expire, typically now plus 60 seconds                       |
| jti       | false (highly recommended) | User generated, unique ID used for tracking the request status and preventing replay attacks. UUIDs are recommended here |
| operation | true                       | A JSON object containing the operation to perform, see below                                                             |
