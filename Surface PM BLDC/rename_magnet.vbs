' ----------------------------------------------
' Script Recorded by ANSYS Electronics Desktop Version 2021.1.0
' 18:32:19  Apr 03, 2022
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
Set oDesign = oProject.SetActiveDesign("Maxwell2DDesign1")
Set oEditor = oDesign.SetActiveEditor("3D Modeler")

for i = 1 to 13
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers",  _
  "Polyline2_"+cstr(i)), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "m"+cstr(i+1)))))
next