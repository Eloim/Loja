class Carrinho < ActiveRecord::Base
  attr_accessible :preco, :quantidade

  belongs_to :produto
  belongs_to :user
end
