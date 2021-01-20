class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit update destroy]

  def index
    @cocktails = Cocktail.all
    @image = 'glass.PNG'
  end

  def show
    @img = "color#{[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample}.PNG"
  end

  def new
    @cocktail = Cocktail.new
    @image = 'name.PNG'
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path(@cocktail)
    else
      @image = 'namee.PNG'
      render :new
    end
  end

  def edit
    @image = 'name.PNG'
  end

  def update
    @cocktail.update(cocktail_params)

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy

    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
