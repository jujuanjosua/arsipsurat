require "application_system_test_case"

class SuratsTest < ApplicationSystemTestCase
  setup do
    @surat = surats(:one)
  end

  test "visiting the index" do
    visit surats_url
    assert_selector "h1", text: "Surats"
  end

  test "creating a Surat" do
    visit surats_url
    click_on "New Surat"

    fill_in "Asal Surat", with: @surat.asal_surat
    fill_in "Bidang", with: @surat.bidang
    fill_in "Bulan Dibuat", with: @surat.bulan_dibuat
    fill_in "Bulan Diterima", with: @surat.bulan_diterima
    fill_in "Image", with: @surat.image
    fill_in "Jenis Surat", with: @surat.jenis_surat
    fill_in "Nomor Surat", with: @surat.nomor_surat
    fill_in "Perihal Surat", with: @surat.perihal_surat
    fill_in "Tahun Dibuat", with: @surat.tahun_dibuat
    fill_in "Tahun Diterima", with: @surat.tahun_diterima
    fill_in "Tanggal Dibuat", with: @surat.tanggal_dibuat
    fill_in "Tanggal Diterima", with: @surat.tanggal_diterima
    click_on "Create Surat"

    assert_text "Surat was successfully created"
    click_on "Back"
  end

  test "updating a Surat" do
    visit surats_url
    click_on "Edit", match: :first

    fill_in "Asal Surat", with: @surat.asal_surat
    fill_in "Bidang", with: @surat.bidang
    fill_in "Bulan Dibuat", with: @surat.bulan_dibuat
    fill_in "Bulan Diterima", with: @surat.bulan_diterima
    fill_in "Image", with: @surat.image
    fill_in "Jenis Surat", with: @surat.jenis_surat
    fill_in "Nomor Surat", with: @surat.nomor_surat
    fill_in "Perihal Surat", with: @surat.perihal_surat
    fill_in "Tahun Dibuat", with: @surat.tahun_dibuat
    fill_in "Tahun Diterima", with: @surat.tahun_diterima
    fill_in "Tanggal Dibuat", with: @surat.tanggal_dibuat
    fill_in "Tanggal Diterima", with: @surat.tanggal_diterima
    click_on "Update Surat"

    assert_text "Surat was successfully updated"
    click_on "Back"
  end

  test "destroying a Surat" do
    visit surats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Surat was successfully destroyed"
  end
end
