class StocksController < ApplicationController
  require 'net/http'
  require 'uri'
  before_action :check_for_login

  def index
    @stocks = Stock.all
  end

  def show
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
    end   
  end

end
