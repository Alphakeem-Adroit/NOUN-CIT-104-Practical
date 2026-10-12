QUESTION 4 - RECTANGLE CALCULATOR
Microsoft Visual Basic 6.0

Question: Calculate the area and perimeter of a rectangle given its
length and breadth.
Area = length * breadth.
Perimeter = 2 * (length + breadth).

OPEN AND RUN
1. Open RectangleCalculator.vbp in Microsoft Visual Basic 6.0.
2. Press F5 or choose Run > Start.
3. Enter positive length and breadth values in the same unit.
4. Click Calculate or press Enter.
5. Use .exe to run the built app.

Example: length 10, breadth 5 -> area 50.00, perimeter 30.00.
If the inputs are in metres, the area is in square metres and perimeter
is in metres. No unit conversion is performed.
Empty, nonnumeric, zero and negative entries are rejected. Decimal inputs
are accepted, and results are displayed to two decimal places.
Editing either input clears both results. Numeric parsing follows the
Windows regional settings.

CONTROLS
Text1: length input. Text2: breadth input.
Text3: locked area output. Text4: locked perimeter output.
Command1: Calculate. Command2: Clear. Command3: Exit.

FORM DESIGN
Select frmRectangle in Project Explorer and press Shift+F7 to view the
editable form. Press F7 to view the code. Form_Design.png is a layout
reference generated from control positions, not a running VB6 screenshot.

FILES
RectangleCalculator.vbp - open this project file.
frmRectangle.frm - editable form layout and code.
Form_Design.png - visual form reference.
README.txt - these instructions.

Only built-in VB6 controls are used; no external OCX or FRX files are needed.
Project references, form structure, sample arithmetic and ZIP integrity
were checked. This environment cannot run Windows VB6; the project has not
been compiled or executed in VB6 here.
