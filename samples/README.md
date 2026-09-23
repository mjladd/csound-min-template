# Samples

Put sound files here. A piece names one without a folder, because the
container sets `SSDIR` to this folder:

```
asig diskin2 "kick.wav", 1
```

## Large files

Git stores a sound file badly, because every change keeps the whole old file
in the history. The `.gitattributes` of this project sends `.wav`, `.aif`,
`.aiff` and `.flac` files here to Git LFS (large file storage for Git). Run
`git lfs install` once on your computer before you commit a sample.

GitHub limits the LFS storage and the download volume of each account. If
your library is larger than that limit, keep it outside Git. Mount it into
the container instead: add a bind mount to `.devcontainer/devcontainer.json`
and point `SSDIR` at the mount.
