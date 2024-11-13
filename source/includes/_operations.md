# Lock Operations

## Get All Locks

```shell
curl 'https://api.doordeck.com/device'
  -H "Authorization: Bearer TOKEN"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id":"00000000-0000-0000-0000-000000000000",
    "name":"Home",
    "lastOperation": 1494786493,
    "colour": "#57355D",
    "role": "ADMIN",
    "settings": 
      {
        "txBeaconRssi": -45,
        "rxBeaconRssi": -80,
        "unlockTime": 10,
        "proximityUnlock": true,
        "permittedAddresses": [],
        "defaultName": "Home",
        "usageRequirements": {},
        "delay": 0,
        "hidden": false,
        "directAccessEndpoints": [
          "https://1-2-3-4.08aa7b70-30cf-11e8-ba42-6986d3c6ca8e.doordeck.direct:27707/device/execute"
        ],
        "capabilities": {
          "OPEN_HOURS": "SUPPORTED",
          "BATCH_SHARING_25": "SUPPORTED",
          "CONFIGURABLE_UNLOCK_DURATION": "SUPPORTED"
        }
      },
    "state":
      {
        "locked":true,
        "connected":true,
        "duration":10
      },
    "favourite": true,
    "unlockTime":10
  },
  {
    "id":"00000000-0000-0000-0000-000000000001",
    "name":"Office",
    "lastOperation": 1494786333,
    "colour": "#FFAACC",
    "role": "USER",
    "settings": 
      {
        "txBeaconRssi": 0,
        "rxBeaconRssi": 0,
        "unlockTime": 5,
        "proximityUnlock": false,
        "permittedAddresses": [
          "33.44.55.66"
        ],
        "defaultName": "Super office",
        "usageRequirements": {},
        "delay": 0,
        "unlockBetweenWindow": {
          "start": "08:00",
          "end": "14:35",
          "timezone": "Europe/London",
          "days": [
            "WEDNESDAY"
          ],
          "exceptions": []
        }
      },
    "state":
      {
        "locked":true,
        "connected":true,
        "duration":5
      },
    "favourite": true,
    "unlockTime":5,
    "start":null,
    "end":null
  }
]
```

This endpoint retrieves all locks a user has access to.

### HTTP Request

`GET https://api.doordeck.com/device`

## Get A Single Lock

```shell
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000'
  -H "Accept: application/vnd.doordeck.api-v3+json"
  -H "Authorization: Bearer TOKEN"
```

> Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.

> The above command returns JSON structured like this:

```json
{
  "id": "00000000-0000-0000-0000-000000000001",
  "name": "Home",
  "lastOperation": 1494786493,
  "colour": "#57355D",
  "role": "ADMIN",
  "settings": {
    "txBeaconRssi": -45,
    "rxBeaconRssi": -80,
    "unlockTime": 10,
    "proximityUnlock": true,
    "permittedAddresses": [],
    "defaultName": "Home",
    "usageRequirements": {},
    "delay": 0,
    "hidden": false,
    "directAccessEndpoints": [
      "https://1-2-3-4.08aa7b70-30cf-11e8-ba42-6986d3c6ca8e.doordeck.direct:27707/device/execute"
    ],
    "capabilities": {
      "OPEN_HOURS": "SUPPORTED",
      "BATCH_SHARING_25": "SUPPORTED",
      "CONFIGURABLE_UNLOCK_DURATION": "SUPPORTED"
    }
    "unlockBetweenWindow": {
      "start": "08:00",
      "end": "14:35",
      "timezone": "Europe/London",
      "days": [
        "WEDNESDAY"
      ],
      "exceptions": []
    }
  },
  "state": {
    "locked": true,
    "connected": true,
    "duration": 10
  },
  "favourite": true,
  "unlockTime": 10,
  "start":null,
  "end":null
}
```

This endpoint retrieves information about a specific lock, its usage is preferred over the list lock call for performance reasons.

### HTTP Request

`GET https://api.doordeck.com/device/LOCK_ID`

Replace `LOCK_ID` with the appropriate lock ID.

## Get Lock Audit Trail (v1)

```shell
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/log'
  -H "Authorization: Bearer TOKEN"
```
> Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.

> The above command returns JSON structured like this:

```json
[
  {
    "timestamp":1473061669.000000000,
    "type":"DOOR_LOCK",
    "user":null,
    "message":"Door locked"
  },
  {
    "timestamp":1473061664.000000000,
    "type":"DOOR_UNLOCK",
    "user":null,
    "message":"Door unlocked"
  }
]
```

This endpoint retrieves all log events associated with a particular lock.

### HTTP Request

`GET https://api.doordeck.com/device/LOCK_ID/log`

Replace `LOCK_ID` with the appropriate lock ID.

### Event Types
The call returns an enum of event types:

Type | Description
--------- | -----------
DOOR_OPEN | The lock's monitor shows the door is open
DOOR_CLOSE | The lock's monitor shows the door is closed
DOOR_UNLOCK | The lock has changed to the unlock stated
DOOR_LOCK | The lock has changed to the locked state
OWNER_ASSIGNED | The lock's owner has been updated
DEVICE_CONNECTED | Lock has connected to Doordeck platform
DEVICE_DISCONNECTED | Lock has disconected from Doordeck platform

