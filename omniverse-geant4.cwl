#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs:
  usd: File

outputs:
  gdml_file:
    type: File
    outputSource: usdToG4/gdml

steps:
  usdToG4:
    run: usdToG4.cwl
    in:
      usd: usd
    out: [gdml]