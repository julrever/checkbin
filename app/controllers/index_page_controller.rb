class IndexPageController < ApplicationController
  def index
    if params[:search]
      @bins = Bin.search(params[:search]).order("bin ASC").paginate(:page => params[:page], :per_page => 100)
    else
      @bins = Bin.all.order("bin ASC").paginate(:page => params[:page], :per_page => 100)
    end
  end

  def show
    @current = Bin.where(bin: params[:id]).first
  end

  def countries
    @countries = Bin.select(:country).distinct.order("country ASC")
  end

  def brands
    @brands = Bin.select(:brand).distinct.order("brand ASC")
  end
end
