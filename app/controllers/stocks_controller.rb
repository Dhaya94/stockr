class StocksController < ApplicationController
  before_action :check_for_login

  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find params[:id]
  end
end
