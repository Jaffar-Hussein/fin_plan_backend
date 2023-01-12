class RetirementsController < ApplicationController
    def index
        @retirements = Retirement.all
    end
    
    def show
        @retirement = Retirement.find(params[:id])
    end
    
    def new
        @retirement = Retirement.new
    end
    
    def create
        @retirement = Retirement.new(retirement_params)
        if @retirement.save
          redirect_to @retirement
        else
          render 'new'
        end
    end
    
    def edit
        @retirement = Retirement.find(params[:id])
    end
    
    def update
        @retirement = Retirement.find(params[:id])
        if @retirement.update(retirement_params)
          redirect_to @retirement
        else
          render 'edit'
        end
    end
    
    def destroy
        @retirement = Retirement.find(params[:id])
        @retirement.destroy
        redirect_to retirements_path
    end
    
    private
    
    def retirement_params
        params.require(:retirement).permit(:years, :amount_so_far, :goal, :sources)
    end
end
