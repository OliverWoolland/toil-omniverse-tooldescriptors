#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs:
  usd: File
  gdml_out: string
  macro: File

# outputs:
#   gdml_file:
#     type: File
#     outputSource: usdToG4/gdml
outputs:
  run_output:
    type: File
    outputSource: G4GDML/obj_out
  conversion_output:
    type: File
    outputSource: usdToG4/obj
    
steps:
  usdToG4:
    run: usdToG4.cwl
    in:
      usd: usd
    out: [gdml, obj]

  G4GDML:
    run: G4GDML.cwl
    in:
      gdml_in: usdToG4/gdml
      gdml_out: gdml_out
      macro: macro
    out: [obj_out]
