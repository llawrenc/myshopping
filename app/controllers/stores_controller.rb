class StoresController < ApplicationController
  before_action :set_store, only: [ :show, :edit, :update, :destroy ]

  def index
    @stores = Store.all
  end
  
  def edit
  end

  def show
    @store = Store.find(params[:id])
  end

  def create
    @store = Store.new(store_params)

    if @store.save
      redirect_to @store
    else
      render 'new'
    end
  end

  def update
  end

  def new
    @store = Store.new
  end

  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: 'Store was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_store
      @store = Store.find(params[:id])
    end

    def store_params
      params.require(:store).permit( :store_name, :address1, :address2, :suburb_id, :suburbs_attributes => [ :id, :suburb, :state, :post_code ])
    end
end
