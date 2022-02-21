require "test_helper"

class TipoProduto4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_produto_4 = tipo_produto_4s(:one)
  end

  test "should get index" do
    get tipo_produto_4s_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_produto_4_url
    assert_response :success
  end

  test "should create tipo_produto_4" do
    assert_difference("TipoProduto4.count") do
      post tipo_produto_4s_url, params: { tipo_produto_4: { nome: @tipo_produto_4.nome } }
    end

    assert_redirected_to tipo_produto_4_url(TipoProduto4.last)
  end

  test "should show tipo_produto_4" do
    get tipo_produto_4_url(@tipo_produto_4)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_produto_4_url(@tipo_produto_4)
    assert_response :success
  end

  test "should update tipo_produto_4" do
    patch tipo_produto_4_url(@tipo_produto_4), params: { tipo_produto_4: { nome: @tipo_produto_4.nome } }
    assert_redirected_to tipo_produto_4_url(@tipo_produto_4)
  end

  test "should destroy tipo_produto_4" do
    assert_difference("TipoProduto4.count", -1) do
      delete tipo_produto_4_url(@tipo_produto_4)
    end

    assert_redirected_to tipo_produto_4s_url
  end
end
