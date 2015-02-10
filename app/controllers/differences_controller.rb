class DifferencesController < ApplicationController

	def index
		@differences = Difference.all
	end

	def new
		@difference = Difference.new
	end

	def create
	  @difference = Difference.create(difference_params)
	  redirect_to differences_path
	end

	def show
		 @difference = Difference.find(params[:id])
	end

	def edit
  	@difference = Difference.find(params[:id])
	end

	def update
		@difference = Difference.find(params[:id])
		@difference.update(difference_params)
		redirect_to difference_path
	end

	def destroy
    @difference = Difference.find(params[:id])
    @difference.destroy
    redirect_to differences_path
  end

	private
	  def difference_params
	    params.require(:difference).permit(:title, :text)
	  end

end
