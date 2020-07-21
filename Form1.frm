VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Capturar Lector de barras"
   ClientHeight    =   2550
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   2550
   ScaleWidth      =   4680
   StartUpPosition =   1  'CenterOwner
   Begin VB.ListBox List1 
      Height          =   1425
      Left            =   240
      TabIndex        =   1
      Top             =   840
      Width           =   4335
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   360
      Width           =   4335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'& lector de codigo de baaras con vb 6.0


Private Sub Form_Load()
Text1.Text = ""
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then
List1.AddItem Text1.Text
Text1.SetFocus
Text1.Text = ""
List1.ListIndex = _
List1.ListIndex + 1
End If


End Sub
