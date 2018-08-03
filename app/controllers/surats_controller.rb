class SuratsController < InheritedResources::Base
	before_action :authenticate_user!

  private

    def surat_params
      params.require(:surat).permit(:jenis_surat, :tanggal_diterima, :bulan_diterima, :tahun_diterima, :tanggal_dibuat, :bulan_dibuat, :tahun_dibuat, :nomor_surat, :asal_surat, :perihal_surat, :bidang, :image)
    end
end

