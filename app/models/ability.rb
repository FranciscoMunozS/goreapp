class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    if user.has_role? :admin
      can :manage, :all
    else
      can :read, Guarantee if user.has_role?(:editor, Guarantee)
      can :create, Guarantee if user.has_role?(:editor, Guarantee)
      can :destroy, Guarantee if user.has_role?(:editor, Guarantee)

      can :read, Guarantee
    end
  end
end
