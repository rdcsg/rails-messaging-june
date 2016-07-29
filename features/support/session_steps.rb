module SessionStepsHarness

  def current_user_name
    element = page.first('.current_user')
    element && element.text
  end

  def signed_in?
    current_user_name.present?
  end

  def sign_in(user, password = 'secret')
    visit new_session_path
    fill_in 'E-mail', :with => user.email
    fill_in 'Password', :with => password
    click_button 'Sign in'
  end

  def sign_out
    click_link 'Sign out'
  end

end

World(SessionStepsHarness)
