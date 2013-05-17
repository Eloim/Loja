class LineItem < ActiveRecord::Base
  belongs_to :produto
  attr_accessible :preco, :quantidade
end
