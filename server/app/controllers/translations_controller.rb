class TranslationsController < ApplicationController
  before_action :set_translation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @translations = Translation.all
    render json: @translations
  end

  def show
    @translation = Translation.find(params[:id])
    render json: @translation
  end

  def new
    @translation = Translation.new
    render json: @translation
  end

  def edit
  end

  def create
    @translation = Translation.new(translation_params)
    if @translation.save
      render json: @translation, status: :created, location: @translation
    else
      render json: @translation.errors, status: :unprocessable_entity
    end
  end

  def update
    @translation = Translation.find(params[:id])

    if @translation.update(translation_params)
      head :no_content
    else
      render json: @translation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @translation = Translation.find(params[:id])
    @translation.destroy

    head :no_content
  end

  private
    def set_translation
      @translation = Translation.find(params[:id])
    end

    def translation_params
      params.require(:translation).permit(:user_id, :status, :fromText, :toText, :fromLanguage,
      :toLanguage, :completedAt, :status, :translator, :id, :created_at, :updated_at)
    end
end
