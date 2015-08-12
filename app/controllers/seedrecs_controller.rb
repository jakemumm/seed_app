class SeedrecsController < ApplicationController

	def index
		@seedrecs = Seedrec.all
	end

	def show
		@seedrec = Seedrec.find(params[:id])
	end

	def new
  		@seedrec = Seedrec.new
	end

	def edit
		@seedrec = Seedrec.find(params[:id])
	end

	def create
  		@seedrec = Seedrec.new(seedrec_params)
 
  		if @seedrec.save
    	  redirect_to @seedrec
  		else
    	  render 'new'
  		end
	end

	def update
  		@seedrec = Seedrec.find(params[:id])
 
  		if @seedrec.update(seedrec_params)
    	  redirect_to seedslots_path
  		else
    	  render 'edit'
  		end
	end

	def destroy
		@seedrec = Seedrec.find(params[:id])
		@seedrec.destroy

		redirect_to seedrecs_path
	end

	private
  		def seedrec_params
    		params.require(:seedrec).permit(:add_to_order, :prod_num, :title, :par, :last_year, :this_year, :sku, :in_stock)
  		end
end
