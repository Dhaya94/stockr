class StocksController < ApplicationController
  require 'net/http'
  require 'uri'
  before_action :check_for_login

  def index
    @stocks = Stock.all
  end

  def show
    @watchlists = @current_user.watchlists  
    @stock = Stock.find params[:id]
  end

  def create
    input_symbol = params[:symbol].upcase    
    query = BasicYahooFinance::Query.new
    stock_data = query.quotes(input_symbol)
    if stock_data.keys.length == 1      
      stock = Stock.find_by :symbol => input_symbol
      if stock.present?
        redirect_to stock
      else
        stock = Stock.create :symbol => input_symbol
        redirect_to stock
      end
    else
      redirect_to stocks_path
    end   
  end

  def update  # Updates the stocks in the watchlist
    stock = Stock.find_by :symbol => params[:stock][:symbol] 
    watchlist = Watchlist.find params[:stock][:watchlist_ids]
    stocks_arr = []
    watchlist.stocks.each do |w|
      stocks_arr << w.symbol
    end
    if stocks_arr.exclude?(stock.symbol) 
      watchlist.stocks << stock    
    end    
    redirect_to stock    
  end

  def destroy  # Deletes the stocks in the watchlist
    watchlist = Watchlist.find params[:watchlist][:id]
    stock_id = params[:id].to_i
    
    watchlist.stocks.each do |s|
      if (s.id == stock_id)
      s.destroy
      s.save
      end
    end
    watchlist.save   
    redirect_to watchlist
  end

end
