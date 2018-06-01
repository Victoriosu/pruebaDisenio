require 'test_helper'

class PermisoPerfilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permiso_perfil = permiso_perfils(:one)
  end

  test "should get index" do
    get permiso_perfils_url
    assert_response :success
  end

  test "should get new" do
    get new_permiso_perfil_url
    assert_response :success
  end

  test "should create permiso_perfil" do
    assert_difference('PermisoPerfil.count') do
      post permiso_perfils_url, params: { permiso_perfil: { concedido: @permiso_perfil.concedido, perfil_id: @permiso_perfil.perfil_id, permiso_id: @permiso_perfil.permiso_id } }
    end

    assert_redirected_to permiso_perfil_url(PermisoPerfil.last)
  end

  test "should show permiso_perfil" do
    get permiso_perfil_url(@permiso_perfil)
    assert_response :success
  end

  test "should get edit" do
    get edit_permiso_perfil_url(@permiso_perfil)
    assert_response :success
  end

  test "should update permiso_perfil" do
    patch permiso_perfil_url(@permiso_perfil), params: { permiso_perfil: { concedido: @permiso_perfil.concedido, perfil_id: @permiso_perfil.perfil_id, permiso_id: @permiso_perfil.permiso_id } }
    assert_redirected_to permiso_perfil_url(@permiso_perfil)
  end

  test "should destroy permiso_perfil" do
    assert_difference('PermisoPerfil.count', -1) do
      delete permiso_perfil_url(@permiso_perfil)
    end

    assert_redirected_to permiso_perfils_url
  end
end
