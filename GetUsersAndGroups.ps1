Get-WMIObject win32_group -filter "LocalAccount='True'" -computername "vaishal-PC" |
  Select PSComputername,Name,@{Name="Members";Expression={
   $_.GetRelated("win32_useraccount").Name -join ";"
  }}