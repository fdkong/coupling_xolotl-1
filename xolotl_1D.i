[Mesh]
  type = PETScDMDAMesh
  dim = 1
  XolotlInput_path_name = './params_NE_1D.txt'
[]

[AuxVariables]
  [./Auxv]
    order = FIRST
    family = LAGRANGE
  [../]
  [./AuxGB]
    order = FIRST
    family = LAGRANGE
  [../]
[]

[Problem]
 type = XolotlProblem
 sync_variable = Auxv
 sync_GB = AuxGB
[]

[Executioner]
 type = Transient
[]