class ListsController < ApplicationController
  def index
    @foods = Food.all
  end
end
