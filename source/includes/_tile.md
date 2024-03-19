# Tiles

## Get Lock Belonging To Tile

```shell
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000/'
  -H "Authorization: Bearer TOKEN"
```

> Replace `00000000-0000-0000-0000-000000000000` with the tile ID.

> The above command returns 404 if no tile is known, or a see other 303 with the `Location` header set to the value of 
the lock

This endpoint identifies which lock belongs to the specific tile.

### HTTP Request

`GET https://api.doordeck.com/tile/TILE_ID/`

Replace `TILE_ID` with the appropriate tile ID.

## Get Lock Belonging To Tile (v2)

```shell
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000/'
  -H "Authorization: Bearer TOKEN"
```

> Replace `00000000-0000-0000-0000-000000000000` with the tile ID.

> The above command returns 404 if no tile is known, or a see other 303 with the `Location` header set to the value of
the lock

This endpoint identifies which lock belongs to the specific tile.

This call must be made with the `Accept` header set to `application/vnd.doordeck.api-v2+json`.

### HTTP Request

`GET https://api.doordeck.com/tile/TILE_ID/`

Replace `TILE_ID` with the appropriate tile ID.

## Get Lock Belonging To Tile (v3)

```shell
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000/'
  -H "Authorization: Bearer TOKEN"
```

> Replace `00000000-0000-0000-0000-000000000000` with the tile ID.

> The above command returns 404 if no tile is known, or a see other 303 with the `Location` header set to the value of
the lock

This endpoint identifies which lock belongs to the specific tile.

This call must be made with the `Accept` header set to `application/vnd.doordeck.api-v3+json`.

### HTTP Request

`GET https://api.doordeck.com/tile/TILE_ID/`

Replace `TILE_ID` with the appropriate tile ID.

## Associate Tile With Lock

```shell
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/tile/00000000-0000-0000-0000-000000000001'
  -X PUT
  -H "Authorization: Bearer TOKEN"
```

> Replace `00000000-0000-0000-0000-000000000000` with the device ID.

> Replace `00000000-0000-0000-0000-000000000001` with the tile ID.

The endpoints links a tile to a lock; the current user must be an administrator of the lock and the tile must not be 
associated to any other locks.

### HTTP Request

`PUT https://api.doordeck.com/device/DEVICE_ID/tile/TILE_ID/`

Replace `TILE_ID` with the appropriate tile ID and `DEVICE_ID` with the appropriate device ID.

## Disassociate Tile From Lock

```shell
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/tile/00000000-0000-0000-0000-000000000001'
  -X DELETE
  -H "Authorization: Bearer TOKEN"
```

> Replace `00000000-0000-0000-0000-000000000000` with the device ID.

> Replace `00000000-0000-0000-0000-000000000001` with the tile ID.

The endpoint removes the relationship between a tile and a lock, the tile can then be reassigned to another lock.

### HTTP Request

`DELETE https://api.doordeck.com/device/DEVICE_ID/tile/TILE_ID/`

Replace `TILE_ID` with the appropriate tile ID and `DEVICE_ID` with the appropriate device ID.

## Associate multiple locks (devices) to a single tile

The endpoints links multiple locks to a single tile. The current user must be an administrator of the locks and also a site administrator.
This endpoint is only available from API version 2 onwards.
<br>
The behavior of this endpoint is as follows:
- given set of devices is not empty, the tile will be associated to these given devices, disassociating from any other devices not in the set
- given set of devices is empty, the tile will be disassociated from all devices

```shell
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000' \
  -X PUT \
  --header 'Authorization: Bearer TOKEN' \
  --header 'Accept: application/vnd.doordeck.api-v2+json' \
  --data-binary '{ \
  "siteId": "SITE_ID", \
  "devices": ["DEVICE_ID_1", "DEVICE_ID_2", "DEVICE_ID_3"] \
  }'
```

> - Replace `00000000-0000-0000-0000-000000000000` with the tile ID to which you want to associate multiple locks
> - Replace `SITE_ID` with the site ID to which the tile belongs
> - Replace `DEVICE_ID_1`, `DEVICE_ID_2`, `DEVICE_ID_3` with the device IDs to be associated to the tile

### HTTP Request

`PUT https://api.doordeck.com/tile/{tileId}`

### Request Parameters

| Parameter | Required | Description                                     |
|-----------| -------- |-------------------------------------------------|
| tileId    | true     | Id the tile to which the devices will be mapped |

### Request Headers

| Header | Required | Description                          |
| ------ | -------- | ------------------------------------ |
| Accept | true     | application/vnd.doordeck.api-v2+json |

### Request Body

This request needs a JSON body with the following structure:

```
{
  "siteId": "00000000-0000-0000-0000-000000000000",
  "devices": [
    "00000000-0000-0000-0000-000000000000",
    "00000000-0000-0000-0000-000000000000",
    "00000000-0000-0000-0000-000000000000"
  ]
}
```

The values for the `siteId` and `devices` parameters are as follows:
- `siteId` is the site ID to which the tile belongs
- `devices` is an array of device IDs to be associated to the tile  

### Response Structure

Upon success, this API will return a 200 OK response.
