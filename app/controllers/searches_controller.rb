class SearchesController < ApplicationController

  # before_action :authenticate_user

  layout "search"

  def index
    @q = ''
    @volumes = Volume.all.order(:id)
  end

  def volume
    @v = params[:v]

    if @v.blank?
      @words = []
    else
      @words = Word.search_by_volume(@v)
    end

    render "search"
  end

  def search
    @q = params[:q]
    @v = params[:v]

    if @v.blank?
      if @q.blank?
        @words = []
      else
        @words = Word.search(@q)
      end
    else
      if @q.blank?
        @words = []
      else
        @words = Word.search_by_volume(@v).search(@q)
      end
    end

  end

  def show
    @word = Word.find(params[:id])
  end
end
