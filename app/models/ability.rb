# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    can :manage, :all
    case user.role
    when 2
      can :access_admin_page, :all
    when 1
      cannot :access_admin_page, :all
    else
      cannot :create, :all
      cannot :access_admin_page, :all
    end
  end
end
