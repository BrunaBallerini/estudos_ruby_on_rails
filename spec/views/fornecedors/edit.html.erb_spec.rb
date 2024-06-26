require 'rails_helper'

RSpec.describe "fornecedors/edit", type: :view do
  let(:fornecedor) {
    Fornecedor.create!(
      nome: "MyString",
      cnpj: "MyString",
      endereco: "MyText"
    )
  }

  before(:each) do
    assign(:fornecedor, fornecedor)
  end

  it "renders the edit fornecedor form" do
    render

    assert_select "form[action=?][method=?]", fornecedor_path(fornecedor), "post" do

      assert_select "input[name=?]", "fornecedor[nome]"

      assert_select "input[name=?]", "fornecedor[cnpj]"

      assert_select "textarea[name=?]", "fornecedor[endereco]"
    end
  end
end