## Get Lock Audit Trail (v2)

```shell
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/log?start=0000&end=0000'
  -H "Accept: application/vnd.doordeck.api-v2+json"
  -H "Authorization: Bearer TOKEN"
```
> Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.

> Replace `start=0000` & `end=0000` with Epoch date range, e.g. start=1593558000&end=1610495999

> The above command returns JSON structured like this:

```json
[
  {
    "timestamp": 1494267549,
    "type": "DOOR_LOCK",
    "user": null,
    "email": null,
    "displayName": null,
    "message": "Door locked"
  },
  {
    "timestamp": 1494267539,
    "type": "DOOR_UNLOCK",
    "user": null,
    "email": null,
    "displayName": null,
    "message": "Door unlocked"
  },
  {
    "timestamp": 1494267534,
    "type": "DOOR_UNLOCK",
    "user": "00000000-0000-0000-0000-000000000000",
    "email": "info@doordeck.com",
    "displayName": "Doordeck User",
    "message": "Door unlocked"
  }
]
```

This endpoint retrieves all log events associated with a particular lock, it includes additional details over v1.

### HTTP Request

`GET https://api.doordeck.com/device/LOCK_ID/log?start=0000&end=0000`

Replace `LOCK_ID` with the appropriate lock ID.

This call must be made with the ```Accept``` header set to ```application/vnd.doordeck.api-v2+json```

### Event Types
The call returns an enum of event types:

Type | Description
--------- | -----------
DOOR_OPEN | The lock's monitor shows the door is open
DOOR_CLOSE | The lock's monitor shows the door is closed
DOOR_UNLOCK | The lock has changed to the unlock stated
DOOR_LOCK | The lock has changed to the locked state
OWNER_ASSIGNED | The lock's owner has been updated
DEVICE_CONNECTED | Lock has connected to Doordeck platform
DEVICE_DISCONNECTED | Lock has disconected from Doordeck platform
LOCK_SHARED | The lock's access has been shared to a new user
LOCK_REVOKED | Access to the lock has been revoked for the specified user
USER_PROMOTED | A user was promoted to an administrator
USER_DEMOTED | An administrator was demoted to a user
SETTING_CHANGED | A lock setting has been changed
TILE_ASSOCIATED | A tile has been associated with a device
TILE_DISASSOCIATED | A tile has been dissociated from a device
DEVICE_DECOMMISSIONED | A device has been decommissioned


## Get Audit For A User 

```shell
curl 'https://api.doordeck.com/user/00000000-0000-0000-0000-000000000000/log?start=0000&end=0000'
  -H "Accept: application/vnd.doordeck.api-v2+json"
  -H "Authorization: Bearer TOKEN"
```
> Replace `00000000-0000-0000-0000-000000000000` with the user's ID.

> Replace `start=0000` & `end=0000` with Epoch date range, e.g. start=1593558000&end=1610495999

> The above command returns JSON structured like this:

```json
[
  {
    "deviceId": "00000000-0000-0000-0000-000000000001",
    "timestamp": 1509481411,
    "type": "LOCK_SHARED",
    "issuer": {
      "userId": "00000000-0000-0000-0000-000000000002"
    },
    "subject": {
      "userId": "00000000-0000-0000-0000-000000000003",
      "email": "info@doordeck.com"
    },
    "rejected": false
  },
  {
    "deviceId": "00000000-0000-0000-0000-000000000001",
    "timestamp": 1509035275,
    "type": "DOOR_UNLOCK",
    "issuer": {
      "userId": "00000000-0000-0000-0000-000000000002"
    },
    "rejected": false
  }
]
```

This endpoint retrieves all log events associated with a particular user, it uses the same events as listed in the v2 audit trail endpoint.

### HTTP Request

`GET https://api.doordeck.com/user/USER_ID/log?start=0000&end=0000`

Replace `USER_ID` with the appropriate user ID.

## Get Users For A Lock

```shell
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/users'
  -H "Authorization: Bearer TOKEN"
```
> Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.

> The above command returns JSON structured like this:

```json
[
  {
    "userId": "00000000-0000-0000-0000-000000000000",
    "email": "developer@doordeck.com.com",
    "publicKey": "base 64 encoded public key",
    "displayName": "Developer",
    "orphan": false,
    "role": "USER"
  },
  {
    "userId": "00000000-0000-0000-0000-000000000001",
    "email": "administrator@doordeck.com",
    "publicKey": "base 64 encoded public key",
    "displayName": "Administrator",
    "orphan": false,
    "role": "ADMIN"
  }
]
```

This endpoint retrieves all users associated with a particular lock.

### HTTP Request

`GET https://api.doordeck.com/device/LOCK_ID/users`

Replace `LOCK_ID` with the appropriate lock ID.

## Get Locks For A User
```shell
 curl 'https://api.doordeck.com/user/00000000-0000-0000-0000-000000000000'
```

> Replace `00000000-0000-0000-0000-000000000000` with the user's ID.

> The above command returns JSON structured like this:

