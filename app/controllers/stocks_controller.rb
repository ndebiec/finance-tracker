class StocksController < ApplicationController

def search
  if params[:stock].blank?
    flash.now[:danger] = "You have entered an empty search string"
  else  
    @stock = Stock.new_stock_lookup(params[:stock])
    flash.now[:danger] = "You have entered an incorrect stock name" unless @stock
  end
  respond_to do |format|
    format.js { render partial: 'users/result' }
  end
end

end