module Admin
  class ListingsController < Fae::BaseController
    def edit
      @listing = params[:id]
    end

    def update
      @listing = Listing.find(params[:id])
      respond_to do |format|
        byebug
        if @listing.update(listing_params)
          format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
          format.json { render :show, status: :ok, location: @listing }
        else
          format.html { render :edit }
          format.json { render json: @listing.errors, status: :unprocessable_entity }
        end
      end
    end

  private
    def listing_params
      params.require(:listing).permit({ images: [] })
    end
  end
end