```json
{
    "userId": "5a5e6e70-3c51-11e6-9e57-cf40be3013fb",
    "email": "michael@doordeck.com",
    "publicKey": "base 64 encoded public key",
    "displayName": "Michael Barnwell",
    "orphan": false,
    "devices": [
        {
            "deviceId": "ba8fb900-4def-11e8-9370-170748b9fca8",
            "role": "ADMIN"
        },
        {
            "deviceId": "e378ebe0-45f9-11e7-a620-79be7967fabd",
            "role": "ADMIN"
        },
        {
            "deviceId": "eeb74c90-7c1e-11e7-9823-a9f736dac766",
            "role": "ADMIN"
        }
    ]
}
```

This endpoint returns basic user information, including the user's public key and a list of the locks that the user is
enrolled on, the list will only show locks where the current user is an administrator.

### HTTP Request

`GET https://api.doordeck.com/user/USER_ID/`

Replace `USER_ID` with the appropriate user ID.

## Update Lock Properties

```shell
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000'
  -X PUT
  -H "Authorization: Bearer TOKEN"
  -H 'content-type: application/json'
  --data-binary '{"name":"Home","favourite":false,"colour":"#ffggaa"}'
```

> Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.

This endpoint allows the name, favourite flag and colour to be updated for an existing lock.

### HTTP Request

`PUT https://api.doordeck.com/device/LOCK_ID`

Replace `LOCK_ID` with the appropriate lock ID.

### Request Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | false | Update the user's alias for the lock
favourite | false | Flag the lock as a favourite
colour | false | Update the colour of the lock
settings | false | Update global settings for the lock

The settings object is formed of the following fields

Parameter | Required | Description
--------- | -------- | -----------
txBeaconRssi | false | Update the iBeacon sensitivity (Deprecated) 
rxBeaconRssi | false | Update the iBeacon sensitivity (Deprecated) 
proximityUnlock | false | Control if the lock can be unlocked via a touch action (Deprecated) 
defaultName | false | Set the default name for all users who have not set a custom alias
permittedAddress | false | A complete list of permitted IP addresses for performing actions on the door (public IP addresses)
delay | false | A time in milliseconds to delay the UI countdown action, for slow locks (Deprecated) 
hidden | false | Hides a device from the favourite list
usageRequirements | false | An object containing usage requirements of the lock, see below.

The usage requirements is formed of the following fields

Parameter | Required | Description
--------- | -------- | -----------
time | False | List of time requirements, see time requirement definition below.
location | False | GPS restriction, see location requirement definition below.

The time requirements is formed of a list, each containing the following fields

Parameter | Required | Description
--------- | -------- | -----------
start | true | Local time, (HH:mm) describing the start of a permitted time window
end | true | Local time, (HH:mm) describing the end of a permitted time window
timezone | true | Timezone, e.g. Europe/London, describing what hours the start and end are valid in
days | true | List of days the time window applies, e.g. MONDAY, TUESDAY

The location requirements is formed of the following fields

Parameter | Required | Description
--------- | -------- | -----------
latitude | true | Latitude of the center point
longitude | true | Longitude of the center point
enabled | false | Flag indicating if the location requirement is enabled
radius | false | Indicates what size the bubble should be where the location is considered matched, defaults to 100m
accuracy | false | Indicates how accurate the phone's GPS must be to be considered matched, defaults to 200m

## Get A Doordeck User’s Public Key

<aside class="warning">
This endpoint is only available to users with Doordeck issued auth tokens.
</aside>

This endpoint allows the retrieval of a user's public key along with their ID.
If user is not found, one is created for the specified USER_EMAIL.

```shell
curl 'https://api.doordeck.com/share/invite/USER_EMAIL' \
  -X POST \
  -H 'authorization: Bearer TOKEN' \
  -H 'content-type: application/json' 
```
> - Replace `USER_EMAIL` with the user's email

> The above command returns JSON structured like this:

```json
{
  "id":"00000000-0000-0000-0000-000000000000",
  "publicKey":"base 64 encoded public key"
}
```

### HTTP Request

`POST https://api.doordeck.com/share/invite/USER_EMAIL`

Replace `USER_EMAIL` with the user's email

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
visitor   | false    | Defaults to false, set to true to direct the visitor to a purely web based experience.

## Lookup User Public Key (v1)

This endpoint allows retrieval of a user's public key, it provides additional flexibility to third-party application 
developers by allowing querying via email, telephone, user identifier (both internal and external) and by complete 
identity (encrypted).

Queries against this endpoint are filtered by the third-party's user pool, in other words, this call will only return 
users belonging to the same application as specified in the auth token.

This endpoint accepts a single JSON key (multiple keys cannot be used) which can be one of the following:

| Field | Description |
| ----- | ----------- | 
| email | Email address |
| telephone | E.164 formatted telephone |
| localKey | Doordeck identifier for a user (UUID) |
| foreignKey | Third-party application's identifier for a user |
| identity | Encrypted OpenID token of user |

The first four query keys, ```email```, ```telephone```, ```localKey``` and ```foreignKey``` are read only - these will 
return a 404 error if the user is not known to Doordeck. 

