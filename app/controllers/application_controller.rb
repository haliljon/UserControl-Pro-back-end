class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def current_ability
        @current_ability ||= Ability.new(@current_user)
    end
end
