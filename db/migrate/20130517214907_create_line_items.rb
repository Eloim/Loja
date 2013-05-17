class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantidade
      t.decimal :preco
      t.references :produto

      t.timestamps
    end
    add_index :line_items, :produto_id
  end
end
