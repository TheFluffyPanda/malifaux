class FlavoursController < ApplicationController
  def index
    @flavours = Flavour.all
  end
  def new
    @flavour = Flavour.new
  end
  def create 
  	@flavour = Flavour.new(flavour_params) 
		if @flavour.save 
			redirect_to '/flavours' 
		else 
			render 'new' 
		end 
	end
  private 
  	def flavour_params 
  	  params.require(:flavour).permit(:content) 
  	end
end