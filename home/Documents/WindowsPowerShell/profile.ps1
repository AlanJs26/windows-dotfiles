function dots {
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $DotsArgs
    )

    

    try {
	& "$HOME\Documents\dots\.venv\Scripts\dots.exe" @DotsArgs
        #uv run runner.py @DotsArgs
    }
    finally {
        Pop-Location
    }
}


Invoke-Expression (&starship init powershell)
Invoke-Expression (&  { (zoxide init powershell | Out-String) } )
