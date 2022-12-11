require "application_system_test_case"

class SucursalesTest < ApplicationSystemTestCase
  setup do
    @sucursale = sucursales(:one)
  end

  test "visiting the index" do
    visit sucursales_url
    assert_selector "h1", text: "Sucursales"
  end

  test "should create sucursale" do
    visit sucursales_url
    click_on "New sucursale"

    fill_in "Direccion", with: @sucursale.direccion
    fill_in "Nombre", with: @sucursale.nombre
    fill_in "Telefono", with: @sucursale.telefono
    click_on "Create Sucursale"

    assert_text "Sucursale was successfully created"
    click_on "Back"
  end

  test "should update Sucursale" do
    visit sucursale_url(@sucursale)
    click_on "Edit this sucursale", match: :first

    fill_in "Direccion", with: @sucursale.direccion
    fill_in "Nombre", with: @sucursale.nombre
    fill_in "Telefono", with: @sucursale.telefono
    click_on "Update Sucursale"

    assert_text "Sucursale was successfully updated"
    click_on "Back"
  end

  test "should destroy Sucursale" do
    visit sucursale_url(@sucursale)
    click_on "Destroy this sucursale", match: :first

    assert_text "Sucursale was successfully destroyed"
  end
end
