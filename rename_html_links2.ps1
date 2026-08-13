$files = Get-ChildItem -Path . -Filter *.html

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    $content = $content -replace "tentang-blm\.html", "tentang.html"
    
    Set-Content -Path $file.FullName -Value $content -Encoding UTF8
}
