class SimilaritiesController < ApplicationController

	def index
		@similarities = Similarity.all
	end

	def new
		@similarity = Similarity.new
	end

	def create
	  @similarity = Similarity.create(similarity_params)
	  redirect_to similarities_path
	end

	def show
		 @similarity = Similarity.find(params[:id])
	end

	def edit
  	@similarity = Similarity.find(params[:id])
	end

	def update
		@similarity = Similarity.find(params[:id])
		@similarity.update(similarity_params)
		redirect_to similarity_path
	end

	def destroy
    @similarity = Similarity.find(params[:id])
    @similarity.destroy
    redirect_to similarities_path
  end

	private
	  def similarity_params
	    params.require(:similarity).permit(:title, :text)
	  end

end
