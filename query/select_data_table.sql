-- get semua data pelanggan
SELECT * FROM pelanggan;

-- get data nama, email, dan alamat dari tabel pelanggan
SELECT nama, email, alamat FROM pelanggan;

-- get data produk berdasarkan id_produk
SELECT * FROM produk WHERE id_produk = 'prd-2';

-- get data transaksi order by tgl_transaksi ASC
SELECT * FROM transaksi ORDER BY tgl_transaksi ASC;

--get data nama kategori dan nama produk
SELECT kategori.name AS kategori, produk.nama AS produk 
    FROM produk
    INNER JOIN kategori ON kategori.id_kategori = produk.kategori_id;
