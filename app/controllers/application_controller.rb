class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to root_path, alert: '「農家の方はこちら」から登録してください。'
  end
end
