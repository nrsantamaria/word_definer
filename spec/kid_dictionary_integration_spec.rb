require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the index/word list path', {:type => :feature}) do
  it('has a button with a link that will allow users to create a new word to add to the word list') do
    visit('/')
    click_link('Add a Word')
    expect(page).to have_content('Enter a New Word Here:')
  end
end

describe('the add a word path', {:type => :feature}) do
  it('processes the user entry and adds a new word to the word list') do
    visit('/word_form')
    fill_in('word', :with => 'Star')
    click_button('Add Word')
    expect(page).to have_content('Star')
  end
end

describe('the index/word list path', {:type => :feature}) do
  it('has a link that will allow users to view a word on the word list') do
    visit('/')
    click_link('Star')
    expect(page).to have_content('Enter a New Definition Here:')
  end
end
