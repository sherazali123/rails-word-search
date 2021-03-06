class WordsController < ApplicationController

  before_action :authenticate_user

  def index
    @q = '';
    if !params[:q].blank?
      @q = params[:q]
    end
    @words = Word.search(@q)
  end

  def show
    @word = Word.find_by_id(params[:id])
  end

  def new
      @word = Word.new
  end

  def create
    @word = Word.new(params_word)
    if @word.save
        flash[:notice] = "Success Add Records"
        if params[:commit] == 'གཏན་འཁེལ།' # གཏན་འཁེལ། => Submit
          redirect_to action: 'index'
        else
          redirect_to action: 'new'
        end

    else
        flash[:error] = "Invalid data."
        render 'new'
    end
  end

  def edit
    @word = Word.find_by_id(params[:id])
  end

  def update
    @word = Word.find_by_id(params[:id])
    if @word.update(params_word)
       flash[:notice] = "Success Update Records"
       redirect_to action: 'index'
    else
       flash[:error] = "Invalid data."
       render 'edit'
    end
  end

  def destroy
    @word = Word.find_by_id(params[:id])
    if @word.destroy
        flash[:notice] = "Success Delete a Records"
        redirect_to action: 'index'
    else
        flash[:error] = "Failed to delete."
        redirect_to action: 'index'
    end
  end

  private
    def params_word
        params.require(:word).permit(:title, :description, :volumes_id, :active, :attachment)
    end

end
