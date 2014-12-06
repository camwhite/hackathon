class LanguagesController < ApplicationController
  before_action :set_language, only: [:show, :edit, :update, :destroy]

  # respond_to :html

  def index
    @languages = Language.all
    render json: @languages
  end

  def show
    @language = Language.find(params[:id])
    render json: @language
  end

  def new
    @language = Language.new
    render json: @language
  end

  def edit
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      render json: @language, status: :created, location: @language
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  def update
    @language = Language.find(params[:id])

    if @language.update(language_params)
      head :no_content
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @language = Language.find(params[:id])
    @language.destroy

    head :no_content
  end

  private
    def set_language
      @language = Language.find(params[:id])
    end

    def language_params
      params.require(:language).permit(:name, :id, :created_at, :updated_at)
    end
end
