; ---

+F1::
  SendInput, ^c
  Sleep 100
  Clipboard := Clipboard

  FileGetTime, modified_date_raw, %Clipboard%, M
  FormatTime, modified_date, %modified_date_raw%, [yyyy-MM-dd] [HH.mm]
  Clipboard := modified_date

  return

+F2::
  SendInput, ^c
  Sleep 100
  Clipboard := Clipboard

  FileGetTime, modified_date_raw, %Clipboard%, M
  FormatTime, modified_date, %modified_date_raw%, yyyyMMdd-HHmmss
  Clipboard := modified_date

  return

; ---
