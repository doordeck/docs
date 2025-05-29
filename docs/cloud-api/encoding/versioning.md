---
sidebar_position: 1
---

# Versioning

All Doordeck endpoints use JSON as their primary encoding scheme and respond to clients sending an 
```Accept: application/json``` header, when a newer endpoints are available, clients should specify 
```Accept: application/vnd.doordeck.api-v2+json``` (replacing v2 with v3, etc).
