# Welcome Settings Import/Export Example
[API Documentation](https://newscred.github.io/settings-ex-im-automation-sample/openapi.html#tag/Settings)  


[![Update target Welcome instance via Github Action](https://github.com/newscred/settings-ex-im-automation-sample/actions/workflows/import.yml/badge.svg)](https://github.com/newscred/settings-ex-im-automation-sample/actions/workflows/import.yml)

## Import in target instance

[API Documentation](https://newscred.github.io/settings-ex-im-automation-sample/openapi.html#tag/Settings/paths/~1settings/post)  

Import an existing config file `./config.json` (see how to generate it in the "Export from source instance" section below).  
Get an access token using an app from the target instance.
Use it as `ACCESS_TOKEN` environment variable to run `./scripts/curl/import.sh`.

### Manually

```bash
ACCESS_TOKEN=USE_YOUR_TOKEN_FROM_TARGET_INSTANCE bash ./scripts/curl/import.sh
```

### With CI/CD Job

Example: Github action (see `.github/workflows/import.yml`) 

- Set environment variables in [Github repository](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-a-repository)
- Push a change in default branch to see the action trigger


## Export from source instance

[API Documentation](https://newscred.github.io/settings-ex-im-automation-sample/openapi.html#tag/Settings/paths/~1settings/get)  

Get an access token using an app from the source instance.  
Use it as `ACCESS_TOKEN` environment variable to run `./scripts/curl/export.sh` and save the response in `./config.json`.

```bash
ACCESS_TOKEN=USE_YOUR_TOKEN_FROM_SOURCE_INSTANCE bash ./scripts/curl/export.sh > config.json

# if you want to pretty print the json using python
ACCESS_TOKEN=USE_YOUR_TOKEN_FROM_SOURCE_INSTANCE bash ./scripts/curl/export.sh | python -m json.tool > config.json
```
