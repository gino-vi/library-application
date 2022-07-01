module UsersHelper

    def full_name
        current_user.first_name + " " + current_user.last_name
    end

    def not_logged_in_checkout
        return "You are currently not signed in. To check out books from this library, we require you to have an account. Please #{link_to 'register', new_user_registration_path} or #{link_to 'login', new_user_session_path}.".html_safe
    end

    def not_logged_in_users
        return "You are currently not signed in. To view this page, we require you to have an account. Please #{link_to 'register', new_user_registration_path} or #{link_to 'login', new_user_session_path}.".html_safe
    end

    def user_is_not_admin
        return "You tried to access a page you don't have permission to view. Navigate through the site using the navbar at the top."
    end

end
