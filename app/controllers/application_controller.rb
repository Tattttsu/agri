class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to root_path, alert: 'マイページより農家として登録してください。'
  end
end
