class SearchesController < ApplicationController

  before_action :authenticate_user

  layout "search"

  def index
    @q = ''
  end

  def search
    @q = params[:q]
    if @q.blank?
      @words = []
    else
      @words = Word.search(@q)
    end

  end

  def show
    @word = Word.find(params[:id])
  end
end
