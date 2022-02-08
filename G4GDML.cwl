#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [xvfb-run, /Geant4Applications/Geant4GDML/load_gdml]
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
  obj_out:
    type: File
    outputBinding:
      glob: g4.obj
