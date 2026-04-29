function dots {
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $DotsArgs
    )

    try {
	    & "$HOME\Documents\dots\.venv\Scripts\dots.exe" @DotsArgs
    }
    finally {
        Pop-Location
    }
}


Invoke-Expression (&starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })
Invoke-Expression (& { (atuin init powershell --disable-up-arrow | Out-String) })
