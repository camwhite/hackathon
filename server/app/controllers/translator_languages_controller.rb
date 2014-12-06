class TranslatorLanguagesController < ApplicationController
  before_action :set_translator_language, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @translator_languages = TranslatorLanguage.all
    render json: @translator_languages
  end

  def show
    render json: @translator_language
  end

  def new
    @translator_language = TranslatorLanguage.new
    render json: @translator_language
  end

  def edit
  end

  def create
    @translator_language = TranslatorLanguage.new(translator_language_params)
    if @translator_language.save
      render json: @translator_language, status: :created, location: @translator_language
    else
      render json: @translator_language.errors, status: :unprocessable_entity
    end
  end

  def update
    @if @translator_language.update(translator_params)
      head :no_content
    else
      render json: @translator_language.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @translator_language.destroy
    head :no_content
  end

  private
    def set_translator_language
      @translator_language = TranslatorLanguage.find(params[:id])
    end

    def translator_language_params
      params.require(:translator_language).permit(:User, :Language)
    end
end
