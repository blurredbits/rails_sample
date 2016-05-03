require 'rails_helper'

feature 'view home page' do
  before :each do
    visit '/'
  end

  scenario 'when viewing the home page' do
    expect(page).to have_content 'Welcome to the Task List'
    expect(page).to have_link 'About'
  end

  scenario 'click the about link' do
    click_link 'About'
    expect(page).to have_content 'About page'
  end
  
  scenario 'click the contact link' do
    click_link 'Contact'
    expect(page).to have_content 'Contact page'
  end
end