The remaining query key, ```identity```, is used to specify the full identity of the user who is the subject of the
query, this will mean the user is created if they don't exist and will always return a response. When using 
```identity```, the specified OpenID token must be encrypted so it cannot be abused as an authentication token - it 
should be encrypted using JSON Web Encryption (JWE) using the RSA key Doordeck generates for the particular third-party
application.

```shell
curl 'https://api.doordeck.com/directory/query' \
  -X POST \
  -H 'authorization: Bearer TOKEN' \
  -H 'content-type: application/json' \
  --data-binary '{"email":"USER_EMAIL"}'
```
> - Replace `USER_EMAIL` with the user's email

> The above command returns JSON structured like this:

```json
{
  "id":"00000000-0000-0000-0000-000000000000",
  "publicKey":"base 64 encoded public key"
}
```

### HTTP Request

`POST https://api.doordeck.com/directory/query`

### Request Parameters

The request body must have one and only one of the following fields.

Parameter | Required | Description
--------- | ------- | -----------
email | false | Email address 
telephone	| false | E.164 formatted telephone
localKey | false | Doordeck identifier for a user (UUID)
foreignKey | false | Third-party application's identifier for a user
identity | false | Encrypted OpenID token of user

## Lookup User Public Key (v2)

This endpoint expands upon the v1 endpoint by allowing multiple query keys to be used in a single request, this allows
for batches of up to 25 users to be queried in a single request.

| Field      | Description                                     |
|------------|-------------------------------------------------|
| email      | Email addresses                                 |
| telephone  | E.164 formatted telephone numbers               |
| localKey   | Doordeck identifier for a user (UUID)           |
| foreignKey | Third-party application's identifier for a user |

```shell
curl 'https://api.doordeck.com/directory/query' \
    --header 'Accept: application/vnd.doordeck.api-v2+json' \
    --header 'Content-Type: application/json' \
    --header 'Authorization: Bearer TOKEN' \
    --data-raw '{
        "email": ["example1@doordeck.com", "example2@doordeck.com"],
        "localKey": ["ee03c470-c080-11e6-9b35-cb2329105e85"],
        "foreignKey": ["5a5f6e80-3c51-11e6-9e57-cf40be3013fb"]
    }'
```

> The above command returns JSON structured like this:

```json
[
  {
    "email": "example1@doordeck.com",
    "id": "5a5f6e80-3c51-11e6-9e57-cf40be3013fb",
    "publicKey": "MIIBIjANBgk...IDAQAB"
  },
  {
    "email": "example2@doordeck.com",
    "id": "ee03c470-c080-11e6-9b35-cb2329105e85",
    "publicKey": "MIIBIjANBgk...IDAQAB"
  },
  {
    "foreignKey": "5a5f6e80-3c51-11e6-9e57-cf40be3013fb",
    "id": "5a5f6e80-3c51-11e6-9e57-cf40be3013fb",
    "publicKey": "MIIBIjANBgk...IDAQAB"
  },
  {
    "id": "ee03c470-c080-11e6-9b35-cb2329105e85",
    "publicKey": "MIIBIjANBgk...IDAQAB"
  }
]
```

### HTTP Request

`POST https://api.doordeck.com/directory/query`

This call must be made with the ```Accept``` header set to ```application/vnd.doordeck.api-v2+json```

### Request Parameters

The request body must have one and only one of the following fields.

| Parameter  | Required | Description                                      |
|------------|----------|--------------------------------------------------|
| email      | false    | Email addresses                                  |
| telephone  | false    | E.164 formatted telephone numbers                |
| localKey   | false    | Doordeck identifier for users (UUID)             |
| foreignKey | false    | Third-party application's identifier for a users |

## Unlock

```shell
# Assuming private.key contains a pre-registered ephemeral key
HEADER='{"alg":"RS256","typ":"JWT"}'
BODY='{"iss":"USER_ID","sub":"00000000-0000-0000-0000-000000000000","nbf":1473083829,"iat":1473083829,"exp":1473083889,"operation":{"type":"MUTATE_LOCK","locked":false,"duration":5}}'
HEADER_B64=`echo -n $HEADER | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
BODY_B64=`echo -n $BODY | base64  | sed 's/+/-/g;s/\//_/g;s/=//g'`
SIGNATURE_B64=`echo -n $HEADER_B64.$BODY_B64 | openssl sha -sha256 -sign privatekey.pem | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
JWT=`echo -n $HEADER_B64.$BODY_B64.$SIGNATURE_B64`

curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/execute'
  -X POST
  -H 'authorization: Bearer TOKEN'
  -H 'content-type: application/json;charset=UTF-8'
  --data-binary "$JWT"
```

> Replace `00000000-0000-0000-0000-000000000000` with the lock's ID, `USER_ID` with the user's ID (obtained from decoding their auth token), `USERNAME` and `PASSWORD` with the appropriate credentials.

This endpoint allows a device to be unlocked. Requests to this endpoint must be signed and formed as a JSON web token.

### HTTP Request

`POST https://api.doordeck.com/device/LOCK_ID/execute`

Replace `LOCK_ID` with the appropriate lock ID.

