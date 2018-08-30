class DisposController < ApplicationController
	before_action :authenticate_user!
	before_action :set_dispo, only: [:edit, :update, :show, :destroy]
	before_action :set_surat, only: [:create, :edit, :show, :update, :destroy]

	def create
		@dispo = @surat.dispos.create(params[:dispo].permit(:dispo, :surat_id))
		@dispo.user_id = current_user.id

		respond_to do |format|
			if @dispo.save
				format.html { redirect_to surat_path(@surat) }
				format.js
			else
			format.html { redirect_to surat_path(@surat), notice: 'Disposisi not saved'}
			format.js
			end
		end
	end

	def new
		
	end

	def destroy
		@dispo = @surat.dispos.find(params[:id])
		@dispo.destroy
		redirect_to surat_path(@surat)
	end

	def edit
		@surat = Surat.find(params[:surat_id])
		@dispo = @surat.dispos.find(params[:id])
	end

	def update
		@dispo = @surat.dispos.find(params[:id])
		respond_to do |format|
			if @dispo.update(dispo_params)
				format.html { redirect_to surat_path(@surat), notice: 'Dispo Updated'}
			else
				format.html { render :edit }
				format.json { render json @dispo.errors, status: :unprocessable_entity }
			end
		end
	end

	private
	
	def set_surat
		@surat = Surat.find(params[:surat_id])
	end

	def set_dispo
		@dispo = Dispo.find(params[:id])
	end

	def dispo_params
		params.require(:dispo).permit(:dispo)
	end


end