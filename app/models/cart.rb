class Cart 
	attr_reader :items 
	attr_reader :preco_total 

	def initialize 
		@items = [] 
		@preco_total = 0.0
	end

	def add_produto(@produto) 
		@items << LineItem.for_produto(@produto) 
		@preco_total += @produto.pvalor
	end
end