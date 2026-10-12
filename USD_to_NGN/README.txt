QUESTION 1 - USD TO NGN CONVERTER
Microsoft Visual Basic 6.0

Question:
Write a program that converts an amount in US Dollars (USD) to Nigerian
Naira (NGN), given the current exchange rate entered by the user.

HOW TO OPEN AND RUN
1. Extract the ZIP using Extract All. Do not open the project inside the ZIP.
2. Open USDToNGN.vbp in Microsoft Visual Basic 6.0.
3. Press F5 or select Run > Start.
4. Enter the amount in USD and the exchange rate in NGN per 1 USD.
5. Click Calculate (or press Enter).

Example (illustrative rate, not a live rate):
Amount: 10
Exchange rate: 1500
Result: 15,000.00 NGN

Formula: NGN = USD amount * NGN per USD exchange rate.

CONTROLS
Text1: USD amount input.
Text2: User-entered exchange rate input.
Text3: Read-only NGN result, displayed to two decimal places.
Command1: Calculate.
Command2: Clear all fields.
Command3: Exit (also accessible with Escape).

Empty and nonnumeric inputs are rejected. Negative amounts and zero or
negative exchange rates are rejected. Zero USD is allowed. Editing either
input clears the old result. Numeric parsing follows Windows regional settings.

FILES
USDToNGN.vbp - VB6 project; open this file.
frmConverter.frm - complete form layout and event code.
README.txt - these instructions.
Form_Design.png - visual reference for the supplied editable form.

TO VIEW THE EDITABLE FORM
In VB6, select frmConverter in Project Explorer and press Shift+F7
(or select View > Object). Press F7 to view the code.
The PNG is a layout reference generated from the form positions, not a
screenshot captured from a running VB6 application.

Only built-in VB6 controls are used; no third-party OCX controls, images,
FRX resources, internet connection, or API keys are needed.

Validation: project references, form structure, control names, event handlers,
and ZIP integrity were checked. This environment cannot run the Windows VB6
IDE, so the project has not been compiled or executed in VB6 here.
