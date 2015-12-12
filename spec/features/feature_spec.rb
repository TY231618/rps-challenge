require 'capybara'
require_relative '../../app.rb'

include Capybara::DSL

describe 'user specs' do
  Capybara.default_driver = :selenium

  feature 'entering name' do
    scenario 'allows user to enter name to start game' do
      visit 'http://localhost:9292/'
      fill_in('name', with: 'Tony')
      click_button('Start Game')
      expect(page).to have_content('Tony')
    end
  end

  feature 'making choice' do
    scenario 'allows user to pick rock' do
      visit 'http://localhost:9292/'
      fill_in('name', with: 'Tony')
      click_button('Start Game')
      click_button('Rock')
      expect(page).to have_content('You chose Rock')
    end

    scenario 'allows user to pick paper' do
      visit 'http://localhost:9292/'
      fill_in('name', with: 'Tony')
      click_button('Start Game')
      click_button('Paper')
      expect(page).to have_content('You chose Paper')
    end

    scenario 'allows user to pick scissors' do
      visit 'http://localhost:9292/'
      fill_in('name', with: 'Tony')
      click_button('Start Game')
      click_button('Scissors')
      expect(page).to have_content('You chose Scissors')
    end
  end
end
