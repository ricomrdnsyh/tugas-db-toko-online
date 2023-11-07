-- insert data pelanggan
INSERT INTO pelanggan (id_pelanggan, nama, email, password, no_hp, alamat) VALUES
('plg-1', 'Saiful', 'saiful12@gmail.com', '12345', '081234567890', 'Bondowoso'),
('plg-2', 'Riyan', 'riyan123@gmail.com', '12345', '081234657839', 'Bali'),
('plg-3', 'Rico', 'rico27@gmail.com', '12345', '081234567080', 'Paiton'),
('plg-4', 'Ainil', 'ainil@gmail.com', '12345', '085234212345', 'Banyuwangi'),
('plg-5', 'Nuril', 'nuril123@gmail.com', '12345', '085234123908', 'Banyuwangi'),
('plg-6', 'Doni', 'dion7@gmail.com', '12345', '0858746237218', 'Paiton'),
('plg-7', 'Uswa', 'uswa@gmail.com', '12345', '089374362783', 'Bali'),
('plg-8', 'Ary', 'ary09@gmail.com', '12345', '089234578213', 'Kraksaan'),
('plg-9', 'Nita', 'anita@gmail.com', '12345', '085673253689', 'Paiton'),
('plg-10', 'Miko', 'miko@gmail.com', '12345', '089897364789', 'Bondowoso');

-- insert data kategori
INSERT INTO kategori (id_kategori, name) VALUES
('ctg-1', 'Pakaian Pria'),
('ctg-2', 'Pakaian Wanita'),
('ctg-3', 'Otomotif'),
('ctg-4', 'Komputer & Aksesoris'),
('ctg-5', 'Kesehatan'),
('ctg-6', 'Perlengkapan Rumah'),
('ctg-7', 'Handphone & Aksesoris'),
('ctg-8', 'Sepatu'),
('ctg-9', 'Olahraga'),
('ctg-10', 'Makanan & Minuman');

-- insert data produk
INSERT INTO produk (id_produk, nama, kategori_id, harga, stok) VALUES
('prd-1', 'Kemeja', 'ctg-1', 75000, 25),
('prd-2', 'Sepatu Gunung', 'ctg-8', 300000, 30),
('prd-3', 'Velg Rosi', 'ctg-3', 200000, 12),
('prd-4', 'Keyboard Gaming', 'ctg-4', 159000, 32),
('prd-5', 'Daster', 'ctg-2', 35000, 27),
('prd-6', 'Lemari', 'ctg-6', 800000, 25),
('prd-7', 'Kulkas', 'ctg-6', 1200000, 8),
('prd-8', 'Casing Hp', 'ctg-7', 15000, 45),
('prd-9', 'Kotak P3K', 'ctg-5', 30000, 32),
('prd-10', 'Teh Gelas', 'ctg-10', 25000, 51);

-- insert data transaksi
INSERT INTO transaksi (id_transaksi, pelanggan_id, produk_id, tgl_transaksi, jumlah, total_harga) VALUES
('trns-1', 'plg-3', 'prd-2', '2023-10-25', 1, 300000),
('trns-2', 'plg-1', 'prd-1', '2023-10-25', 2, 150000),
('trns-3', 'plg-5', 'prd-5', '2023-10-27', 4, 140000),
('trns-4', 'plg-2', 'prd-4', '2023-10-28', 1, 159000),
('trns-5', 'plg-8', 'prd-9', '2023-10-28', 3, 90000),
('trns-6', 'plg-4', 'prd-7', '2023-10-31', 1, 12000000),
('trns-7', 'plg-6', 'prd-6', '2023-11-01', 3, 2400000),
('trns-8', 'plg-9', 'prd-10', '2023-11-03', 5, 125000),
('trns-9', 'plg-7', 'prd-3', '2023-11-04', 2, 400000),
('trns-10', 'plg-6', 'prd-10', '2023-11-05', 4, 100000);
