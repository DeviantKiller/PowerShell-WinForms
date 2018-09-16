$Form = New-Object system.Windows.Forms.Form
$Form.Size = New-Object System.Drawing.Size(400,200)
#You can use the below method as well
#$Form.Width = 400
#$Form.Height = 200
$form.MaximizeBox = $false
$Form.StartPosition = "CenterScreen"
$Form.FormBorderStyle = 'Fixed3D'
$Form.Text = "Dans Tool V2"
$Form.WindowState = "Normal"
    # Maximized, Minimized, Normal
$Form.SizeGripStyle = "Show"
    # Auto, Hide, Show
$Form.ShowInTaskbar = $True
$Form.Opacity = 1.0
    # 1.0 is fully opaque; 0.0 is invisible
$Form.StartPosition = "CenterScreen"
    # CenterScreen, Manual, WindowsDefaultLocation, WindowsDefaultBounds, CenterParent


$Label = New-Object System.Windows.Forms.Label
$Label.Text = "What would you like to do?"
$Label.AutoSize = $true
$Label.Location = New-Object System.Drawing.Size(30,10)
$Font = New-Object System.Drawing.Font("Arial",15,[System.Drawing.FontStyle]::Bold)
$form.Font = $Font
$Form.Controls.Add($Label)

#$formIcon = New-Object system.drawing.icon ("$env:USERPROFILE\desktop\Blog\v.ico")
#$form.Icon = $formicon

$listBox = New-Object System.Windows.Forms.ListBox
$listBox.Location = New-Object System.Drawing.Point(20,40)
$listBox.Size = New-Object System.Drawing.Size(260,20)
$listBox.Height = 80

[void] $listBox.Items.Add('Backups')
[void] $listBox.Items.Add('Media')
[void] $listBox.Items.Add('Applications')

$form.Controls.Add($listBox)

$listBox1 = New-Object System.Windows.Forms.ListBox
$listBox1.Location = New-Object System.Drawing.Point(20,170)
$listBox1.Size = New-Object System.Drawing.Size(260,20)
$listBox1.Height = 80

[void] $listBox1.Items.Add('Backups')
[void] $listBox1.Items.Add('Media')
[void] $listBox1.Items.Add('Applications')

$form.Controls.Add($listBox1)

$Okbutton = New-Object System.Windows.Forms.Button
$Okbutton.Location = New-Object System.Drawing.Size(65,110)
$Okbutton.Size = New-Object System.Drawing.Size(120,30)
$Okbutton.Text = "SERVICES"
$Okbutton.Add_Click({service})
$Form.Controls.Add($Okbutton)

$Okbutton2 = New-Object System.Windows.Forms.Button
$Okbutton2.Location = New-Object System.Drawing.Size(220,110)
$Okbutton2.Size = New-Object System.Drawing.Size(120,30)
$Okbutton2.Text = "Clear Print Queue"
$Okbutton2.Add_Click({ClearPrintQueue})
$Form.Controls.Add($Okbutton2)

$Okbutton3 = New-Object System.Windows.Forms.Button
$Okbutton3.Location = New-Object System.Drawing.Size(100,140)
$Okbutton3.Size = New-Object System.Drawing.Size(120,30)
$Okbutton3.Text = "Restart Print Spooler"
$Okbutton3.Add_Click({RestartSpooler})
$Form.Controls.Add($Okbutton3)

$Okbutton4 = New-Object System.Windows.Forms.Button
$Okbutton4.Location = New-Object System.Drawing.Size(220,140)
$Okbutton4.Size = New-Object System.Drawing.Size(120,30)
$Okbutton4.Text = "SERVICES"
$Okbutton4.Add_Click({service})
$Form.Controls.Add($Okbutton4)

$Form.ShowDialog()

if ($result -eq [System.Windows.Forms.DialogResult]::OK)
{
    $x = $listBox.SelectedItem
    $x
}

if ($result -eq [System.Windows.Forms.DialogResult]::OK)
{
    $x = $listBox.SelectedItem
    $x
}