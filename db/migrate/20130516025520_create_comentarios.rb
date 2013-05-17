class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :nick
      t.text :corpo
      t.references :produto
      t.references :user

      t.timestamps
    end
    add_index :comentarios, :produto_id
    add_index :comentarios, :user_id
  end
end
