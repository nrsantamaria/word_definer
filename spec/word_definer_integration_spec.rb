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

describe('the add a definition path', {:type => :feature}) do
  it('processes the user entry and adds a new definition to the definition list') do
    visit('/word/1')
    fill_in('definition', :with => 'Burning ball of gas')
    click_button('Add Definition')
    expect(page).to have_content('Burning ball of gas')
  end
end

describe('the add a word path', {:type => :feature}) do
  it('processes the user entry and adds another new word to the word list') do
    visit('/word_form')
    fill_in('word', :with => 'Asteroid')
    click_button('Add Word')
    expect(page).to have_content('Asteroid')
  end
end

describe('the sort words path', {:type => :feature}) do
  it('has a link that will allow users to sort words') do
    visit('/')
    click_link('Sort Words')
    expect(page).to have_content('Asteroid')
  end
end

describe('the remove words path', {:type => :feature}) do
  it('has a link that will allow users to remove words') do
    visit('/')
    click_link('Remove Words')
    expect(page).to have_content('Add a Word')
  end
end
