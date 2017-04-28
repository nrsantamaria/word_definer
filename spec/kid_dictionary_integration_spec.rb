require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the index/word list path', {:type => :feature}) do
  it('has a button that will allow users to create a new word to add to the word list') do
    visit('/')
    click_link('Add a Word')
    expect(page).to have_content('Enter a New Word Here:')
  end
end
