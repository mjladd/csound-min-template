# A Csound music project

Your pieces, samples and analysis files, in one repository, with the
csound-min engine in a container. You do not install Csound, and you do not
build it.

## Start

1. On GitHub, open this repository and click Use this template.
2. Clone your new repository.
3. Open the folder in VS Code and run Dev Containers: Reopen in Container.
   The first start pulls the image, which takes a minute. You can also open
   the repository in a GitHub Codespace.
4. Run `csd render pieces/hello.csd`.
5. Play `renders/hello.wav`. The folder is on your own disk.

On a Linux computer that runs PulseAudio or PipeWire, pick the configuration
named "csound project (host audio)". Then `csd play` sends the audio to your
speakers.

## The folders

| Folder | Holds | Csound variable |
| --- | --- | --- |
| `pieces/` | the `.csd` files | |
| `samples/` | sound files that opcodes read | `SSDIR` |
| `analysis/` | analysis files, made from the samples | `SADIR` |
| `include/` | orchestra code that more than one piece uses | `INCDIR` |
| `renders/` | the rendered audio, which Git ignores | |

Csound searches those folders, so a piece names a file without a folder:
`diskin2 "kick.wav"`, `pvsfread "voice.pvx"`, `#include "tone.orc"`.

## The commands

```
csd render pieces/hello.csd    # render to renders/hello.wav
csd play pieces/hello.csd      # render, then play the result
csd live pieces/hello.csd      # straight to the audio device
csd analyze                    # make the analysis files from the samples
csd info renders/hello.wav     # format, length and peak level
csd opcodes oscil              # list the opcodes that match
```

You can also call the engine yourself:

```
csound -W -o out.wav pieces/hello.csd
```

## Samples

Read [samples/README.md](samples/README.md). Sound files go to Git LFS
(large file storage for Git), and a large library stays outside Git.

## Analysis files

An analysis file comes from a sample. Add the command that makes it to
`analysis/make.sh`, and run `csd analyze`. Git ignores the files that the
script makes, so each clone makes them again. If a file takes a long time to
make, remove its line from `.gitignore` and commit it.

## Continuous rendering

`.github/workflows/render.yml` renders every file in `pieces/` on each push,
in the same image. The rendered audio is attached to the run as an artifact.

## A newer engine

The image tag is in `.devcontainer/devcontainer.json` and in
`.github/workflows/render.yml`. Change both to a newer tag from
https://github.com/mjladd/csound-min/releases, then run Dev Containers:
Rebuild Container. Render your pieces again and listen for changes.
