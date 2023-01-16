class GoalsController < ApplicationController
  
    def index
      @goals = current_user.goals
      render json: @goals
    end
  
    def show
      @goal = Goal.find(params[:id])
      render json: @goal
    end
  
    def new
      @goal = Goal.new
      render json: @goal
    end
  
    def create
      @goal = current_user.goals.new(goal_params)
      
      if @goal.save
      else
        render 'new'
      end
      render json: @goal
    end
  
    def edit
      @goal = Goal.find(params[:id])
      render json: @goal
    end
  
    def update
      @goal = Goal.find(params[:id])
      if @goal.update(goal_params)
      else
        render 'edit'
      end
      render json: @goal
    end
  
    def destroy
      @goal = Goal.find(params[:id])
      @goal.destroy
      render json: @goal
    end
  
    private
  
    def goal_params
      params.permit(:name, :goal_amount, :amount_saved,:due_date)
    end
end  
