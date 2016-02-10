class FlavoursController < ApplicationController
  def index
    @flavours = Flavour.all.order(order: :asc)
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
	def update
    @flavour = Flavour.find(params[:id])
      if @flavour.update(flavour_params)
        redirect_to root_url
      else
        render 'edit'
      end
  end
def edit
	@flavour = Flavour.find(params[:id])
end
  def destroy
    @flavour = Flavour.find(params[:id])
    @flavour.destroy
    redirect_to root_url
  end 
  private 
  	def flavour_params 
  	  params.require(:flavour).permit(:content, :active, :id, :order, :title)
  	end
end