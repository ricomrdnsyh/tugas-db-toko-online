-- create table pelanggan
CREATE TABLE pelanggan(
    id_pelanggan CHAR(50) PRIMARY KEY NOT NULL,
    nama VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    no_hp VARCHAR(20) NOT NULL,
    alamat VARCHAR(100)
);

-- create table kategori
CREATE TABLE kategori (
    id_kategori CHAR(50) NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- create table produk
CREATE TABLE produk(
    id_produk CHAR(50) PRIMARY KEY NOT NULL,
    nama VARCHAR(50) NOT NULL,
    kategori_id CHAR(50) NOT NULL,
    jumlah_jual INT(5) NOT NULL,
    harga FLOAT NOT NULL,
    stok INT(5) NOT NULL,
    Foreign Key (kategori_id) REFERENCES kategori(id_kategori)
);

-- create table transaksi
CREATE TABLE transaksi(
    id_transaksi CHAR(50) NOT NULL PRIMARY KEY,
    pelanggan_id CHAR(50) NOT NULL,
    tgl_transaksi DATE NOT NULL,
    jumlah FLOAT NOT NULL,
    Foreign Key (pelanggan_id) REFERENCES pelanggan(id_pelanggan)
);

-- create table detail transaksi
CREATE TABLE detail_transaksi(
    id_detail CHAR(50) NOT NULL PRIMARY KEY,
    produk_id CHAR(50) NOT NULL,
    transaksi_id CHAR(50) NOT NULL,
    jumlah_beli INT(5) NOT NULL,
    total_harga FLOAT NOT NULL,
    Foreign Key (produk_id) REFERENCES produk(id_produk),
    Foreign Key (transaksi_id) REFERENCES transaksi(id_transaksi)
);
