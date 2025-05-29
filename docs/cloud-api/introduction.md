# Introduction

Welcome to the Doordeck API! You can use our API to access Doordeck API endpoints,
which can get information on the state of locks, manage access and perform operations.

This API documentation includes details of both endpoints available to Doordeck users (i.e. users who have registered
on [Doordeck](https://app.doordeck.com) directly) and to third-party app developers, some endpoints are only available
to one set of users, these are flagged as follows:

:::warning[Important]
This endpoint is only available to users with Doordeck issued auth tokens.
:::

## Environments

Doordeck operates production, staging and development environments at the following locations:

 - https://api.doordeck.com
 - https://api.staging.doordeck.com
 - https://api.dev.doordeck.com

Newer endpoints may only exist in staging or development environments, these will be flagged as such.
