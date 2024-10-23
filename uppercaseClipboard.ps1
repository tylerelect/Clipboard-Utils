$clipContents = Get-Clipboard

# Tries to grab text from clipboard
try {
    if($null -ne $clipContents -as [string])
    {
        # If the clipboard has text, convert to uppercase
        Set-Clipboard -Value $clipContents.ToUpper()
    }
}
catch [Exception] {
    # Throws error from any exception
    throw "Error: Clipboard is void of text or empty."
}