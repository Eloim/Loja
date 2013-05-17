class Carrinho
  attr_accessible :preco, :quantidade

  def initialize 
  	@items = [] 
  	@preco_total = 0.0
  end


  def add_produto(@produto) 
  	@items << Carrinho.for_produto(@produto) 
  	@preco_total += produto.pvalor
  end

  belongs_to :produto
  belongs_to :user
end
