Imports System
Imports System.Threading
Imports System.IO.Ports
Imports System.ComponentModel

Public Class Form1

    Dim myPort As Array
    Delegate Sub SetTextCallBack(ByVal [text] As String)

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ' Getting working COM port number
        myPort = IO.Ports.SerialPort.GetPortNames()
        cbxCOM.Items.AddRange(myPort)
        btnWrite.Enabled = False
        btnClose.Enabled = False

    End Sub

    Private Sub btnInit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnInit.Click

        SerialPort1.PortName = cbxCOM.Text
        SerialPort1.BaudRate = cbxSpeed.Text
        SerialPort1.Open()

        btnInit.Enabled = False
        btnWrite.Enabled = True
        btnClose.Enabled = True

    End Sub

    Private Sub btnWrite_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnWrite.Click

        ' Converting 7 bit numbers to appropriate byte
        Dim numberStr As String
        numberStr = txtNumIn.Text
        Dim p As Integer = numberStr.Length()

        Dim number As Byte = 0
        Dim j As Integer = 0
        For j = 0 To (p - 1)
            If numberStr(j) = "0" Then
                number = number * 2
            Else
                number = (number * 2) + 1
            End If
        Next j

        j = 0

        ' Checking which operation is selected, and sending appropriate byte
        If op0.Checked = True Then
            SerialPort1.Write("@")
        ElseIf op1.Checked = True Then
            SerialPort1.Write("L")
        ElseIf op2.Checked = True Then
            SerialPort1.Write("M")
        ElseIf op3.Checked = True Then
            SerialPort1.Write("N")
        ElseIf op4.Checked = True Then
            SerialPort1.Write("F")
        ElseIf op5.Checked = True Then
            SerialPort1.Write("A")
        ElseIf op6.Checked = True Then
            SerialPort1.Write("G")
        ElseIf op7.Checked = True Then
            SerialPort1.Write("B")
        ElseIf op8.Checked = True Then
            SerialPort1.Write("H")
        ElseIf op9.Checked = True Then
            SerialPort1.Write("I")
        ElseIf op10.Checked = True Then
            SerialPort1.Write("]")
        ElseIf op11.Checked = True Then
            SerialPort1.Write("^")
        ElseIf op12.Checked = True Then
            SerialPort1.Write("K")
        ElseIf op13.Checked = True Then
            SerialPort1.Write("J")
        ElseIf op14.Checked = True Then
            SerialPort1.Write("R")
        ElseIf op15.Checked = True Then
            SerialPort1.Write("S")
        ElseIf op16.Checked = True Then
            SerialPort1.Write("T")
        ElseIf op17.Checked = True Then
            SerialPort1.Write("U")
        ElseIf op18.Checked = True Then
            SerialPort1.Write("V")
        ElseIf op19.Checked = True Then
            SerialPort1.Write("W")
        ElseIf op20.Checked = True Then
            SerialPort1.Write("X")
        ElseIf op21.Checked = True Then
            SerialPort1.Write("Y")
        ElseIf op22.Checked = True Then
            SerialPort1.Write("Z")
        ElseIf op23.Checked = True Then
            SerialPort1.Write("\")
        ElseIf op24.Checked = True Then
            SerialPort1.Write("[")
        ElseIf op25.Checked = True Then
            SerialPort1.Write("_")
        ElseIf op26.Checked = True Then
            SerialPort1.Write("P")
        Else
            SerialPort1.Write("@")
        End If

        ' Checking which register is selected, and sending appropriate byte
        If (rx0.Checked = True) And (ry0.Checked = True) Then
            SerialPort1.Write("@")
        ElseIf (rx0.Checked = True) And (ry1.Checked = True) Then
            SerialPort1.Write("A")
        ElseIf (rx0.Checked = True) And (ry2.Checked = True) Then
            SerialPort1.Write("B")
        ElseIf (rx0.Checked = True) And (ry3.Checked = True) Then
            SerialPort1.Write("C")
        ElseIf (rx1.Checked = True) And (ry0.Checked = True) Then
            SerialPort1.Write("D")
        ElseIf (rx1.Checked = True) And (ry1.Checked = True) Then
            SerialPort1.Write("E")
        ElseIf (rx1.Checked = True) And (ry2.Checked = True) Then
            SerialPort1.Write("F")
        ElseIf (rx1.Checked = True) And (ry3.Checked = True) Then
            SerialPort1.Write("G")
        ElseIf (rx2.Checked = True) And (ry0.Checked = True) Then
            SerialPort1.Write("H")
        ElseIf (rx2.Checked = True) And (ry1.Checked = True) Then
            SerialPort1.Write("I")
        ElseIf (rx2.Checked = True) And (ry2.Checked = True) Then
            SerialPort1.Write("J")
        ElseIf (rx2.Checked = True) And (ry3.Checked = True) Then
            SerialPort1.Write("K")
        ElseIf (rx3.Checked = True) And (ry0.Checked = True) Then
            SerialPort1.Write("L")
        ElseIf (rx3.Checked = True) And (ry1.Checked = True) Then
            SerialPort1.Write("M")
        ElseIf (rx3.Checked = True) And (ry2.Checked = True) Then
            SerialPort1.Write("N")
        ElseIf (rx3.Checked = True) And (ry3.Checked = True) Then
            SerialPort1.Write("O")
        Else
            SerialPort1.Write("@")
        End If

        'Sending the number
        If number = 0 Then
            SerialPort1.Write(Chr(0))
        Else
            SerialPort1.Write(Chr(number))
        End If


    End Sub

    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click

        SerialPort1.Close()

        btnInit.Enabled = True
        btnWrite.Enabled = False
        btnClose.Enabled = False

    End Sub

    Private Sub SerialPort1_DataReceived(ByVal sender As System.Object, ByVal e As System.IO.Ports.SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived

        ReceivedText(SerialPort1.ReadExisting())

    End Sub



    Private Sub ReceivedText(ByVal [text] As String)

        If Me.txtOutput.InvokeRequired Then
            Dim x As New SetTextCallBack(AddressOf ReceivedText)
            Me.Invoke(x, New Object() {(text)})
        Else
            Dim g As String 'keep one bit of incoming bits
            Dim k As Integer 'lenght of incoming bits
            Dim m As Integer 'for FOR statement

            k = (text.Length - 1)
            For m = 0 To k
                g = text.Substring(m, 1)
                'Examine first bit for error detection
                If Not ((g = Chr(48)) Or (g = Chr(49)) Or (g = Chr(13))) Then
                    Me.txtOutput.Text &= ("ERROR! Ignore the line below..." & Chr(13))
                Else
                    txtBE.Text &= g
                End If
                g = Nothing
            Next m
            
                Me.txtOutput.Text &= txtBE.Text
                txtBE.Clear()
               
            'Placing the cursor to end of the textbox
            txtOutput.Select(txtOutput.TextLength, 0)
            txtOutput.ScrollToCaret()
        End If

    End Sub


    Private Sub txtNumIn_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtNumIn.KeyPress

        Dim k As Byte = Asc(e.KeyChar)

        If Not (e.KeyChar = "0" Or e.KeyChar = "1" Or k = 8 Or k = 13) Then e.Handled = True

    End Sub

End Class
