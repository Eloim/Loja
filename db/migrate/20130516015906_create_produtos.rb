class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :pnome
      t.text :pdescri
      t.decimal :pvalor
      t.text :pimg

      t.timestamps
    end
  end
end
