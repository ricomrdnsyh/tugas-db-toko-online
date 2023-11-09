SELECT CONCAT(pelanggan.nama) AS nama_pelanggan, AVG(total_harga) AS total_harga
FROM transaksi
INNER JOIN pelanggan ON pelanggan.id_pelanggan = transaksi.id_transaksi
WHERE transaksi.tgl_transaksi >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY pelanggan.id_pelanggan
ORDER BY total_harga DESC;
