# Temel imaj olarak Python 3.9 (veya senin versiyonun neyse) kullan
FROM python:3.8-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Gereksinim dosyasını kopyala ve kur
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Tüm proje dosyalarını kopyala
COPY . .

# Flask uygulamanı çalıştır (Elastic Beanstalk genelde port 5000 veya 8080 bekler)
EXPOSE 5000

# Container başlatıldığında çalışacak komut
CMD ["python", "application.py"]