# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can :manage, Blog
      if user.admin?
        can :manage, :all
      end
    end
  end
end