<aside class="success">
If a request expires within the next 60 seconds, a 200 is returned upon success, if a request expires in more than 60 seconds, a 202 is returned to indicate the request has been queued for the device.
</aside>

### Request Parameters

The header is formed of the following fields.

Parameter | Required | Description
--------- | ------- | -----------
alg | true | `RS256` (legacy) RSA signed with a 256 bit SHA hash, or EdDSA for ephemeral key signatures
x5c | false | User's certificate chain, mandatory for EdDSA signatures
typ | true | `JWT`, JSON web token

The body is formed of the following fields.

Parameter | Required | Description
--------- | ------- | -----------
iss | true | Issuer, this should be the user's ID
sub | true | Subject, this should be the lock's ID
nbf | true | Not before, a Unix timestamp indicating the earliest date the request is valid from
iat | true | Issued at, the current Unix timestamp
exp | true | Expires, a Unix timestamp indicating when the request should expire, requests to change the lock status should be valid for up to one minute, other requests can have a much longer expiry time
jti | false (but highly recommended) | User generated, unique ID used for tracking the request status and preventing replay attacks. UUIDs are recommended here.
operation | true | A JSON object containing the instructions of the lock

The operation object definition is as follows

Parameter | Required | Description
--------- | ------- | -----------
type | true | Must be `MUTATE_LOCK`
locked | true | Boolean indicating if the lock should be locked or unlocked

## Share A Lock (v1)

```shell
curl 'https://api.doordeck.com/auth/token/' \
  -X POST \
  -H 'content-type: application/json' \
  --data-binary '{"email":"USERNAME","password":"PASSWORD"}' \
  | jq -r .privateKey \
  | base64 --decode \
  | openssl pkcs8 -nocrypt -inform DER -outform PEM -out privatekey.pem

HEADER='{"alg":"RS256","typ":"JWT"}'
BODY='{"iss":"USER_ID","sub":"00000000-0000-0000-0000-000000000000","nbf":1473083829,"iat":1473083829,"exp":1473083889,"operation":{"type":"ADD_USER","publicKey":PUBLIC_KEY,"user":"11111111-1111-1111-1111-111111111111","role":"USER","start":START_TIME,"end":END_TIME}}'
HEADER_B64=`echo -n $HEADER | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
BODY_B64=`echo -n $BODY | base64  | sed 's/+/-/g;s/\//_/g;s/=//g'`
SIGNATURE_B64=`echo -n $HEADER_B64.$BODY_B64 | openssl sha -sha256 -sign privatekey.pem | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
JWT=`echo -n $HEADER_B64.$BODY_B64.$SIGNATURE_B64`

curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/execute'
  -X POST
  -H 'authorization: Bearer TOKEN'
  -H 'content-type: application/json;charset=UTF-8'
  --data-binary "$JWT"
```

> - Replace `00000000-0000-0000-0000-000000000000` with the lock's ID
> - Replace `USER_ID` with the user's ID (obtained from decoding their auth token)
> - Replace `PUBLIC_KEY` with the invitee's public key 
> - Replace `11111111-1111-1111-1111-111111111111` with the invitee's user ID,
> - Replace `USERNAME` and `PASSWORD` with the appropriate credentials
> - Replace `START_TIME` and `END_TIME` with Unix timestamps of when the user should be activate from and until, use null for indefinite 

This endpoint allows operations to be performed on a lock, such as lock, unlock, add/remove user. Requests to this endpoint must be signed and formed as a JSON Web Token (JWT).

### HTTP Request

`POST https://api.doordeck.com/device/LOCK_ID/execute`

Replace `LOCK_ID` with the appropriate lock ID.

<aside class="success">
If a request expires within the next 60 seconds, a 204 is returned upon success, if a request expires in more than 60 seconds, a 202 is returned to indicate the request has been queued for the device.
</aside>

### JWT Structure

The JWT header is formed of the following fields:

Parameter | Required | Description
--------- | ------- | -----------
alg | true | `RS256` (legacy) RSA signed with a 256 bit SHA hash, or EdDSA for ephemeral key signatures
x5c | false | User's certificate chain, mandatory for EdDSA signatures
typ | true | `JWT`, JSON web token

The JWT body is formed of the following fields:

Parameter | Required | Description
--------- | ------- | -----------
iss | true | Issuer, this should be the user's ID
sub | true | Subject, this should be the lock's ID
nbf | true | Not before, a Unix timestamp indicating the earliest date the request is valid from
iat | true | Issued at, the current Unix timestamp
exp | true | Expires, a Unix timestamp indicating when the request should expire, requests to change the lock status should be valid for up to one minute, other requests can have a much longer expiry time
jti | false (but highly recommended) | User generated, unique ID used for tracking the request status and preventing replay attacks. UUIDs are recommended here.
operation | true | A JSON object containing the instructions of the lock

The operation object definition is as follows

Parameter | Required | Description
--------- | ------- | -----------
type | true | Must be `ADD_USER`
user | true | ID of user to add
publicKey | true | Public key of user to add
role | false | Should be either ADMIN or USER
start | false | Unix timestamp of when the user should be active from, null or unset to start immediately
end | false | Unix timestamp of when the user should expire, null or unset for never expires

