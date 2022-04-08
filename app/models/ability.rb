# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    return unless user.present?
    can :create, Appointment, user: user

    return unless user.admin? # additional permissions for administrators
    can :read, :all

    return if user.admin?
    can :manage, :all
  end
end
