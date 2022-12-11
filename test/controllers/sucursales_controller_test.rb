require "test_helper"

class SucursalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sucursale = sucursales(:one)
  end

  test "should get index" do
    get sucursales_url
    assert_response :success
  end

  test "should get new" do
    get new_sucursale_url
    assert_response :success
  end

  test "should create sucursale" do
    assert_difference("Sucursale.count") do
      post sucursales_url, params: { sucursale: { direccion: @sucursale.direccion, nombre: @sucursale.nombre, telefono: @sucursale.telefono } }
    end

    assert_redirected_to sucursale_url(Sucursale.last)
  end

  test "should show sucursale" do
    get sucursale_url(@sucursale)
    assert_response :success
  end

  test "should get edit" do
    get edit_sucursale_url(@sucursale)
    assert_response :success
  end

  test "should update sucursale" do
    patch sucursale_url(@sucursale), params: { sucursale: { direccion: @sucursale.direccion, nombre: @sucursale.nombre, telefono: @sucursale.telefono } }
    assert_redirected_to sucursale_url(@sucursale)
  end

  test "should destroy sucursale" do
    assert_difference("Sucursale.count", -1) do
      delete sucursale_url(@sucursale)
    end

    assert_redirected_to sucursales_url
  end
end
