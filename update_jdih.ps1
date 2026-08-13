$files = @(
    "index.html",
    "kotakaspirasi.html",
    "faq.html",
    "bankaspirasi.html",
    "tentang.html",
    "peminjamanruangan.html",
    "login.html"
)

foreach ($fileName in $files) {
    $content = Get-Content $fileName -Raw

    $pattern3 = '(?is)<div class="nav2__link" style="cursor: default;">\s*<i class="bx bx-folder nav2__icon"></i> JDIH\s*</div>\s*<div class="nav2__dropdown-content">\s*<a href="jdih-konstitusi\.html">Konstitusi</a>\s*<a href="jdih-peraturan-mahasiswa\.html">Peraturan Mahasiswa</a>\s*<a href="jdih-peraturan-blm\.html">Peraturan BLM FEB UNAIR</a>\s*<a href="jdih-sop\.html">SOP</a>\s*<a href="jdih-keputusan\.html">Keputusan</a>\s*<a href="jdih-rancangan\.html">Rancangan Peraturan</a>\s*</div>'
    $replace3 = '<a href="produkhukum.html" class="nav2__link"><i class="bx bx-folder nav2__icon"></i> Produk Hukum</a>'
    $content = [regex]::Replace($content, $pattern3, $replace3)

    $pattern2 = '(?is)<li class="dropdown">\s*<span class="dropbtn">JDIH <i class="bx bx-chevron-down"></i></span>\s*<div class="dropdown-content">\s*<a href="jdih-konstitusi\.html">Konstitusi</a>\s*<a href="jdih-peraturan-mahasiswa\.html">Peraturan Mahasiswa</a>\s*<a href="jdih-peraturan-blm\.html">Peraturan BLM FEB UNAIR</a>\s*<a href="jdih-sop\.html">SOP</a>\s*<a href="jdih-keputusan\.html">Keputusan</a>\s*<a href="jdih-rancangan\.html">Rancangan Peraturan</a>\s*</div>\s*</li>'
    $replace2 = '<li class="link"><a href="produkhukum.html">Produk Hukum</a></li>'
    $content = [regex]::Replace($content, $pattern2, $replace2)

    $pattern5 = '(?is)<a href="jdih-konstitusi\.html">JDIH</a>'
    $replace5 = '<a href="produkhukum.html">Produk Hukum</a>'
    $content = [regex]::Replace($content, $pattern5, $replace5)

    Set-Content -Path $fileName -Value $content -Encoding UTF8
}
