class Ability
include CanCan::Ability

def initialize(user)
    return if user.nil?
    return unless user.present?
        can :read, Book, current_user: user
    return unless user.admin?
        can :manage, Book

end
end 