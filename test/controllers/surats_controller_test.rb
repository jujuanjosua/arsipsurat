require 'test_helper'

class SuratsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surat = surats(:one)
  end

  test "should get index" do
    get surats_url
    assert_response :success
  end

  test "should get new" do
    get new_surat_url
    assert_response :success
  end

  test "should create surat" do
    assert_difference('Surat.count') do
      post surats_url, params: { surat: { asal_surat: @surat.asal_surat, bidang: @surat.bidang, bulan_dibuat: @surat.bulan_dibuat, bulan_diterima: @surat.bulan_diterima, image: @surat.image, jenis_surat: @surat.jenis_surat, nomor_surat: @surat.nomor_surat, perihal_surat: @surat.perihal_surat, tahun_dibuat: @surat.tahun_dibuat, tahun_diterima: @surat.tahun_diterima, tanggal_dibuat: @surat.tanggal_dibuat, tanggal_diterima: @surat.tanggal_diterima } }
    end

    assert_redirected_to surat_url(Surat.last)
  end

  test "should show surat" do
    get surat_url(@surat)
    assert_response :success
  end

  test "should get edit" do
    get edit_surat_url(@surat)
    assert_response :success
  end

  test "should update surat" do
    patch surat_url(@surat), params: { surat: { asal_surat: @surat.asal_surat, bidang: @surat.bidang, bulan_dibuat: @surat.bulan_dibuat, bulan_diterima: @surat.bulan_diterima, image: @surat.image, jenis_surat: @surat.jenis_surat, nomor_surat: @surat.nomor_surat, perihal_surat: @surat.perihal_surat, tahun_dibuat: @surat.tahun_dibuat, tahun_diterima: @surat.tahun_diterima, tanggal_dibuat: @surat.tanggal_dibuat, tanggal_diterima: @surat.tanggal_diterima } }
    assert_redirected_to surat_url(@surat)
  end

  test "should destroy surat" do
    assert_difference('Surat.count', -1) do
      delete surat_url(@surat)
    end

    assert_redirected_to surats_url
  end
end
