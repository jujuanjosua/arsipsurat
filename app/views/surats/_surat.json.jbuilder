json.extract! surat, :id, :jenis_surat, :tanggal_diterima, :bulan_diterima, :tahun_diterima, :tanggal_dibuat, :bulan_dibuat, :tahun_dibuat, :nomor_surat, :asal_surat, :perihal_surat, :bidang, :image, :created_at, :updated_at
json.url surat_url(surat, format: :json)
