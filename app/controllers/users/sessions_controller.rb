class Users::SessionsController < Devise::SessionsController
  def new_guest
    user = User.guest
    sign_in user
    redirect_to root_path, notice: "テストログイン"
  end

  def new_guest_farmer
    user = User.guest_farmer
    sign_in user
    redirect_to root_path, notice: "テストログイン"
  end
end
