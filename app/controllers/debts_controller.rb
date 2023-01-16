class DebtsController < ApplicationController
    def index
        @debts = current_user.debts
        render json: @debts
    end
    
    def show
        @debt = Debt.find(params[:id])
        render json: @debt
    end
    
    def new
        @debt = Debt.new
        render json: @debt
    end
    
    def create
        @debt = current_user.debts.new(debt_params)
        if @debt.save
        else
          render 'new'
        end
        render json: @debt
    end
    
    def edit
        @debt = Debt.find(params[:id])
        render json: @debt
    end
    
    def update
        @debt = Debt.find(params[:id])
        if @debt.update(debt_params)
          redirect_to @debt
        else
          render 'edit'
        end
        render json: @debt
    end
    
    def destroy
        @debt = Debt.find(params[:id])
        @debt.destroy
        redirect_to debts_path
        render json: @debt
    end
    
    private
    
    def debt_params
        params.permit(:name, :amount_due,:amount_paid, :due_date)
    end

end
