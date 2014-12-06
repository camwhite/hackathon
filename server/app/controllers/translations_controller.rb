class TranslationsController < ApplicationController
  before_action :set_translation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @translations = Translation.all
    render json: @translations
  end

  def show
    render json: @translations
  end

  def new
    @translation = Translation.new
    render json: @translations
  end

  def edit
  end

  def create
    @translation = Translation.new(translation_params)
    @translation.save
    render json: @translations
  end

  def update
    @translation.update(translation_params)
    render json: @translations
  end

  def destroy
    @translation.destroy
    render json: @translations
  end

  private
    def set_translation
      @translation = Translation.find(params[:id])
    end

    def translation_params
      params.require(:translation).permit(:user_id, :status, :fromText, :toText, :fromLanguage, :toLanguage, :completedAt, :status, :translator)
    end
end
