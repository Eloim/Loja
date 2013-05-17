class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.text :endereco

      t.timestamps
    end
  end
end
