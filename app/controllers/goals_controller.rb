class GoalsController < ApplicationController
    def index
      @goals = Goal.all
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
      @goal = Goal.new(goal_params)
      if @goal.save
        redirect_to @goal
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
        redirect_to @goal
      else
        render 'edit'
      end
      render json: @goal
    end
  
    def destroy
      @goal = Goal.find(params[:id])
      @goal.destroy
      redirect_to goals_path
      render json: @goal
    end
  
    private
  
    def goal_params
      params.require(:goal).permit(:name, :amount, :due_date)
      render json: @goal
    end
end  
