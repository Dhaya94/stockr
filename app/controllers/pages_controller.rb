class PagesController < ApplicationController
  before_action :check_for_login 
  
  def home    
    stocks_list = ['ADBE', 'NVDA', 'NKE', 'SHOP','GOOG', 'MSFT', 'AMZN', 'TSLA', 'AAPL', 'T', 'V', 'PEP', 'IBM', 'CRM', 'HUBS', 'PFE','SBUX','MCD']
   
    @stocks_db = Stock.all
    @stocks_db_symbols = []
    @stocks_db.each do |stock|
      @stocks_db_symbols << stock.symbol 
    end

    stocks_list.each do |symbol|
      if @stocks_db_symbols.exclude?(symbol)
        @stock = Stock.create :symbol => symbol    
      end
    end 

    @featured_stocks =  Stock.where(symbol: stocks_list) 
    
  end 
end
