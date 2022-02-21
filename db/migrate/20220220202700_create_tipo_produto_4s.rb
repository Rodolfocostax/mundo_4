class CreateTipoProduto4s < ActiveRecord::Migration[7.0]
  def change
    create_table :tipo_produto_4s do |t|
      t.string :nome

      t.timestamps
    end
  end
end
