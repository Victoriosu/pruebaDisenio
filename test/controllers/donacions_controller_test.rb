require 'test_helper'

class DonacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @Donacion = Donacions(:one)
  end

  test "should get index" do
    get Donacions_url
    assert_response :success
  end

  test "should get new" do
    get new_Donacion_url
    assert_response :success
  end

  test "should create Donacion" do
    assert_difference('Donacion.count') do
      post Donacions_url, params: { Donacion: { monto: @Donacion.monto, user_id: @Donacion.user_id } }
    end

    assert_redirected_to Donacion_url(Donacion.last)
  end

  test "should show Donacion" do
    get Donacion_url(@Donacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_Donacion_url(@Donacion)
    assert_response :success
  end

  test "should update Donacion" do
    patch Donacion_url(@Donacion), params: { Donacion: { monto: @Donacion.monto, user_id: @Donacion.user_id } }
    assert_redirected_to Donacion_url(@Donacion)
  end

  test "should destroy Donacion" do
    assert_difference('Donacion.count', -1) do
      delete Donacion_url(@Donacion)
    end

    assert_redirected_to Donacions_url
  end
end
