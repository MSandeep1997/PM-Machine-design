' ----------------------------------------------
' Script Recorded by ANSYS Electronics Desktop Version 2021.1.0
' 9:59:14  Apr 04, 2022
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
Set oDesign = oProject.SetActiveDesign("Magnetic_loading")
Set oModule = oDesign.GetModule("FieldsReporter")



for i = 2 to 14
oModule.CopyNamedExprToStack "abs_Br"
oModule.EnterLine "Polyline_Bm" + cstr(i)
oModule.CalcOp "Integrate"
oModule.AddNamedExpression "phi_m" + cstr(i), "Fields"
next