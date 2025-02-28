class StocksController < ApplicationController
  def index
    @stocks = Stock.all.order(Arel.sql('ABS(premium_discount) DESC'))
  end

  def show
  end
end
