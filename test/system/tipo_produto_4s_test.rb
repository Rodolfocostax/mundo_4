require "application_system_test_case"

class TipoProduto4sTest < ApplicationSystemTestCase
  setup do
    @tipo_produto_4 = tipo_produto_4s(:one)
  end

  test "visiting the index" do
    visit tipo_produto_4s_url
    assert_selector "h1", text: "Tipo produto 4s"
  end

  test "should create tipo produto 4" do
    visit tipo_produto_4s_url
    click_on "New tipo produto 4"

    fill_in "Nome", with: @tipo_produto_4.nome
    click_on "Create Tipo produto 4"

    assert_text "Tipo produto 4 was successfully created"
    click_on "Back"
  end

  test "should update Tipo produto 4" do
    visit tipo_produto_4_url(@tipo_produto_4)
    click_on "Edit this tipo produto 4", match: :first

    fill_in "Nome", with: @tipo_produto_4.nome
    click_on "Update Tipo produto 4"

    assert_text "Tipo produto 4 was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo produto 4" do
    visit tipo_produto_4_url(@tipo_produto_4)
    click_on "Destroy this tipo produto 4", match: :first

    assert_text "Tipo produto 4 was successfully destroyed"
  end
end
