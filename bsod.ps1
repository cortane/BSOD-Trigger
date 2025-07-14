Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class BSOD {
  [DllImport("ntdll.dll")]
  public static extern uint NtRaiseHardError(uint ErrorStatus, uint NumberOfParameters, uint UnicodeStringParameterMask, IntPtr Parameters, uint ValidResponseOption, out uint Response);
}
"@
[uint32]$response = 0
[void][BSOD]::NtRaiseHardError(0xC0000022, 0, 0, [IntPtr]::Zero, 6, [ref]$response)
