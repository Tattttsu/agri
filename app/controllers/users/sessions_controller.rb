class Users::SessionsController < Devise::SessionsController
  def new_guest
    user = User.find(2)
    sign_in user
    redirect_to root_path, notice: "テストログイン"
  end

  def new_guest_farmer
    user = User.find(3)
    sign_in user
    redirect_to root_path, notice: "農家としてテストログイン"
  end
end
