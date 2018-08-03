class CreateSurats < ActiveRecord::Migration[5.2]
  def change
    create_table :surats do |t|
      t.string :jenis_surat
      t.string :tanggal_diterima
      t.string :bulan_diterima
      t.string :tahun_diterima
      t.string :tanggal_dibuat
      t.string :bulan_dibuat
      t.string :tahun_dibuat
      t.string :nomor_surat
      t.string :asal_surat
      t.string :perihal_surat
      t.string :bidang
      t.string :image

      t.timestamps
    end
  end
end
