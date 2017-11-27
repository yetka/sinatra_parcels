require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes the user entry and returns the shipping cost of parcel') do
    visit('/')
    fill_in('length', :with => '2')
    fill_in('width', :with => '2')
    fill_in('depth', :with => '8')
    fill_in('weight', :with => '5')
    click_button('Go!')
    expect(page).to have_content('You inputted length 2 ,width 2, depth 8  and weight 5.
    Shipping cost for your parcel: 160
    Return to home page')
  end
end
