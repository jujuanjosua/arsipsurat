class SuratsController < InheritedResources::Base
	before_action :authenticate_user!

	def create
	@surat = Surat.new(surat_params)
	@surat.user_id = current_user.id

	respond_to do |format|
      if @surat.save

        format.html { redirect_to surat_path(@surat) }
        format.js # renders create.js.erb
		end
		end
	
	end

  private

    def surat_params
      params.require(:surat).permit(:jenis_surat, :tanggal_diterima, :bulan_diterima, :tahun_diterima, :tanggal_dibuat, :bulan_dibuat, :tahun_dibuat, :nomor_surat, :asal_surat, :perihal_surat, :bidang, :status, :image)
    end
end