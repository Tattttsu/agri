# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.role == 1
      can :manage, :all
      can :access_admin_page, :all
    elsif user.role == 2
      can :manage, :all
      cannot :access_admin_page, :all
    else
      can :manage, :all
      cannot :create, :all
      cannot :access_admin_page, :all
    end
  end
end
