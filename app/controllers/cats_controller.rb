class CatsController < ApplicationController

    def index
        cats = Cat.all
        render json: cats
    end
  
    def create
        cat = Cat.create(cat_params)
        if cat.valid?
          render json: cat
         else
           render json: cat.errors, status: 422
         end
    end
  
    def update
    end
  
    def destroy
    end
    # Handle strong parameters, so we are secure
    private
    def cat_params
      params.require(:cat).permit(:name, :age, :about, :image)
    end
end
