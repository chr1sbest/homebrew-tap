# homebrew-tap

Homebrew tap for installing `ralph`.

## Install

```bash
brew tap chr1sbest/tap
brew install ralph
```

## Updating Ralph

When a new `ralph` release is published in `chr1sbest/wiggum`, update `Formula/ralph.rb`:

- Bump `version`.
- Update the per-platform `url` values to the new GitHub Release tag.
- Update the per-platform `sha256` values to match the new tarballs.

You can find the SHA256 digests on the GitHub Release asset list (each tarball includes a `sha256:` digest).

## Testing locally

From this repo:

```bash
brew install --build-from-source Formula/ralph.rb
ralph version
```
