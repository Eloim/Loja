class CreateCarrinhos < ActiveRecord::Migration
  def change
    create_table :carrinhos do |t|
      t.integer :quantidade
      t.decimal :preco
      t.references :produto
      t.references :user

      t.timestamps
    end
    add_index :carrinhos, :produto_id
    add_index :carrinhos, :user_id
  end
end
