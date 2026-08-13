$files = Get-ChildItem -Path . -Filter *.html

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    $content = $content -replace "Senat Mahasiswa Fakultas Hukum Universitas Diponegoro", "Badan Legislatif Mahasiswa Fakultas Ekonomi dan Bisnis Universitas Airlangga"
    $content = $content -replace "Senat Mahasiswa FH UNDIP", "BLM FEB UNAIR"
    $content = $content -replace "Senat Mahasiswa", "BLM FEB UNAIR"
    $content = $content -replace "Senat FH", "BLM FEB UNAIR"
    $content = $content -replace "FH UNDIP", "FEB UNAIR"
    $content = $content -replace "Fakultas Hukum Universitas Diponegoro", "Fakultas Ekonomi dan Bisnis Universitas Airlangga"
    $content = $content -replace "Fakultas Hukum", "Fakultas Ekonomi dan Bisnis"
    $content = $content -replace "Universitas Diponegoro", "Universitas Airlangga"
    
    $content = $content -replace "Peraturan Senat Mahasiswa", "Peraturan BLM"
    $content = $content -replace "Peraturan Senat", "Peraturan BLM"
    
    $content = $content -replace "jdih-peraturan-senat\.html", "jdih-peraturan-blm.html"
    
    $content = $content -replace "senatfhundip\.my\.id", "blmfebunair.com"
    $content = $content -replace "senatfhundip", "blmfebunair"
    
    $content = $content -replace "\bSenat\b", "BLM"
    $content = $content -replace "\bsenat\b", "blm"
    
    $content = $content -replace "BEM-FH", "BEM FEB"
    $content = $content -replace "ALSA LC UNDIP", "HIMA"
    $content = $content -replace "UNDIP", "UNAIR"
    
    Set-Content -Path $file.FullName -Value $content -Encoding UTF8
}

if (Test-Path "jdih-peraturan-senat.html") {
    Rename-Item "jdih-peraturan-senat.html" "jdih-peraturan-blm.html"
}
