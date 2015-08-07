require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the number converted to change', {:type => :feature}) do
  it('processes the user entry and returns it in change') do
    visit('/')
    fill_in('coin', :with => '100')
    click_button('Go!')
    expect(page).to have_content('Quarters')
  end
end
