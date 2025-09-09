Clipboard =
OnClipboardChange:
If A_EventInfo = 1
{
If Clipboard = %Current%
return
Current := Clipboard
Clipboard := Current

	FormatTime, minute,, HH:mm:ss
	FormatTime, CurrentDateTime,, yyyy-MM-dd (dddd, dd MMMM yyyy)
	fileappend, %clipboard% [%minute%]`n, D:\Documents\Tmp\trash\Other Things\`Clipboard History\%CurrentDateTime%.txt
}
return
