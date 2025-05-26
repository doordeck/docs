---
sidebar_position: 8
---

# Errors

The Doordeck API uses the following error codes:

| Error Code | Meaning                                                                                          |
|------------|--------------------------------------------------------------------------------------------------|
| 400        | Bad Request -- Your request is wrong                                                             |
| 401        | Unauthorized -- Your API key is wrong                                                            |
| 403        | Forbidden -- You don't have permission                                                           |
| 404        | Not Found -- The specified resource could not be found                                           |
| 405        | Method Not Allowed -- You tried to access a resource with an invalid method                      |
| 406        | Not Acceptable -- You requested a format that isn't json                                         |
| 409        | Conflict - The JWT ID has already been used or there is a database conflict                      |
| 410        | Gone -- The resource requested has been removed from our servers                                 |
| 423        | Locked -- The resource cannot be updated until an unlock operation is performed                  |
| 425        | Too Early -- The resource is unavailable until a pending slower operation is completed elsewhere |
| 429        | Too Many Requests -- You're requesting too many resources! Slow down!                            |
| 500        | Internal Server Error -- We had a problem with our server. Try again later.                      |
| 503        | Service Unavailable -- The Doordeck device is offline. Please try again later.                   |
| 504        | Gateway Timeout -- The Doordeck device didn't response in a timely manner                        |
