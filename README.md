# Sync Remote File with Local File Docker action

This action retrieves a remote file with wget and compares it to the version in the repository. If a newer version is available remotely, it updates the file in the repository.

## Inputs

### `url`

**Required** The url of the remote file to download.

### `file_in_repo`

**Required** The location of the file in the repository to update if changed.

### `git_user`

The name to commit under. Default: 'rubencom/sync-remote-file-with-local-file-docker-action'.

### `git_email`

The email to commit under. Default: 'no-reply@github.com'.

## Example usage

Put the following in `.github/workflows/main.yml`:
```
on:
  schedule:
    - cron: '0 0 * * *'
  workflow_dispatch:

jobs:
  syncing_files:
    runs-on: ubuntu-latest
    name: Syncing files
    steps:
    - name: Checkout repository
      id: checkout
      uses: actions/checkout@v2
    - name: Syncing files
      id: update_file
      uses: rubencom/sync-remote-file-with-local-file-docker-action@v1.0
      with:
        url: https://example.com/index.html
        file_in_repo: example/index.html

```

## License
GNU General Public License v3.0