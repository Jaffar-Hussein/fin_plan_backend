class SourcesController < ApplicationController
    def index
        @sources = Source.all
        render json: { status: 'success', sources: @sources }, status: :ok
    end
      
    def show
        @source = Source.find(params[:id])
        render json: { status: 'success', source: @source }, status: :ok
    end
      
    def new
        @source = Source.new
        render json: { status: 'success', source: @source }, status: :ok
    end
      
    def create
        @source = Source.new(source_params)
        if @source.save
          render json: { status: 'success', source: @source }, status: :created
        else
          render json: { status: 'error', message: @source.errors.full_messages.join(', ') }, status: :unprocessable_entity
        end
    end
      
    def edit
        @source = Source.find(params[:id])
        render json: { status: 'success', source: @source }, status: :ok
    end
      
    def update
        @source = Source.find(params[:id])
        if @source.update(source_params)
          render json: { status: 'success', source: @source }, status: :ok
        else
          render json: { status: 'error', message: @source.errors.full_messages.join(', ') }, status: :unprocessable_entity
        end
    end
      
    def destroy
        @source = Source.find(params[:id])
        @source.destroy
        render json: { status: 'success' }, status: :ok
    end
      
    private
      
    def source_params
        params.require(:source).permit(:name, :type, :amount, :frequency)
    end   
end
