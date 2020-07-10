# JetBrains DotCover Github Action

## Inputs

### `dotCoverCommand`

Command to pass to DotCover. e.g. `cover`

### `configFile`

Path to a configfile to pass to DotCover.

## Example usage

uses: dodopizza/dotcover-action@v1
with:
  dotCoverCommand: cover
  configFile: dotcover.xml
