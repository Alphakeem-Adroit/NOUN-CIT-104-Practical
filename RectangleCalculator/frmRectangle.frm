VERSION 5.00
Begin VB.Form frmRectangle
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Rectangle Calculator"
   ClientHeight    =   5400
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6600
   MaxButton       =   0   'False
   StartUpPosition =   2  'CenterScreen
   BeginProperty Font
      Name            =   "Arial"
      Size            =   11.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Begin VB.Label lblTitle
      Caption         =   "RECTANGLE CALCULATOR"
      Left            =   360
      Top             =   240
      Width           =   5880
      Height          =   420
      TabIndex        =   0
   End
   Begin VB.Label lblInstructions
      Caption         =   "Enter length and breadth in the same unit."
      Left            =   360
      Top             =   780
      Width           =   5880
      Height          =   360
      TabIndex        =   1
   End
   Begin VB.Label lblLength
      Caption         =   "Length:"
      Left            =   360
      Top             =   1440
      Width           =   2400
      Height          =   360
      TabIndex        =   2
   End
   Begin VB.TextBox Text1
      Text            =   ""
      Left            =   3000
      Top             =   1380
      Width           =   3000
      Height          =   420
      TabIndex        =   3
   End
   Begin VB.Label lblBreadth
      Caption         =   "Breadth:"
      Left            =   360
      Top             =   2100
      Width           =   2400
      Height          =   360
      TabIndex        =   4
   End
   Begin VB.TextBox Text2
      Text            =   ""
      Left            =   3000
      Top             =   2040
      Width           =   3000
      Height          =   420
      TabIndex        =   5
   End
   Begin VB.Label lblArea
      Caption         =   "Area (square units):"
      Left            =   360
      Top             =   2760
      Width           =   2400
      Height          =   360
      TabIndex        =   6
   End
   Begin VB.TextBox Text3
      Text            =   ""
      Left            =   3000
      Top             =   2700
      Width           =   3000
      Height          =   420
      TabIndex        =   7
      Locked          =   -1  'True
      TabStop         =   0   'False
   End
   Begin VB.Label lblPerimeter
      Caption         =   "Perimeter (units):"
      Left            =   360
      Top             =   3420
      Width           =   2400
      Height          =   360
      TabIndex        =   8
   End
   Begin VB.TextBox Text4
      Text            =   ""
      Left            =   3000
      Top             =   3360
      Width           =   3000
      Height          =   420
      TabIndex        =   9
      Locked          =   -1  'True
      TabStop         =   0   'False
   End
   Begin VB.CommandButton Command1
      Caption         =   "&Calculate"
      Left            =   360
      Top             =   4200
      Width           =   1800
      Height          =   540
      TabIndex        =   10
      Default         =   -1  'True
   End
   Begin VB.CommandButton Command2
      Caption         =   "C&lear"
      Left            =   2400
      Top             =   4200
      Width           =   1800
      Height          =   540
      TabIndex        =   11
   End
   Begin VB.CommandButton Command3
      Caption         =   "E&xit"
      Left            =   4440
      Top             =   4200
      Width           =   1560
      Height          =   540
      TabIndex        =   12
      Cancel          =   -1  'True
   End
End
Attribute VB_Name = "frmRectangle"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Dim rectLength As Double
    Dim breadth As Double
    Dim area As Double
    Dim perimeter As Double

    Text3.Text = ""
    Text4.Text = ""

    If Len(Trim$(Text1.Text)) = 0 Or Not IsNumeric(Text1.Text) Then
        MsgBox "Enter a valid numeric length.", vbExclamation, "Invalid length"
        Text1.SetFocus
        Exit Sub
    End If

    If Len(Trim$(Text2.Text)) = 0 Or Not IsNumeric(Text2.Text) Then
        MsgBox "Enter a valid numeric breadth.", vbExclamation, "Invalid breadth"
        Text2.SetFocus
        Exit Sub
    End If

    On Error GoTo CalculationError
    rectLength = CDbl(Text1.Text)
    breadth = CDbl(Text2.Text)

    If rectLength <= 0 Then
        MsgBox "Length must be greater than zero.", vbExclamation, "Invalid length"
        Text1.SetFocus
        Exit Sub
    End If

    If breadth <= 0 Then
        MsgBox "Breadth must be greater than zero.", vbExclamation, "Invalid breadth"
        Text2.SetFocus
        Exit Sub
    End If

    area = rectLength * breadth
    perimeter = 2 * (rectLength + breadth)

    Text3.Text = Format$(area, "#,##0.00")
    Text4.Text = Format$(perimeter, "#,##0.00")
    Exit Sub

CalculationError:
    Text3.Text = ""
    Text4.Text = ""
    MsgBox "The numbers are too large to calculate. Enter smaller values.", vbExclamation, "Calculation error"
End Sub

Private Sub Command2_Click()
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text1.SetFocus
End Sub

Private Sub Command3_Click()
    Unload Me
End Sub

Private Sub Text1_Change()
    Text3.Text = ""
    Text4.Text = ""
End Sub

Private Sub Text2_Change()
    Text3.Text = ""
    Text4.Text = ""
End Sub
