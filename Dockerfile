# Menggunakan image Python versi 3.11
FROM python:3.11

# Mengatur direktori kerja dalam container
WORKDIR /app

# Menyalin file requirements.txt ke dalam container
COPY requirements.txt .

# Menginstal dependensi yang ada di requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Menjalankan pytest sebagai perintah default
CMD ["pytest"]
