class ComentariosController < ApplicationController
	def create
		@produto = Produto.find(params[:produto_id])
		@comentario = @produto.comentarios.create(params[:comentario])
		redirect_to produto_path(@produto)
	end

	def destroy
		@produto = Produto.find(params[:produto_id])
		@comentario = @produto.comentarios.find(params[:id])
		@comentario.destroy
		redirect_to produto_path(@produto)
	end
end
