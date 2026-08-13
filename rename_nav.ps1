$files = Get-ChildItem -Path . -Filter *.html

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # Replace the text in navbars and other places
    $content = $content -replace "Selayang Pandang", "Tentang BLM"
    
    Set-Content -Path $file.FullName -Value $content -Encoding UTF8
}