After the request has been signed with user's private key, it should be sent to the execute endpoint.

## Batch Share A Lock (v2)

Share a single lock with up to 25 users in a single request. Note, not all devices support this operation, check for
the presence of the `BATCH_SHARE_25` capability.

```shell
# Generate (or preferably reuse an existing) a Ed25519 keypair
openssl genpkey -algorithm ed25519 -out private.der

# Format the public key for use with the ephemeral key registration endpoint
PUBLIC_KEY=`openssl pkey -in private.key -pubout -outform DER -out - | base64`

# Register the keypair with Doordeck (may require verification, see "Register Ephemeral Key With Secondary Authentication")
API_RESPONSE=$(curl -s -X POST https://api.doordeck.com/auth/certificate \
  -H 'authorization: Bearer TOKEN' \
  -H 'content-type: application/json' \
  -d '{"ephemeralKey":"'$PUBLIC_KEY'"}')

# Setup variables needed for the batch share operation
CERTIFICATE_CHAIN=$(echo $API_RESPONSE | jq -r .certificateChain)
USER_ID=$(echo $API_RESPONSE | jq -r .userId)
DEVICE_ID="00000000-0000-0000-0000-000000000000" # Replace with the lock's ID

# Setup the batch share JWT
HEADER=$(jq -n \
  --arg alg "EdDSA" \
  --arg typ "JWT" \
  --argjson x5c "$CERTIFICATE_CHAIN" \
  '{
    alg: $alg,
    typ: $typ,
    x5c: $x5c
  }')

BODY=$(
  jq -n \
    --arg iss "$USER_ID" \
    --arg sub "$DEVICE_ID" \
    --arg publicKey "INVITEE_PUBLIC_KEY" \
    --arg user "11111111-1111-1111-1111-111111111111" \
    --arg role "USER" \
    --argjson nbf "$(date +%s)" \
    --argjson iat "$(date +%s)" \
    --argjson exp "$(($(date +%s) + 60))" \
    --argjson start "$USER_START_TIME" \
    --argjson end "$USER_END_TIME" \
    '{
      iss: $iss,
      sub: $sub,
      nbf: $nbf,
      iat: $iat,
      exp: $exp,
      operation: {
        type: "BATCH_ADD_USER",
        users: [
          {
            publicKey: $publicKey,
            user: $user,
            role: $role,
            start: $start,
            end: $end
          }
        ]
      }
    }'
)

# Prepare and sign the JWT
HEADER_B64=`echo -n $HEADER | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
BODY_B64=`echo -n $BODY | base64  | sed 's/+/-/g;s/\//_/g;s/=//g'`
echo -n $HEADER_B64.$BODY_B64 > tbs.bin
SIGNATURE_B64=$(openssl pkeyutl -sign -inkey private.key -rawin -in tbs.bin | base64 | sed 's/+/-/g;s/\//_/g;s/=//g')
JWT=$HEADER_B64.$BODY_B64.$SIGNATURE_B64

curl 'https://api.doordeck.com/device/$DEVICE_ID/execute'
  -X POST
  -H 'authorization: Bearer TOKEN'
  -H 'content-type: application/jwt'
  --data-binary "$JWT"
```

> - Replace `00000000-0000-0000-0000-000000000000` with the lock's ID
> - Replace `11111111-1111-1111-1111-111111111111` with the invitee's user ID,
> - Replace `INVITEE_PUBLIC_KEY` with the invitee's public key (retrieve from the lookup user public key endpoint)
> - Replace `START_TIME` and `END_TIME` with Unix timestamps of when the user should be activated from and until, use null for indefinite

### HTTP Request

`POST https://api.doordeck.com/device/LOCK_ID/execute`

Replace `LOCK_ID` with the appropriate lock ID.

<aside class="success">
If a request expires within the next 60 seconds, a 204 is returned upon success, if a request expires in more than 60 seconds, a 202 is returned to indicate the request has been queued for the device.
</aside>

### JWT Structure

The JWT header is formed of the following fields:

| Parameter | Required | Description                                |
|-----------|----------|--------------------------------------------|
| alg       | true     | `EdDSA` EdDSA for ephemeral key signatures |
| x5c       | true     | User's certificate chain                   |
| typ       | true     | `JWT`, JSON web token                      |

The JWT body is formed of the following fields:

| Parameter | Required                   | Description                                                                                                                                                                                     |
|-----------|----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| iss       | true                       | Issuer, this should be the user's ID                                                                                                                                                            |
| sub       | true                       | Subject, this should be the lock's ID                                                                                                                                                           |
| nbf       | true                       | Not before, a Unix timestamp indicating the earliest date the request is valid from                                                                                                             |
| iat       | true                       | Issued at, the current Unix timestamp                                                                                                                                                           |
| exp       | true                       | Expires, a Unix timestamp indicating when the request should expire, requests to change the lock status should be valid for up to one minute, other requests can have a much longer expiry time |
| jti       | false (highly recommended) | User generated, unique ID used for tracking the request status and preventing replay attacks. UUIDs are recommended here.                                                                       |
| operation | true                       | A JSON object containing the instructions of the lock                                                                                                                                           |

