class ReplaceFormsController < ApplicationController
  def new
    @model = ExampleModel.new(model_params)
  end

  def create
    # This would use create instead of new for ActiveRecord.
    @model = ExampleModel.new(model_params)
    if @model.valid?
      # Render whatever template you want here.
      render :success
    else
      # Renders the same form as the :new action. The template should display any validation errors.
      render :new, status: :unprocessable_entity
    end
  end

  private

  def model_params
    params.fetch(:example_model, {}).permit(:error)
  end
end
