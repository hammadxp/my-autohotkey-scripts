F6::
	RootKey = HKCU
	SubKey  = SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize
	
	RegRead, DarkMode_Status, % RootKey, % SubKey, AppsUseLightTheme
	
	if DarkMode_Status = 1
		RegWrite, REG_DWORD, % RootKey, % SubKey, AppsUseLightTheme, 0
	else
		RegWrite, REG_DWORD, % RootKey, % SubKey, AppsUseLightTheme, 1
	return
