#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [/Geant4Applications/Geant4GDML/load_gdml]
hints:
  DockerRequirement:
    dockerImageId: uom-omniverse-docker_geant4
inputs:
  gdml_in:
    type: File
    inputBinding:
      position: 1
  gdml_out:
    type: string
    inputBinding:
      position: 2
  macro:
    type: File
    inputBinding:
      position: 3

outputs:
  run_out:
    type: File
    streamable: true
    outputBinding:
      glob: g4out.txt
stdout: g4out.txt