The operation object definition is as follows

| Parameter | Required | Description              |
|-----------|----------|--------------------------|
| type      | true     | Must be `BATCH_ADD_USER` |
| users     | true     | List of user objects     |

The user object definition is as follows

| Parameter | Required | Description                                                                               |
|-----------|----------|-------------------------------------------------------------------------------------------|
| userId    | true     | ID of user to add                                                                         |
| publicKey | true     | Public key of user to add                                                                 |
| role      | false    | Should be either ADMIN or USER                                                            |
| start     | false    | Unix timestamp of when the user should be active from, null or unset to start immediately |
| end       | false    | Unix timestamp of when the user should expire, null or unset for never expires            |

After the request has been signed with user's private key, it should be sent to the execute endpoint.

## Revoke Access To A Lock

```shell
curl 'https://api.doordeck.com/auth/token/' \
  -X POST \
  -H 'content-type: application/json' \
  --data-binary '{"email":"USERNAME","password":"PASSWORD"}' \
  | jq -r .privateKey \
  | base64 --decode \
  | openssl pkcs8 -nocrypt -inform DER -outform PEM -out privatekey.pem

HEADER='{"alg":"RS256","typ":"JWT"}'
BODY='{"iss":"USER_ID","sub":"00000000-0000-0000-0000-000000000000","nbf":1473083829,"iat":1473083829,"exp":1473083889,"operation":{"type":"REMOVE_USER","users":["11111111-1111-1111-1111-111111111111"]}}'
HEADER_B64=`echo -n $HEADER | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
BODY_B64=`echo -n $BODY | base64  | sed 's/+/-/g;s/\//_/g;s/=//g'`
SIGNATURE_B64=`echo -n $HEADER_B64.$BODY_B64 | openssl sha -sha256 -sign privatekey.pem | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
JWT=`echo -n $HEADER_B64.$BODY_B64.$SIGNATURE_B64`

curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/execute'
  -X POST
  -H 'authorization: Bearer TOKEN'
  -H 'content-type: application/json;charset=UTF-8'
  --data-binary "$JWT"
```

> - Replace `00000000-0000-0000-0000-000000000000` with the lock's ID
> - Replace `USER_ID` with the user's ID (obtained from decoding their auth token)
> - Replace `11111111-1111-1111-1111-111111111111` with the revoked user's ID,
> - Replace `USERNAME` and `PASSWORD` with the appropriate credentials

This endpoint allows multiple operations to be performed on locks. Requests to this endpoint must be signed and formed as a JSON web token. 
This section explains how to revoke access to a lock, this can also be used to delete a lock from the current users account.

### HTTP Request

`POST https://api.doordeck.com/device/LOCK_ID/execute`

Replace `LOCK_ID` with the appropriate lock ID.

<aside class="success">
If a request expires within the next 60 seconds, a 200 is returned upon success, if a request expires in more than 60 seconds, a 202 is returned to indicate the request has been queued for the device.
</aside>

### Request Parameters

The header is formed of the following fields.

Parameter | Required | Description
--------- | ------- | -----------
alg | true | `RS256` (legacy) RSA signed with a 256 bit SHA hash, or EdDSA for ephemeral key signatures
x5c | false | User's certificate chain, mandatory for EdDSA signatures
typ | true | `JWT`, JSON web token

The body is formed of the following fields.

Parameter | Required | Description
--------- | ------- | -----------
iss | true | Issuer, this should be the user's ID
sub | true | Subject, this should be the lock's ID
nbf | true | Not before, a Unix timestamp indicating the earliest date the request is valid from
iat | true | Issued at, the current Unix timestamp
exp | true | Expires, a Unix timestamp indicating when the request should expire, requests to change the lock status should be valid for up to one minute, other requests can have a much longer expiry time
jti | false (but highly recommended) | User generated, unique ID used for tracking the request status and preventing replay attacks. UUIDs are recommended here.
operation | true | A JSON object containing the instructions of the lock

The operation object definition is as follows

Parameter | Required | Description
--------- | ------- | -----------
type | true | Must be `REMOVE_USER`
users | true | List of user IDs to remove

## Update Secure Settings

```shell
curl 'https://api.doordeck.com/auth/token/' \
  -X POST \
  -H 'content-type: application/json' \
  --data-binary '{"email":"USERNAME","password":"PASSWORD"}' \
  | jq -r .privateKey \
  | base64 --decode \
  | openssl pkcs8 -nocrypt -inform DER -outform PEM -out privatekey.pem

HEADER='{"alg":"RS256","typ":"JWT"}'
BODY='{"iss":"USER_ID","sub":"00000000-0000-0000-0000-000000000000","nbf":1473083829,"iat":1473083829,"exp":1473083889,"operation":{"type":"MUTATE_SETTING","unlockDuration":10}}'
HEADER_B64=`echo -n $HEADER | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
BODY_B64=`echo -n $BODY | base64  | sed 's/+/-/g;s/\//_/g;s/=//g'`
SIGNATURE_B64=`echo -n $HEADER_B64.$BODY_B64 | openssl sha -sha256 -sign privatekey.pem | base64 | sed 's/+/-/g;s/\//_/g;s/=//g'`
JWT=`echo -n $HEADER_B64.$BODY_B64.$SIGNATURE_B64`

curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/execute'
  -X POST
  -H 'authorization: Bearer TOKEN'
  -H 'content-type: application/json;charset=UTF-8'
  --data-binary "$JWT"
```

> - Replace `00000000-0000-0000-0000-000000000000` with the lock's ID
> - Replace `USER_ID` with the user's ID (obtained from decoding their auth token)
> - Replace `11111111-1111-1111-1111-111111111111` with the revoked user's ID,
> - Replace `USERNAME` and `PASSWORD` with the appropriate credentials

This endpoint allows multiple operations to be performed on locks. Requests to this endpoint must be signed and formed as a JSON web token. 
This section explains how to change on-lock settings, such as unlock time and open hours.

### HTTP Request

`POST https://api.doordeck.com/device/LOCK_ID/execute`

Replace `LOCK_ID` with the appropriate lock ID.

<aside class="success">
If a request expires within the next 60 seconds, a 200 is returned upon success, if a request expires in more than 60 seconds, a 202 is returned to indicate the request has been queued for the device.
</aside>

### Request Parameters

The header is formed of the following fields.

Parameter | Required | Description
--------- | ------- | -----------
alg | true | `RS256` (legacy) RSA signed with a 256 bit SHA hash, or EdDSA for ephemeral key signatures
x5c | false | User's certificate chain, mandatory for EdDSA signatures
typ | true | `JWT`, JSON web token

The body is formed of the following fields.

Parameter | Required | Description
--------- | ------- | -----------
iss | true | Issuer, this should be the user's ID
sub | true | Subject, this should be the lock's ID
nbf | true | Not before, a Unix timestamp indicating the earliest date the request is valid from
iat | true | Issued at, the current Unix timestamp
exp | true | Expires, a Unix timestamp indicating when the request should expire, requests to change the lock status should be valid for up to one minute, other requests can have a much longer expiry time
jti | false (but highly recommended) | User generated, unique ID used for tracking the request status and preventing replay attacks. UUIDs are recommended here.
operation | true | A JSON object containing the instructions of the lock

The operation object definition is as follows

Parameter | Required | Description
--------- | ------- | -----------
type | true | Must be `MUTATE_SETTING`
unlockDuration | false | Set to an integer number of seconds for the lock to remain unlocked
unlockBetween | false | Set to unlock between definition below, or null to remove settings

The unlock between object definition is as follows

Parameter | Required | Description
--------- | -------- | -----------
start | true | Local time, (HH:mm) describing the start of an unlock between time window
end | true | Local time, (HH:mm) describing the end of an unlock between time window
timezone | true | Timezone, e.g. Europe/London, describing what hours the start and end are valid in
days | true | List of days the time window applies, e.g. MONDAY, TUESDAY
exceptions | false | List of dates (YYYY-MM-DD) to ignore above settings, useful for holidays

## Get Pinned Locks

```shell
curl "https://api.doordeck.com/device/favourite"
  -H "Authorization: Bearer TOKEN"
```

> The above command returns JSON structured like this:

```json
[
    {
        "id": "3cc19730-4603-11e7-a620-79be7967fabd",
        "name": "Reception",
        "colour": "#24BD9A",
        "start": null,
        "end": null,
        "role": "USER",
        "settings": {
            "unlockTime": 5,
            "permittedAddresses": [],
            "defaultName": "Reception",
            "usageRequirements": {},
            "unlockBetweenWindow": null,
            "tiles": [
                "3cc19730-4603-11e7-a620-79be7967fabd"
            ]
        },
        "state": {
            "locked": true,
            "connected": true
        },
        "favourite": true
    },
    {
        "id": "ad8fb800-4def-11e8-9370-170748b9fca8",
        "name": "Web Demo",
        "colour": "#D93951",
        "start": null,
        "end": null,
        "role": "ADMIN",
        "settings": {
            "unlockTime": 7,
            "permittedAddresses": [],
            "defaultName": "Web Demo",
            "usageRequirements": {},
            "unlockBetweenWindow": null,
            "tiles": []
        },
        "state": {
            "locked": true,
            "connected": true
        },
        "favourite": true
    }
]
```

The endpoint returns a list of the current user's pinned locks.

### HTTP Request
`GET https://api.doordeck.com/device/favourite`

## Get Shareable Locks

```shell
curl "https://api.doordeck.com/device/shareable"
  -H "Authorization: Bearer TOKEN"
```


> The above command returns JSON structured like this:

```json
[
    {
        "id": "08aa6b81-30cf-11e8-ba42-6986d3c6ca8e",
        "name": "Demo #1"
    },
    {
        "id": "48dceebb-31cf-11e8-a9fe-6986d3c6ca8e",
        "name": "Demo #2"
    }
]
```

This endpoint returns the names and IDs of locks where the current user is an administrator.

### HTTP Request
`GET https://api.doordeck.com/device/shareable`
