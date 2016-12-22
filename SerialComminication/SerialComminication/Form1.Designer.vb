<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.btnInit = New System.Windows.Forms.Button()
        Me.btnClose = New System.Windows.Forms.Button()
        Me.btnWrite = New System.Windows.Forms.Button()
        Me.txtOutput = New System.Windows.Forms.RichTextBox()
        Me.lblOutput = New System.Windows.Forms.Label()
        Me.cbxCOM = New System.Windows.Forms.ComboBox()
        Me.cbxSpeed = New System.Windows.Forms.ComboBox()
        Me.lblCOM = New System.Windows.Forms.Label()
        Me.lblSpeed = New System.Windows.Forms.Label()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtNumIn = New System.Windows.Forms.TextBox()
        Me.op0 = New System.Windows.Forms.RadioButton()
        Me.op1 = New System.Windows.Forms.RadioButton()
        Me.op2 = New System.Windows.Forms.RadioButton()
        Me.op3 = New System.Windows.Forms.RadioButton()
        Me.op4 = New System.Windows.Forms.RadioButton()
        Me.op5 = New System.Windows.Forms.RadioButton()
        Me.op6 = New System.Windows.Forms.RadioButton()
        Me.op7 = New System.Windows.Forms.RadioButton()
        Me.op8 = New System.Windows.Forms.RadioButton()
        Me.op9 = New System.Windows.Forms.RadioButton()
        Me.op10 = New System.Windows.Forms.RadioButton()
        Me.op12 = New System.Windows.Forms.RadioButton()
        Me.op13 = New System.Windows.Forms.RadioButton()
        Me.op14 = New System.Windows.Forms.RadioButton()
        Me.op15 = New System.Windows.Forms.RadioButton()
        Me.op16 = New System.Windows.Forms.RadioButton()
        Me.op17 = New System.Windows.Forms.RadioButton()
        Me.op18 = New System.Windows.Forms.RadioButton()
        Me.op19 = New System.Windows.Forms.RadioButton()
        Me.op20 = New System.Windows.Forms.RadioButton()
        Me.op21 = New System.Windows.Forms.RadioButton()
        Me.op22 = New System.Windows.Forms.RadioButton()
        Me.op23 = New System.Windows.Forms.RadioButton()
        Me.op24 = New System.Windows.Forms.RadioButton()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.op11 = New System.Windows.Forms.RadioButton()
        Me.op25 = New System.Windows.Forms.RadioButton()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.rx3 = New System.Windows.Forms.RadioButton()
        Me.rx2 = New System.Windows.Forms.RadioButton()
        Me.rx1 = New System.Windows.Forms.RadioButton()
        Me.rx0 = New System.Windows.Forms.RadioButton()
        Me.Panel3 = New System.Windows.Forms.Panel()
        Me.ry3 = New System.Windows.Forms.RadioButton()
        Me.ry2 = New System.Windows.Forms.RadioButton()
        Me.ry1 = New System.Windows.Forms.RadioButton()
        Me.ry0 = New System.Windows.Forms.RadioButton()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.txtBE = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.op26 = New System.Windows.Forms.RadioButton()
        Me.Panel1.SuspendLayout()
        Me.Panel2.SuspendLayout()
        Me.Panel3.SuspendLayout()
        Me.SuspendLayout()
        '
        'btnInit
        '
        Me.btnInit.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnInit.Location = New System.Drawing.Point(308, 41)
        Me.btnInit.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.btnInit.Name = "btnInit"
        Me.btnInit.Size = New System.Drawing.Size(92, 41)
        Me.btnInit.TabIndex = 3
        Me.btnInit.Text = "Initialize"
        Me.btnInit.UseVisualStyleBackColor = True
        '
        'btnClose
        '
        Me.btnClose.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnClose.Location = New System.Drawing.Point(653, 41)
        Me.btnClose.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(92, 43)
        Me.btnClose.TabIndex = 40
        Me.btnClose.Text = "Close"
        Me.btnClose.UseVisualStyleBackColor = True
        '
        'btnWrite
        '
        Me.btnWrite.Font = New System.Drawing.Font("Bookman Old Style", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnWrite.Location = New System.Drawing.Point(270, 522)
        Me.btnWrite.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.btnWrite.Name = "btnWrite"
        Me.btnWrite.Size = New System.Drawing.Size(122, 57)
        Me.btnWrite.TabIndex = 39
        Me.btnWrite.Text = "Write"
        Me.btnWrite.UseVisualStyleBackColor = True
        '
        'txtOutput
        '
        Me.txtOutput.BackColor = System.Drawing.Color.White
        Me.txtOutput.Font = New System.Drawing.Font("Bookman Old Style", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtOutput.Location = New System.Drawing.Point(457, 394)
        Me.txtOutput.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.txtOutput.Name = "txtOutput"
        Me.txtOutput.ReadOnly = True
        Me.txtOutput.ScrollBars = System.Windows.Forms.RichTextBoxScrollBars.Vertical
        Me.txtOutput.Size = New System.Drawing.Size(302, 170)
        Me.txtOutput.TabIndex = 4
        Me.txtOutput.Text = ""
        '
        'lblOutput
        '
        Me.lblOutput.AutoSize = True
        Me.lblOutput.Font = New System.Drawing.Font("Bookman Old Style", 15.75!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblOutput.Location = New System.Drawing.Point(559, 361)
        Me.lblOutput.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblOutput.Name = "lblOutput"
        Me.lblOutput.Size = New System.Drawing.Size(80, 24)
        Me.lblOutput.TabIndex = 6
        Me.lblOutput.Text = "Result"
        '
        'cbxCOM
        '
        Me.cbxCOM.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbxCOM.Font = New System.Drawing.Font("MS UI Gothic", 12.0!)
        Me.cbxCOM.FormattingEnabled = True
        Me.cbxCOM.Location = New System.Drawing.Point(12, 56)
        Me.cbxCOM.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.cbxCOM.Name = "cbxCOM"
        Me.cbxCOM.Size = New System.Drawing.Size(120, 24)
        Me.cbxCOM.TabIndex = 1
        '
        'cbxSpeed
        '
        Me.cbxSpeed.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbxSpeed.Font = New System.Drawing.Font("MS UI Gothic", 12.0!)
        Me.cbxSpeed.FormattingEnabled = True
        Me.cbxSpeed.Items.AddRange(New Object() {"9600"})
        Me.cbxSpeed.Location = New System.Drawing.Point(157, 56)
        Me.cbxSpeed.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.cbxSpeed.Name = "cbxSpeed"
        Me.cbxSpeed.Size = New System.Drawing.Size(120, 24)
        Me.cbxSpeed.TabIndex = 2
        '
        'lblCOM
        '
        Me.lblCOM.AutoSize = True
        Me.lblCOM.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblCOM.Location = New System.Drawing.Point(12, 37)
        Me.lblCOM.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblCOM.Name = "lblCOM"
        Me.lblCOM.Size = New System.Drawing.Size(80, 18)
        Me.lblCOM.TabIndex = 9
        Me.lblCOM.Text = "COM Port"
        '
        'lblSpeed
        '
        Me.lblSpeed.AutoSize = True
        Me.lblSpeed.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblSpeed.Location = New System.Drawing.Point(158, 37)
        Me.lblSpeed.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblSpeed.Name = "lblSpeed"
        Me.lblSpeed.Size = New System.Drawing.Size(56, 18)
        Me.lblSpeed.TabIndex = 10
        Me.lblSpeed.Text = "Speed"
        '
        'SerialPort1
        '
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(12, 13)
        Me.Label1.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(239, 18)
        Me.Label1.TabIndex = 11
        Me.Label1.Text = "1. Select COM port and Speed"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(13, 349)
        Me.Label2.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(147, 18)
        Me.Label2.TabIndex = 12
        Me.Label2.Text = "3. Select Registers"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(13, 101)
        Me.Label3.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(154, 18)
        Me.Label3.TabIndex = 17
        Me.Label3.Text = "2. Select Operation"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(13, 504)
        Me.Label4.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(170, 18)
        Me.Label4.TabIndex = 50
        Me.Label4.Text = "4. Type 7 bit number"
        '
        'txtNumIn
        '
        Me.txtNumIn.Font = New System.Drawing.Font("Bookman Old Style", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtNumIn.Location = New System.Drawing.Point(77, 536)
        Me.txtNumIn.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.txtNumIn.MaxLength = 7
        Me.txtNumIn.Name = "txtNumIn"
        Me.txtNumIn.Size = New System.Drawing.Size(124, 32)
        Me.txtNumIn.TabIndex = 38
        '
        'op0
        '
        Me.op0.Appearance = System.Windows.Forms.Appearance.Button
        Me.op0.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op0.Location = New System.Drawing.Point(7, 9)
        Me.op0.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op0.Name = "op0"
        Me.op0.Size = New System.Drawing.Size(90, 46)
        Me.op0.TabIndex = 4
        Me.op0.TabStop = True
        Me.op0.Text = "Load, IN"
        Me.op0.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op0.UseVisualStyleBackColor = True
        '
        'op1
        '
        Me.op1.Appearance = System.Windows.Forms.Appearance.Button
        Me.op1.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op1.Location = New System.Drawing.Point(103, 9)
        Me.op1.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op1.Name = "op1"
        Me.op1.Size = New System.Drawing.Size(90, 46)
        Me.op1.TabIndex = 5
        Me.op1.TabStop = True
        Me.op1.Text = "Load Rx, IN"
        Me.op1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op1.UseVisualStyleBackColor = True
        '
        'op2
        '
        Me.op2.Appearance = System.Windows.Forms.Appearance.Button
        Me.op2.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op2.Location = New System.Drawing.Point(199, 9)
        Me.op2.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op2.Name = "op2"
        Me.op2.Size = New System.Drawing.Size(90, 46)
        Me.op2.TabIndex = 6
        Me.op2.TabStop = True
        Me.op2.Text = "Load OUT"
        Me.op2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op2.UseVisualStyleBackColor = True
        '
        'op3
        '
        Me.op3.Appearance = System.Windows.Forms.Appearance.Button
        Me.op3.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op3.Location = New System.Drawing.Point(295, 10)
        Me.op3.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op3.Name = "op3"
        Me.op3.Size = New System.Drawing.Size(90, 46)
        Me.op3.TabIndex = 7
        Me.op3.TabStop = True
        Me.op3.Text = "Copy"
        Me.op3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op3.UseVisualStyleBackColor = True
        '
        'op4
        '
        Me.op4.Appearance = System.Windows.Forms.Appearance.Button
        Me.op4.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op4.Location = New System.Drawing.Point(391, 10)
        Me.op4.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op4.Name = "op4"
        Me.op4.Size = New System.Drawing.Size(90, 46)
        Me.op4.TabIndex = 8
        Me.op4.TabStop = True
        Me.op4.Text = "Add"
        Me.op4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op4.UseVisualStyleBackColor = True
        '
        'op5
        '
        Me.op5.Appearance = System.Windows.Forms.Appearance.Button
        Me.op5.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op5.Location = New System.Drawing.Point(486, 10)
        Me.op5.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op5.Name = "op5"
        Me.op5.Size = New System.Drawing.Size(90, 46)
        Me.op5.TabIndex = 9
        Me.op5.TabStop = True
        Me.op5.Text = "Increment"
        Me.op5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op5.UseVisualStyleBackColor = True
        '
        'op6
        '
        Me.op6.Appearance = System.Windows.Forms.Appearance.Button
        Me.op6.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op6.Location = New System.Drawing.Point(582, 10)
        Me.op6.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op6.Name = "op6"
        Me.op6.Size = New System.Drawing.Size(90, 46)
        Me.op6.TabIndex = 10
        Me.op6.TabStop = True
        Me.op6.Text = "Subtract"
        Me.op6.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op6.UseVisualStyleBackColor = True
        '
        'op7
        '
        Me.op7.Appearance = System.Windows.Forms.Appearance.Button
        Me.op7.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op7.Location = New System.Drawing.Point(7, 62)
        Me.op7.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op7.Name = "op7"
        Me.op7.Size = New System.Drawing.Size(90, 46)
        Me.op7.TabIndex = 11
        Me.op7.TabStop = True
        Me.op7.Text = "Decrement"
        Me.op7.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op7.UseVisualStyleBackColor = True
        '
        'op8
        '
        Me.op8.Appearance = System.Windows.Forms.Appearance.Button
        Me.op8.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op8.Location = New System.Drawing.Point(103, 62)
        Me.op8.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op8.Name = "op8"
        Me.op8.Size = New System.Drawing.Size(90, 46)
        Me.op8.TabIndex = 12
        Me.op8.TabStop = True
        Me.op8.Text = "| Subtract |"
        Me.op8.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op8.UseVisualStyleBackColor = True
        '
        'op9
        '
        Me.op9.Appearance = System.Windows.Forms.Appearance.Button
        Me.op9.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op9.Location = New System.Drawing.Point(199, 62)
        Me.op9.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op9.Name = "op9"
        Me.op9.Size = New System.Drawing.Size(90, 46)
        Me.op9.TabIndex = 13
        Me.op9.TabStop = True
        Me.op9.Text = "Multiply"
        Me.op9.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op9.UseVisualStyleBackColor = True
        '
        'op10
        '
        Me.op10.Appearance = System.Windows.Forms.Appearance.Button
        Me.op10.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op10.Location = New System.Drawing.Point(294, 62)
        Me.op10.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op10.Name = "op10"
        Me.op10.Size = New System.Drawing.Size(90, 46)
        Me.op10.TabIndex = 14
        Me.op10.TabStop = True
        Me.op10.Text = "Divide"
        Me.op10.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op10.UseVisualStyleBackColor = True
        '
        'op12
        '
        Me.op12.Appearance = System.Windows.Forms.Appearance.Button
        Me.op12.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op12.Location = New System.Drawing.Point(487, 62)
        Me.op12.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op12.Name = "op12"
        Me.op12.Size = New System.Drawing.Size(90, 46)
        Me.op12.TabIndex = 16
        Me.op12.TabStop = True
        Me.op12.Text = "Right Shift"
        Me.op12.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op12.UseVisualStyleBackColor = True
        '
        'op13
        '
        Me.op13.Appearance = System.Windows.Forms.Appearance.Button
        Me.op13.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op13.Location = New System.Drawing.Point(582, 62)
        Me.op13.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op13.Name = "op13"
        Me.op13.Size = New System.Drawing.Size(90, 46)
        Me.op13.TabIndex = 17
        Me.op13.TabStop = True
        Me.op13.Text = "Left Shift"
        Me.op13.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op13.UseVisualStyleBackColor = True
        '
        'op14
        '
        Me.op14.Appearance = System.Windows.Forms.Appearance.Button
        Me.op14.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op14.Location = New System.Drawing.Point(7, 115)
        Me.op14.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op14.Name = "op14"
        Me.op14.Size = New System.Drawing.Size(90, 46)
        Me.op14.TabIndex = 18
        Me.op14.TabStop = True
        Me.op14.Text = "AND"
        Me.op14.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op14.UseVisualStyleBackColor = True
        '
        'op15
        '
        Me.op15.Appearance = System.Windows.Forms.Appearance.Button
        Me.op15.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op15.Location = New System.Drawing.Point(103, 115)
        Me.op15.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op15.Name = "op15"
        Me.op15.Size = New System.Drawing.Size(90, 46)
        Me.op15.TabIndex = 19
        Me.op15.TabStop = True
        Me.op15.Text = "OR"
        Me.op15.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op15.UseVisualStyleBackColor = True
        '
        'op16
        '
        Me.op16.Appearance = System.Windows.Forms.Appearance.Button
        Me.op16.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op16.Location = New System.Drawing.Point(199, 115)
        Me.op16.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op16.Name = "op16"
        Me.op16.Size = New System.Drawing.Size(90, 46)
        Me.op16.TabIndex = 20
        Me.op16.TabStop = True
        Me.op16.Text = "NAND"
        Me.op16.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op16.UseVisualStyleBackColor = True
        '
        'op17
        '
        Me.op17.Appearance = System.Windows.Forms.Appearance.Button
        Me.op17.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op17.Location = New System.Drawing.Point(295, 115)
        Me.op17.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op17.Name = "op17"
        Me.op17.Size = New System.Drawing.Size(90, 46)
        Me.op17.TabIndex = 21
        Me.op17.TabStop = True
        Me.op17.Text = "NOR"
        Me.op17.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op17.UseVisualStyleBackColor = True
        '
        'op18
        '
        Me.op18.Appearance = System.Windows.Forms.Appearance.Button
        Me.op18.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op18.Location = New System.Drawing.Point(390, 114)
        Me.op18.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op18.Name = "op18"
        Me.op18.Size = New System.Drawing.Size(90, 46)
        Me.op18.TabIndex = 22
        Me.op18.TabStop = True
        Me.op18.Text = "XOR"
        Me.op18.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op18.UseVisualStyleBackColor = True
        '
        'op19
        '
        Me.op19.Appearance = System.Windows.Forms.Appearance.Button
        Me.op19.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op19.Location = New System.Drawing.Point(486, 115)
        Me.op19.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op19.Name = "op19"
        Me.op19.Size = New System.Drawing.Size(90, 46)
        Me.op19.TabIndex = 23
        Me.op19.TabStop = True
        Me.op19.Text = "XNOR"
        Me.op19.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op19.UseVisualStyleBackColor = True
        '
        'op20
        '
        Me.op20.Appearance = System.Windows.Forms.Appearance.Button
        Me.op20.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op20.Location = New System.Drawing.Point(7, 167)
        Me.op20.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op20.Name = "op20"
        Me.op20.Size = New System.Drawing.Size(90, 46)
        Me.op20.TabIndex = 24
        Me.op20.TabStop = True
        Me.op20.Text = "Greater than"
        Me.op20.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op20.UseVisualStyleBackColor = True
        '
        'op21
        '
        Me.op21.Appearance = System.Windows.Forms.Appearance.Button
        Me.op21.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op21.Location = New System.Drawing.Point(103, 167)
        Me.op21.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op21.Name = "op21"
        Me.op21.Size = New System.Drawing.Size(90, 46)
        Me.op21.TabIndex = 25
        Me.op21.TabStop = True
        Me.op21.Text = "Less than"
        Me.op21.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op21.UseVisualStyleBackColor = True
        '
        'op22
        '
        Me.op22.Appearance = System.Windows.Forms.Appearance.Button
        Me.op22.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op22.Location = New System.Drawing.Point(199, 167)
        Me.op22.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op22.Name = "op22"
        Me.op22.Size = New System.Drawing.Size(90, 46)
        Me.op22.TabIndex = 26
        Me.op22.TabStop = True
        Me.op22.Text = "Equal to"
        Me.op22.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op22.UseVisualStyleBackColor = True
        '
        'op23
        '
        Me.op23.Appearance = System.Windows.Forms.Appearance.Button
        Me.op23.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op23.Location = New System.Drawing.Point(294, 167)
        Me.op23.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op23.Name = "op23"
        Me.op23.Size = New System.Drawing.Size(90, 46)
        Me.op23.TabIndex = 27
        Me.op23.TabStop = True
        Me.op23.Text = "Bin => Gray"
        Me.op23.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op23.UseVisualStyleBackColor = True
        '
        'op24
        '
        Me.op24.Appearance = System.Windows.Forms.Appearance.Button
        Me.op24.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op24.Location = New System.Drawing.Point(391, 167)
        Me.op24.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op24.Name = "op24"
        Me.op24.Size = New System.Drawing.Size(90, 46)
        Me.op24.TabIndex = 28
        Me.op24.TabStop = True
        Me.op24.Text = "Gray => Bin"
        Me.op24.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op24.UseVisualStyleBackColor = True
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.op26)
        Me.Panel1.Controls.Add(Me.op11)
        Me.Panel1.Controls.Add(Me.op20)
        Me.Panel1.Controls.Add(Me.op10)
        Me.Panel1.Controls.Add(Me.op12)
        Me.Panel1.Controls.Add(Me.op25)
        Me.Panel1.Controls.Add(Me.op13)
        Me.Panel1.Controls.Add(Me.op24)
        Me.Panel1.Controls.Add(Me.op0)
        Me.Panel1.Controls.Add(Me.op23)
        Me.Panel1.Controls.Add(Me.op1)
        Me.Panel1.Controls.Add(Me.op22)
        Me.Panel1.Controls.Add(Me.op2)
        Me.Panel1.Controls.Add(Me.op21)
        Me.Panel1.Controls.Add(Me.op3)
        Me.Panel1.Controls.Add(Me.op19)
        Me.Panel1.Controls.Add(Me.op4)
        Me.Panel1.Controls.Add(Me.op18)
        Me.Panel1.Controls.Add(Me.op5)
        Me.Panel1.Controls.Add(Me.op17)
        Me.Panel1.Controls.Add(Me.op6)
        Me.Panel1.Controls.Add(Me.op16)
        Me.Panel1.Controls.Add(Me.op7)
        Me.Panel1.Controls.Add(Me.op15)
        Me.Panel1.Controls.Add(Me.op8)
        Me.Panel1.Controls.Add(Me.op14)
        Me.Panel1.Controls.Add(Me.op9)
        Me.Panel1.Location = New System.Drawing.Point(16, 120)
        Me.Panel1.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(702, 236)
        Me.Panel1.TabIndex = 78
        '
        'op11
        '
        Me.op11.Appearance = System.Windows.Forms.Appearance.Button
        Me.op11.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op11.Location = New System.Drawing.Point(391, 62)
        Me.op11.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op11.Name = "op11"
        Me.op11.Size = New System.Drawing.Size(90, 46)
        Me.op11.TabIndex = 15
        Me.op11.TabStop = True
        Me.op11.Text = "Module"
        Me.op11.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op11.UseVisualStyleBackColor = True
        '
        'op25
        '
        Me.op25.Appearance = System.Windows.Forms.Appearance.Button
        Me.op25.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op25.Location = New System.Drawing.Point(486, 167)
        Me.op25.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op25.Name = "op25"
        Me.op25.Size = New System.Drawing.Size(90, 46)
        Me.op25.TabIndex = 29
        Me.op25.TabStop = True
        Me.op25.Tag = "O"
        Me.op25.Text = "Delete"
        Me.op25.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op25.UseVisualStyleBackColor = True
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(89, -3)
        Me.Label5.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(28, 18)
        Me.Label5.TabIndex = 79
        Me.Label5.Text = "Rx"
        '
        'Panel2
        '
        Me.Panel2.Controls.Add(Me.Label6)
        Me.Panel2.Controls.Add(Me.rx3)
        Me.Panel2.Controls.Add(Me.rx2)
        Me.Panel2.Controls.Add(Me.rx1)
        Me.Panel2.Controls.Add(Me.rx0)
        Me.Panel2.Location = New System.Drawing.Point(8, 377)
        Me.Panel2.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(218, 130)
        Me.Panel2.TabIndex = 79
        '
        'rx3
        '
        Me.rx3.Appearance = System.Windows.Forms.Appearance.Button
        Me.rx3.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rx3.Location = New System.Drawing.Point(110, 68)
        Me.rx3.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.rx3.Name = "rx3"
        Me.rx3.Size = New System.Drawing.Size(90, 46)
        Me.rx3.TabIndex = 33
        Me.rx3.TabStop = True
        Me.rx3.Text = "R3"
        Me.rx3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rx3.UseVisualStyleBackColor = True
        '
        'rx2
        '
        Me.rx2.Appearance = System.Windows.Forms.Appearance.Button
        Me.rx2.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rx2.Location = New System.Drawing.Point(7, 68)
        Me.rx2.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.rx2.Name = "rx2"
        Me.rx2.Size = New System.Drawing.Size(90, 46)
        Me.rx2.TabIndex = 32
        Me.rx2.TabStop = True
        Me.rx2.Text = "R2"
        Me.rx2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rx2.UseVisualStyleBackColor = True
        '
        'rx1
        '
        Me.rx1.Appearance = System.Windows.Forms.Appearance.Button
        Me.rx1.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rx1.Location = New System.Drawing.Point(110, 16)
        Me.rx1.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.rx1.Name = "rx1"
        Me.rx1.Size = New System.Drawing.Size(90, 46)
        Me.rx1.TabIndex = 31
        Me.rx1.TabStop = True
        Me.rx1.Text = "R1"
        Me.rx1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rx1.UseVisualStyleBackColor = True
        '
        'rx0
        '
        Me.rx0.Appearance = System.Windows.Forms.Appearance.Button
        Me.rx0.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rx0.Location = New System.Drawing.Point(7, 16)
        Me.rx0.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.rx0.Name = "rx0"
        Me.rx0.Size = New System.Drawing.Size(90, 46)
        Me.rx0.TabIndex = 30
        Me.rx0.TabStop = True
        Me.rx0.Text = "R0"
        Me.rx0.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rx0.UseVisualStyleBackColor = True
        '
        'Panel3
        '
        Me.Panel3.Controls.Add(Me.ry3)
        Me.Panel3.Controls.Add(Me.ry2)
        Me.Panel3.Controls.Add(Me.Label5)
        Me.Panel3.Controls.Add(Me.ry1)
        Me.Panel3.Controls.Add(Me.ry0)
        Me.Panel3.Location = New System.Drawing.Point(233, 378)
        Me.Panel3.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.Panel3.Name = "Panel3"
        Me.Panel3.Size = New System.Drawing.Size(218, 130)
        Me.Panel3.TabIndex = 85
        '
        'ry3
        '
        Me.ry3.Appearance = System.Windows.Forms.Appearance.Button
        Me.ry3.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ry3.Location = New System.Drawing.Point(110, 68)
        Me.ry3.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.ry3.Name = "ry3"
        Me.ry3.Size = New System.Drawing.Size(90, 46)
        Me.ry3.TabIndex = 37
        Me.ry3.TabStop = True
        Me.ry3.Text = "R3"
        Me.ry3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.ry3.UseVisualStyleBackColor = True
        '
        'ry2
        '
        Me.ry2.Appearance = System.Windows.Forms.Appearance.Button
        Me.ry2.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ry2.Location = New System.Drawing.Point(7, 68)
        Me.ry2.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.ry2.Name = "ry2"
        Me.ry2.Size = New System.Drawing.Size(90, 46)
        Me.ry2.TabIndex = 36
        Me.ry2.TabStop = True
        Me.ry2.Text = "R2"
        Me.ry2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.ry2.UseVisualStyleBackColor = True
        '
        'ry1
        '
        Me.ry1.Appearance = System.Windows.Forms.Appearance.Button
        Me.ry1.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ry1.Location = New System.Drawing.Point(110, 16)
        Me.ry1.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.ry1.Name = "ry1"
        Me.ry1.Size = New System.Drawing.Size(90, 46)
        Me.ry1.TabIndex = 35
        Me.ry1.TabStop = True
        Me.ry1.Text = "R1"
        Me.ry1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.ry1.UseVisualStyleBackColor = True
        '
        'ry0
        '
        Me.ry0.Appearance = System.Windows.Forms.Appearance.Button
        Me.ry0.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ry0.Location = New System.Drawing.Point(7, 16)
        Me.ry0.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.ry0.Name = "ry0"
        Me.ry0.Size = New System.Drawing.Size(90, 46)
        Me.ry0.TabIndex = 34
        Me.ry0.TabStop = True
        Me.ry0.Text = "R0"
        Me.ry0.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.ry0.UseVisualStyleBackColor = True
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(90, -2)
        Me.Label6.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(29, 18)
        Me.Label6.TabIndex = 86
        Me.Label6.Text = "Ry"
        '
        'txtBE
        '
        Me.txtBE.Location = New System.Drawing.Point(425, 53)
        Me.txtBE.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.txtBE.Name = "txtBE"
        Me.txtBE.Size = New System.Drawing.Size(197, 20)
        Me.txtBE.TabIndex = 87
        Me.txtBE.Visible = False
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Bookman Old Style", 12.0!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(469, 24)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(134, 72)
        Me.Label7.TabIndex = 88
        Me.Label7.Text = "Kazumi Malhan" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "Chris Petros" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "Justen Beffa" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "Marc Nahed"
        '
        'op26
        '
        Me.op26.Appearance = System.Windows.Forms.Appearance.Button
        Me.op26.Font = New System.Drawing.Font("Bookman Old Style", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.op26.Location = New System.Drawing.Point(582, 115)
        Me.op26.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.op26.Name = "op26"
        Me.op26.Size = New System.Drawing.Size(90, 46)
        Me.op26.TabIndex = 30
        Me.op26.TabStop = True
        Me.op26.Text = "NOT"
        Me.op26.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.op26.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.InactiveCaption
        Me.ClientSize = New System.Drawing.Size(784, 592)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.txtBE)
        Me.Controls.Add(Me.Panel3)
        Me.Controls.Add(Me.txtNumIn)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.lblSpeed)
        Me.Controls.Add(Me.lblCOM)
        Me.Controls.Add(Me.cbxSpeed)
        Me.Controls.Add(Me.cbxCOM)
        Me.Controls.Add(Me.lblOutput)
        Me.Controls.Add(Me.txtOutput)
        Me.Controls.Add(Me.btnWrite)
        Me.Controls.Add(Me.btnClose)
        Me.Controls.Add(Me.btnInit)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.Panel2)
        Me.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.MaximizeBox = False
        Me.MaximumSize = New System.Drawing.Size(800, 630)
        Me.MinimumSize = New System.Drawing.Size(800, 630)
        Me.Name = "Form1"
        Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
        Me.Text = "Microprocessor Interface ECE378 Project"
        Me.Panel1.ResumeLayout(False)
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        Me.Panel3.ResumeLayout(False)
        Me.Panel3.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents btnInit As System.Windows.Forms.Button
    Friend WithEvents btnClose As System.Windows.Forms.Button
    Friend WithEvents btnWrite As System.Windows.Forms.Button
    Friend WithEvents txtOutput As System.Windows.Forms.RichTextBox
    Friend WithEvents lblOutput As System.Windows.Forms.Label
    Friend WithEvents cbxCOM As System.Windows.Forms.ComboBox
    Friend WithEvents cbxSpeed As System.Windows.Forms.ComboBox
    Friend WithEvents lblCOM As System.Windows.Forms.Label
    Friend WithEvents lblSpeed As System.Windows.Forms.Label
    Friend WithEvents SerialPort1 As System.IO.Ports.SerialPort
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtNumIn As System.Windows.Forms.TextBox
    Friend WithEvents op0 As System.Windows.Forms.RadioButton
    Friend WithEvents op1 As System.Windows.Forms.RadioButton
    Friend WithEvents op2 As System.Windows.Forms.RadioButton
    Friend WithEvents op3 As System.Windows.Forms.RadioButton
    Friend WithEvents op4 As System.Windows.Forms.RadioButton
    Friend WithEvents op5 As System.Windows.Forms.RadioButton
    Friend WithEvents op6 As System.Windows.Forms.RadioButton
    Friend WithEvents op7 As System.Windows.Forms.RadioButton
    Friend WithEvents op8 As System.Windows.Forms.RadioButton
    Friend WithEvents op9 As System.Windows.Forms.RadioButton
    Friend WithEvents op10 As System.Windows.Forms.RadioButton
    Friend WithEvents op12 As System.Windows.Forms.RadioButton
    Friend WithEvents op13 As System.Windows.Forms.RadioButton
    Friend WithEvents op14 As System.Windows.Forms.RadioButton
    Friend WithEvents op15 As System.Windows.Forms.RadioButton
    Friend WithEvents op16 As System.Windows.Forms.RadioButton
    Friend WithEvents op17 As System.Windows.Forms.RadioButton
    Friend WithEvents op18 As System.Windows.Forms.RadioButton
    Friend WithEvents op19 As System.Windows.Forms.RadioButton
    Friend WithEvents op20 As System.Windows.Forms.RadioButton
    Friend WithEvents op21 As System.Windows.Forms.RadioButton
    Friend WithEvents op22 As System.Windows.Forms.RadioButton
    Friend WithEvents op23 As System.Windows.Forms.RadioButton
    Friend WithEvents op24 As System.Windows.Forms.RadioButton
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents rx3 As System.Windows.Forms.RadioButton
    Friend WithEvents rx2 As System.Windows.Forms.RadioButton
    Friend WithEvents rx1 As System.Windows.Forms.RadioButton
    Friend WithEvents rx0 As System.Windows.Forms.RadioButton
    Friend WithEvents Panel3 As System.Windows.Forms.Panel
    Friend WithEvents ry3 As System.Windows.Forms.RadioButton
    Friend WithEvents ry2 As System.Windows.Forms.RadioButton
    Friend WithEvents ry1 As System.Windows.Forms.RadioButton
    Friend WithEvents ry0 As System.Windows.Forms.RadioButton
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents op25 As System.Windows.Forms.RadioButton
    Friend WithEvents op11 As System.Windows.Forms.RadioButton
    Friend WithEvents txtBE As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents op26 As System.Windows.Forms.RadioButton

End Class
