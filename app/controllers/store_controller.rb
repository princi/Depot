class StoreController < ApplicationController
  def index
  	@Product = Product.all
  end
end
