class ExternalRedirectsController < ApplicationController
  def new
    @model = ExampleModel.new(model_params)
  end

  def create
    # This would use create instead of new for ActiveRecord.
    @model = ExampleModel.new(model_params)
    if @model.valid?
      # Redirect to external URL.
      @url = "https://example.com"
      respond_to do |format|
        format.html { redirect_to @url, allow_other_host: true, status: :see_other }
        # This will render create.turbo_stream.erb
        format.turbo_stream
      end
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
