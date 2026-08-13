import os
import glob

html_files = glob.glob('*.html')

old_email_p = '<p>Email: admin@blmfebunair.com</p>'
new_email_p = '<p>Email: <a href="mailto:blmfebunair2026@gmail.com" style="color: #cbd5e1;">blmfebunair2026@gmail.com</a></p>'

old_ig_a = '<a href="#" style="color:var(--accent-gold); font-weight: 500;"><i class="bx bxl-instagram"></i> Instagram BLM FEB</a>'
new_ig_a = '<a href="https://www.instagram.com/blmfebunair?igsi=ZDNlZDc0MzIxNw==" target="_blank" style="color:var(--accent-gold); font-weight: 500;"><i class="bx bxl-instagram"></i> Instagram BLM FEB</a>'

for file in html_files:
    if file == 'faq.html':
        continue
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    if old_email_p in content or old_ig_a in content:
        content = content.replace(old_email_p, new_email_p)
        content = content.replace(old_ig_a, new_ig_a)
        with open(file, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Updated {file}")
