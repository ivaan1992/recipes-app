class PublicsController < ApplicationController
  def index
    @public = Recipe.where(public: true)
  end
end