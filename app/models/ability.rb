class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :admin
      can :manage, :all
    else
      can :update, Guarantee do |guarantee|
        guarantee.user == user
      end
      can :read, :all
    end
  end
end
