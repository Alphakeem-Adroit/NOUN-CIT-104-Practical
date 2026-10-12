QUESTION 3 - BODY MASS INDEX CALCULATOR
Microsoft Visual Basic 6.0

Question: Calculate BMI using weight (kg) and height (m), and display
Underweight, Normal, Overweight, or Obese.
Formula: BMI = weightKg / (heightMetres * heightMetres).

OPEN AND RUN
1. Open BMICalculator.vbp in Microsoft Visual Basic 6.0.
2. Press F5 or choose Run > Start.
3. Enter weight in kilograms and height in metres. Click Calculate.
4. You may use the .exe file to run the app.

Example: weight 70, height 1.75 -> BMI 22.86, category Normal.
Enter 1.75 for 175 cm; the program expects metres.

CATEGORY RULES
BMI < 18.5: Underweight.
18.5 <= BMI < 25: Normal (healthy weight).
25 <= BMI < 30: Overweight.
BMI >= 30: Obese.

These are standard adult thresholds (age 20+), not child/teen percentiles.
Reference: CDC Adult BMI Categories
https://www.cdc.gov/bmi/adult-calculator/bmi-categories.html

The category uses the full-precision value, not the rounded display.
For example, a BMI of 24.999 can display 25.00 while remaining Normal.
Empty, nonnumeric, zero and negative inputs are rejected. Decimal values
are accepted. Changing either input clears both results. Numeric parsing
follows Windows regional settings.

CONTROLS
Text1: weight input (kg). Text2: height input (m).
Text3: locked BMI output. Text4: locked category output.
Command1: Calculate. Command2: Clear. Command3: Exit.

FORM DESIGN
Select frmBMI in Project Explorer and press Shift+F7 for the editable form.
Press F7 for code. Form_Design.png is a layout reference generated from the
control positions, not a screenshot from a running VB6 application.

FILES
BMICalculator.vbp - open this project file.
frmBMI.frm - editable form and code.
Form_Design.png - form layout image.
README.txt - instructions.

Only built-in VB6 controls are used; no external OCX or FRX files are needed.
Form structure, project references, category boundaries, sample arithmetic
and ZIP integrity were checked. This environment cannot run Windows VB6;
the project has not been compiled or executed in VB6 here.
