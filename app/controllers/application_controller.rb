class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # before_action :authorize

  def current_user
    User.find_by(id: session[:current_user])
  end

  def authorize
    return render json: { error: "Not Authorized" }, status: :unauthorized unless current_user
  end

  def admin
    return render json: { error: "Not Authorized" }, status: :unauthorized unless current_user.admin
  end

  private

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_not_found_response(invalid)
    render json: { errors: invalid }, status: :not_found
  end

end
