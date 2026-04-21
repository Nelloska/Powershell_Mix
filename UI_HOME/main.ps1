Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

[System.Windows.Forms.Application]::EnableVisualStyles()

#Add Image to Button
#$image0 = [System.Drawing.Image]::FromFile("C:\UI_HOME\firma.GIF")
$image1 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Youtube.png")
$image2 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Spotify.png")
$image3 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\SkyTg24.png")
$image4 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\RaiPlay.png")
$image5 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Streaming.png")
$image5M = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\edit.jpg")
$image6 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Film.jpg")
$image7 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Foto.jpg")
$image8 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Libreria.jpg")
$image9 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Mediateca.jpg")
$image10 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\WiP.png")
$image11 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\WiP.png")
$image12 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\NO.png")
$image98 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Impostazioni.png")
$image99 = [System.Drawing.Image]::FromFile("C:\UI_HOME\Image\Firma.GIF")

#MAIN
$form = New-Object System.Windows.Forms.Form
$form.Text ='### Et voila, bello come il sole ###'
$form.Width = 1920
$form.Height = 1080
$form.BackColor = "#000000"
#$form.Image = $image0
$form.AutoSize = $true
#
$Button1 = New-Object System.Windows.Forms.Button
$Button1.Location = New-Object System.Drawing.Point(144,120)
$Button1.Size = New-Object System.Drawing.Size(300,200)
$Button1.Image = $image1
$Button1.Add_Click({
	Start-Process "C:\UI_HOME\bat\Youtube.bat" -WindowStyle Hidden
})
$Button2 = New-Object System.Windows.Forms.Button
$Button2.Location = New-Object System.Drawing.Point(588,120)
$Button2.Size = New-Object System.Drawing.Size(300,200)
$Button2.Image = $image2
$Button2.Add_Click({
	Start-Process "C:\UI_HOME\bat\Spotify.bat" -WindowStyle Hidden
})
$Button3 = New-Object System.Windows.Forms.Button
$Button3.Location = New-Object System.Drawing.Point(1032,120)
$Button3.Size = New-Object System.Drawing.Size(300,200)
$Button3.Image = $image3
$Button3.Add_Click({
	Start-Process "C:\UI_HOME\bat\SkyTg24.bat" -WindowStyle Hidden
})
$Button4 = New-Object System.Windows.Forms.Button
$Button4.Location = New-Object System.Drawing.Point(1476,120)
$Button4.Size = New-Object System.Drawing.Size(300,200)
$Button4.Image = $image4
$Button4.Add_Click({
	Start-Process "C:\UI_HOME\bat\RaiPlay.bat" -WindowStyle Hidden
})
$Button5 = New-Object System.Windows.Forms.Button
$Button5.Location = New-Object System.Drawing.Point(144,440)
$Button5.Size = New-Object System.Drawing.Size(300,200)
$Button5.Image = $image5
$Button5.Add_Click({
	Start-Process "C:\UI_HOME\bat\Streaming.bat" -WindowStyle Hidden
})
$Button5M = New-Object System.Windows.Forms.Button
$Button5M.Location = New-Object System.Drawing.Point(450,440)
$Button5M.Size = New-Object System.Drawing.Size(50,50)
$Button5M.Image = $image5M
$Button5M.Add_Click({
	Start-Process "C:\UI_HOME\bat\edits.bat" -WindowStyle Hidden
})
$Button6 = New-Object System.Windows.Forms.Button
$Button6.Location = New-Object System.Drawing.Point(588,440)
$Button6.Size = New-Object System.Drawing.Size(300,200)
$Button6.Image = $image6
$Button6.Add_Click({
	Start-Process "C:\UI_HOME\bat\Film.bat" -WindowStyle Hidden
})
$Button7 = New-Object System.Windows.Forms.Button
$Button7.Location = New-Object System.Drawing.Point(1032,440)
$Button7.Size = New-Object System.Drawing.Size(300,200)
$Button7.Image = $image7
$Button7.Add_Click({
	Start-Process "C:\UI_HOME\bat\Foto.bat" -WindowStyle Hidden
})
$Button8 = New-Object System.Windows.Forms.Button
$Button8.Location = New-Object System.Drawing.Point(1476,440)
$Button8.Size = New-Object System.Drawing.Size(300,200)
$Button8.Image = $image8
$Button8.Add_Click({
	Start-Process "C:\UI_HOME\bat\Libreria.bat" -WindowStyle Hidden
})
$Button9 = New-Object System.Windows.Forms.Button
$Button9.Location = New-Object System.Drawing.Point(144,760)
$Button9.Size = New-Object System.Drawing.Size(300,200)
$Button9.Image = $image9
$Button9.Add_Click({
	Start-Process "C:\UI_HOME\bat\Mediateca.bat" -WindowStyle Hidden
})
$Button10 = New-Object System.Windows.Forms.Button
$Button10.Location = New-Object System.Drawing.Point(588,760)
$Button10.Size = New-Object System.Drawing.Size(300,200)
$Button10.Image = $image10
#$Button10.Add_Click({
#	Start-Process "C:\UI_HOME\bat\WiP.bat" -WindowStyle Hidden
#})
$Button11 = New-Object System.Windows.Forms.Button
$Button11.Location = New-Object System.Drawing.Point(1032,760)
$Button11.Size = New-Object System.Drawing.Size(300,200)
$Button11.Image = $image11
#$Button11.Add_Click({
#	Start-Process "C:\UI_HOME\bat\WiP.bat" -WindowStyle Hidden
#})
$Button12 = New-Object System.Windows.Forms.Button
$Button12.Location = New-Object System.Drawing.Point(1476,760)
$Button12.Size = New-Object System.Drawing.Size(300,200)
$Button12.Image = $image12
$Button12.Add_Click({
	Start-Process "C:\UI_HOME\bat\NO.bat" -WindowStyle Hidden
})
$Button98 = New-Object System.Windows.Forms.Button
$Button98.Location = New-Object System.Drawing.Point(1,1)
$Button98.Size = New-Object System.Drawing.Size(100,100)
$Button98.Image = $image98
$Button98.Add_Click({
	Start-Process "C:\UI_HOME\bat\Impostazioni.bat" -WindowStyle Hidden
})
$Button99 = New-Object System.Windows.Forms.Button
$Button99.Location = New-Object System.Drawing.Point(1820,980)
$Button99.Size = New-Object System.Drawing.Size(100,23)
$Button99.Image = $image99

$form.Controls.Add($Button1)
$form.Controls.Add($Button2)
$form.Controls.Add($Button3)
$form.Controls.Add($Button4)
$form.Controls.Add($Button5)
$form.Controls.Add($Button5M)
$form.Controls.Add($Button6)
$form.Controls.Add($Button7)
$form.Controls.Add($Button8)
$form.Controls.Add($Button9)
$form.Controls.Add($Button10)
$form.Controls.Add($Button11)
$form.Controls.Add($Button12)
$form.Controls.Add($Button98)
$form.Controls.Add($Button99)

$Button1.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button2.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button3.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button4.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button5.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button5M.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button6.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button7.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button8.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button9.Cursor   = [System.Windows.Forms.Cursors]::Hand
# $Button10.Cursor   = [System.Windows.Forms.Cursors]::Hand
# $Button11.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button12.Cursor   = [System.Windows.Forms.Cursors]::Hand
$Button98.Cursor   = [System.Windows.Forms.Cursors]::Hand

$form.ShowDialog()