class PagesController < ApplicationController
  before_action :check_for_login
  def home
    @stocks = Stock.all
  end
end
