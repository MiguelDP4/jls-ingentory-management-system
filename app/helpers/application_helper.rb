module ApplicationHelper
  def show_flashes(flash)
    return_html = ''
    flash.each do |message_type, message|
      return_html += tag.div(message, class: "#{message_type}")
    end
    return_html.html_safe
  end
  
  def account_buttons
    if user_signed_in?
      (link_to("Edit Account", edit_user_registration_path)+link_to("Log Out", destroy_user_session_path, {method: :delete}))
    else
      (link_to("Log In", new_user_session_path)+link_to("Sign Up", new_user_registration_path))
    end
  end
end
