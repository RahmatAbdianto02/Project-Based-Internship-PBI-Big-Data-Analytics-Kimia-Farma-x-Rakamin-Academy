# Project-Based-Internship-PBI-Big-Data-Analytics-Kimia-Farma-x-Rakamin-Academy

nput
# 💊 Kimia Farma Performance Analytics Dashboard (2020–2023)

## 📌 Project Overview
Proyek ini merupakan evaluasi komprehensif terhadap kinerja bisnis, penjualan, profitabilitas, serta performa cabang dan produk **Kimia Farma** selama periode **2020–2023**. Pemrosesan data mentah hingga pembentukan *master table* dilakukan menggunakan **Google BigQuery (SQL)**, kemudian divisualisasikan ke dalam *dashboard* interaktif *executive-level* menggunakan **Looker Studio**.

---

## 🛠️ Tools & Technologies
- **Data Warehouse & Querying:** Google BigQuery (SQL)
- **Data Visualization:** Google Looker Studio
- **Version Control & Repository:** GitHub

---

## 🔗 Interactive Dashboard Link
Akses *dashboard* interaktif versi lengkap secara langsung di sini:  
👉 **[Looker Studio - Performance Analytics Dashboard Kimia Farma](https://datastudio.google.com/reporting/c3c1c9fe-4b3d-4c15-ab49-e8097e6d4a14)**

---

## 📊 Key Business Metrics & Highlights
- **Total Net Sales (Penjualan Bersih):** Rp346,96 Miliar
- **Total Net Profit (Keuntungan Bersih):** Rp98,54 Miliar
- **Total Volume Transaksi:** 672 Ribu Transaksi
- **Rata-rata Rating:** 4,0 / 5,0
- **Top Sales per Provinsi:** DI Yogyakarta dan DKI Jakarta memimpin sebagai kontributor penjualan terbesar.
- **Kategori Produk Unggulan:** Kategori *Psycholeptics drugs* dan *Antihistamines for systemic use* mencatatkan kontribusi omzet paling dominan secara konsisten.

---

## 📁 Repository Structure
```text
.
├── analisis_kimia_farma.sql   # Sintaks SQL BigQuery (Master Table & Analisis)
└── README.md                  # Dokumentasi & Ringkasan Proyek
```

---

## 📝 Ringkasan Sintaks SQL BigQuery
File `analisis_kimia_farma.sql` menangani seluruh alur pengolahan data (*Data Processing Pipeline*), mencakup:
1. **Data Integration:** *Joining* tabel utama transaksi, kantor cabang, produk, dan rating.
2. **Calculated Fields:**
   - `nett_sales`: Mengkalkulasi penjualan bersih setelah persentase diskon.
   - `nett_profit`: Menghitung keuntungan bersih berdasarkan margin profit per kategori.
   - `persentase_gross_laba`: Persentase margin laba kotor.
3. **Time-Series Standardization:** Konversi dan agregasi tipe data `date` untuk analisis tren waktu tahunan (2020–2023).
