Function Get-LastBoot {
        if ($Host.Version.Major -lt 3) {
            Get-WmiObject win32_operatingsystem | Select-Object CSname, @{n = 'LastBootUpTime'; e = {$_.ConverttoDateTime($_.lastbootuptime)}}
        }
        else {
            Get-CimInstance -ClassName win32_operatingsystem | Select-Object CSname, LastBootUpTime
        }
    }
get-lastboot 