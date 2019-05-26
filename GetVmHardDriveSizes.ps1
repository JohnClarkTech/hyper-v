clear
$VMs = Get-VM
Foreach ($VM in $VMs)
{
  $HardDrives = $VM.HardDrives
  Foreach ($HardDrive in $HardDrives)
  {
    $hddsize = $HardDrive.path | Get-VHD | select path,size
    $hddsize.Size = $hddsize.Size / 1GB
    $hddsize | format-table Path,size
    
  }
}