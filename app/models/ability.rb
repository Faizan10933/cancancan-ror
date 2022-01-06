# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # if user.admin?
    #   can :manage, :all
    # else
    #   can :manage, Post1, user_id: user.id
    #   can :read, :all
    # end

    # if admin.has_role? :moderator
    #   can :read, :Post1
    # else
    #   can :read, :Post1
    # end
    
    if admin_user.has_role? :admin
      can :manage, :all
    else
      can :read, :all
      can :manage, Post1 if admin_user.has_role?(:moderator, Post1)
      # can :write, Forum, :id => Forum.with_role(:moderator, user).pluck(:id)
      
    end
    
# can :manage, Forum if admin.has_role?(:moderator, Post1)
      # can :write, Forum, :id => Forum.with_role(:moderator, user).pluck(:id)

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
