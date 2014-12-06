class LanguagesController < ApplicationController
  before_action :set_language, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @languages = Language.all
    render json: @languages
  end

  def show
render json: @languages
  end

  def new
    @language = Language.new
    render json: @languages
  end

  def edit
  end

  def create
    @language = Language.new(language_params)
    @language.save
    render json: @languages
  end

  def update
    @language.update(language_params)
    render json: @languages
  end

  def destroy
    @language.destroy
    render json: @languages
  end

  private
    def set_language
      @language = Language.find(params[:id])
    end

    def language_params
      params.require(:language).permit(:name)
    end
end
