class RetirementsController < ApplicationController
    def index
        @retirements = Retirement.all
        render json: @retirements
    end
    
    def show
        @retirement = Retirement.find(params[:id])
        render json: @retirement
    end
    
    def new
        @retirement = Retirement.new
        render json: @retirement
    end
    
    def create
        @retirement = Retirement.new(retirement_params)
        if @retirement.save
        else
          render 'new'
        end
        render json: @retirement
    end
    
    def edit
        @retirement = Retirement.find(params[:id])
        render json: @retirements
    end
    
    def update
        @retirement = Retirement.find(params[:id])
        if @retirement.update(retirement_params)
        else
          render 'edit'
        end
        render json: @retirements
    end
    
    def destroy
        @retirement = Retirement.find(params[:id])
        @retirement.destroy
        render json: @retirement
    end
    
    private
    
    def retirement_params
        params.require(:retirement).permit(:years, :amount_so_far, :goal, :sources)
    end
end
