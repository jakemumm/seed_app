class SeedslotsController < ApplicationController
	def index
		@seedslots = Seedslot.includes(:seedrecs).all
		
	end

	def show
		@seedslot = Seedslot.find(params[:id])
	end

	def new
  		@seedslot = Seedslot.new
	end

	def edit
		@seedslot = Seedslot.find(params[:id])
	end

	def edit_mode
		@seedslots = Seedslot.all
	end

	def create
		@seedrec = Seedrec.find(params[:seedslot][:seedrec_ids])

  		@seedslot = @seedrec.seedslots.create!
 
  		if @seedslot.save
    	  redirect_to @seedslot
  		else
    	  render 'new'
  		end
	end

	def update
  		@seedslot = Seedslot.find(params[:id])
 
  		if @seedslot.update(seedslot_params)
    	  redirect_to @seedslot
  		else
    	  render 'edit'
  		end
	end

	def destroy
		@seedslot = Seedslot.find(params[:id])
		@seedslot.destroy

		redirect_to seedslots_delete_mode_path
	end

	def delete_mode
		@seedslots = Seedslot.all
	end

	private
  		def seedslot_params
    		params.require(:seedslot).permit(:add_to_order)#:title, :par, :last_year, :this_year)
  		end
end
 