class HomeController < ApplicationController
  def index
      if params[:Search]!= nil
          if params[:Search] == "Handsets"
            @brands = Product.select(:brand).distinct
          end
    end
  end

  def search 
      if params[:Search] == "Handsets" || params[:Search] == "Prepay Options" || params[:Search] == "Subscriptions"
        render "index"
      else
        redirect_to root_path
      end
  end
end
