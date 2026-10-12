VERSION 5.00
Begin VB.Form frmConverter
   BorderStyle     =   1  'Fixed Single
   Caption         =   "USD to NGN Converter"
   ClientHeight    =   4560
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
      Caption         =   "USD TO NGN CONVERTER"
      Left            =   360
      Top             =   240
      Width           =   5880
      Height          =   420
      TabIndex        =   0
   End
   Begin VB.Label lblInstructions
      Caption         =   "Enter an amount and the NGN value of 1 USD."
      Left            =   360
      Top             =   780
      Width           =   5880
      Height          =   360
      TabIndex        =   1
   End
   Begin VB.Label lblAmount
      Caption         =   "Amount in USD:"
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
   Begin VB.Label lblRate
      Caption         =   "Rate (NGN per USD):"
      Left            =   360
      Top             =   2100
      Width           =   2640
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
   Begin VB.Label lblResult
      Caption         =   "Result in NGN:"
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
   Begin VB.CommandButton Command1
      Caption         =   "&Calculate"
      Left            =   360
      Top             =   3480
      Width           =   1800
      Height          =   540
      TabIndex        =   8
      Default         =   -1  'True
   End
   Begin VB.CommandButton Command2
      Caption         =   "C&lear"
      Left            =   2400
      Top             =   3480
      Width           =   1800
      Height          =   540
      TabIndex        =   9
   End
   Begin VB.CommandButton Command3
      Caption         =   "E&xit"
      Left            =   4440
      Top             =   3480
      Width           =   1560
      Height          =   540
      TabIndex        =   10
      Cancel          =   -1  'True
   End
End
Attribute VB_Name = "frmConverter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Dim amount As Double
    Dim exchangeRate As Double
    Dim result As Double

    Text3.Text = ""

    If Len(Trim$(Text1.Text)) = 0 Or Not IsNumeric(Text1.Text) Then
        MsgBox "Enter a valid numeric amount in USD.", vbExclamation, "Invalid amount"
        Text1.SetFocus
        Exit Sub
    End If

    If Len(Trim$(Text2.Text)) = 0 Or Not IsNumeric(Text2.Text) Then
        MsgBox "Enter a valid numeric exchange rate (NGN per USD).", vbExclamation, "Invalid exchange rate"
        Text2.SetFocus
        Exit Sub
    End If

    On Error GoTo CalculationError
    amount = CDbl(Text1.Text)
    exchangeRate = CDbl(Text2.Text)

    If amount < 0 Then
        MsgBox "The USD amount cannot be negative.", vbExclamation, "Invalid amount"
        Text1.SetFocus
        Exit Sub
    End If

    If exchangeRate <= 0 Then
        MsgBox "The exchange rate must be greater than zero.", vbExclamation, "Invalid exchange rate"
        Text2.SetFocus
        Exit Sub
    End If

    'Nigerian Naira = US Dollars multiplied by NGN per USD.
    result = amount * exchangeRate
    Text3.Text = Format$(result, "#,##0.00")
    Exit Sub

CalculationError:
    MsgBox "The numbers are too large to calculate. Enter smaller values.", vbExclamation, "Calculation error"
End Sub

Private Sub Command2_Click()
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text1.SetFocus
End Sub

Private Sub Command3_Click()
    Unload Me
End Sub

Private Sub Text1_Change()
    Text3.Text = ""
End Sub

Private Sub Text2_Change()
    Text3.Text = ""
End Sub
