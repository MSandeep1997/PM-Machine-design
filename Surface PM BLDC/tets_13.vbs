' ----------------------------------------------
' Script Recorded by ANSYS Electronics Desktop Version 2021.1.0
' 11:05:52  Apr 04, 2022
' ----------------------------------------------
Dim oAnsoftApp
Dim oDesktop
Dim oProject
Dim oDesign
Dim oEditor
Dim oModule
Set oAnsoftApp = CreateObject("Ansoft.ElectronicsDesktop")
Set oDesktop = oAnsoftApp.GetAppDesktop()
oDesktop.RestoreWindow
Set oProject = oDesktop.SetActiveProject("Term_paper")
Set oDesign = oProject.SetActiveDesign("Back_EMF")
Set oModule = oDesign.GetModule("BoundarySetup")

for i = 2 to 15

oModule.AssignWindingGroup Array("NAME:COIL_"+cstr(i), "Type:=", "External", "IsSolid:=",  _
  false, "Current:=", "0mA", "Resistance:=", "0ohm", "Inductance:=", "0nH", "Voltage:=",  _
  "0mV", "ParallelBranchesNum:=", "1")
oModule.AssignCoil Array("NAME:scain"+cstr(i), "Objects:=", Array("scain"+cstr(i)), "Conductor number:=",  _
  "$Ntc", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:scaout"+cstr(i), "Objects:=", Array("scaout"+cstr(i)), "Conductor number:=",  _
  "$Ntc", "PolarityType:=", "Positive")
oModule.AddWindingCoils "COIL_"+cstr(i), Array("scain"+cstr(i), "scaout"+cstr(i))

next