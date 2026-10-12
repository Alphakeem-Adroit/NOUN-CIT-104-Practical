QUESTION 2 - SIMPLE INTEREST CALCULATOR
Microsoft Visual Basic 6.0

Question: Write a program that calculates the simple interest on a loan
given the principal, rate, and time (years).
Formula: SI = (Principal * Rate * Time) / 100.

OPEN AND RUN
1. Open SimpleInterest.vbp in Microsoft Visual Basic 6.0.
2. Press F5 or choose Run > Start.
3. Enter principal, annual percentage rate, and time in years.
4. Click Calculate or press Enter.
5. You can also use the .exe file to run the application

Enter 10 for a 10 percent annual rate, not 0.10 or 10%.
Enter 0.5 years for six months. Decimal values are accepted.
The result is interest only, in the same currency as the principal.

Example: principal 100000, rate 10, time 2 -> interest 20,000.00.
Empty, nonnumeric and negative entries are rejected. Zero values are allowed.
Editing any input clears the previous result. Numeric parsing follows the
Windows regional settings.

CONTROLS
Text1: principal input.
Text2: annual percentage rate input.
Text3: time in years input.
Text4: locked simple interest result.
Command1: Calculate. Command2: Clear. Command3: Exit.

FORM DESIGN
Select frmSimpleInterest in Project Explorer and press Shift+F7 to view the
editable form. Press F7 to view its code. Form_Design.png is a layout reference
created from the control positions, not a screenshot from a running VB6 app.

FILES
SimpleInterest.vbp - project file to open.
frmSimpleInterest.frm - editable form layout and all calculation code.
Form_Design.png - visual form reference.

Uses built-in VB6 controls; no external OCX, FRX resources, or internet needed.
Project references, control names, event structure, sample arithmetic, and ZIP
integrity were checked. This environment cannot run the Windows VB6 IDE;
the project has not been compiled or executed in VB6 here.
