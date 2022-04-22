' ----------------------------------------------
' Script Recorded by ANSYS Electronics Desktop Version 2021.1.0
' 12:34:15  Apr 09, 2022
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
Set oDesign = oProject.SetActiveDesign("Armature-Field")
Set oModule = oDesign.GetModule("BoundarySetup")

PhaseA = array(1,-2,-15,3,14)
PhaseB = array(6,-7,-5,8,4)
PhaseC = array(11,-12,-10,13,9)
Ns = 15

for i = 0 to (Ns/3-1)

scain = "scain" + cstr(abs(PhaseA(i)))
scaout = "scaout" + cstr(abs(PhaseA(i)))

if (PhaseA(i) > 0) then

oModule.AssignCurrent Array("NAME:"+scain, "Objects:=", Array(scain), "Current:=",  _
  "$Ntc*i_a", "IsPositive:=", false)

oModule.AssignCurrent Array("NAME:"+scaout, "Objects:=", Array(scaout), "Current:=",  _
  "$Ntc*i_a", "IsPositive:=", true)
Else

oModule.AssignCurrent Array("NAME:"+scain, "Objects:=", Array(scain), "Current:=",  _
  "$Ntc*i_a", "IsPositive:=", true)

oModule.AssignCurrent Array("NAME:"+scaout, "Objects:=", Array(scaout), "Current:=",  _
  "$Ntc*i_a", "IsPositive:=", false)

end if

scain = "scain" + cstr(abs(PhaseB(i)))
scaout = "scaout" + cstr(abs(PhaseB(i)))


if (PhaseB(i) > 0) then

oModule.AssignCurrent Array("NAME:"+scain, "Objects:=", Array(scain), "Current:=",  _
  "$Ntc*i_b", "IsPositive:=", false)

oModule.AssignCurrent Array("NAME:"+scaout, "Objects:=", Array(scaout), "Current:=",  _
  "$Ntc*i_b", "IsPositive:=", true)
Else

oModule.AssignCurrent Array("NAME:"+scain, "Objects:=", Array(scain), "Current:=",  _
  "$Ntc*i_b", "IsPositive:=", true)

oModule.AssignCurrent Array("NAME:"+scaout, "Objects:=", Array(scaout), "Current:=",  _
  "$Ntc*i_b", "IsPositive:=", false)

end if

scain = "scain" + cstr(abs(PhaseC(i)))
scaout = "scaout" + cstr(abs(PhaseC(i)))


if (PhaseC(i) > 0) then

oModule.AssignCurrent Array("NAME:"+scain, "Objects:=", Array(scain), "Current:=",  _
  "$Ntc*i_c", "IsPositive:=", false)

oModule.AssignCurrent Array("NAME:"+scaout, "Objects:=", Array(scaout), "Current:=",  _
  "$Ntc*i_c", "IsPositive:=", true)
Else

oModule.AssignCurrent Array("NAME:"+scain, "Objects:=", Array(scain), "Current:=",  _
  "$Ntc*i_c", "IsPositive:=", true)

oModule.AssignCurrent Array("NAME:"+scaout, "Objects:=", Array(scaout), "Current:=",  _
  "$Ntc*i_c", "IsPositive:=", false)

end if

next