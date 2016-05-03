require 'rails_helper'

feature 'lists page' do
  before :each do
    visit '/lists'
  end

  let(:subject) { FactoryGirl.create list }
  scenario 'viewing the list page' do
    expect(page).to have_content('Lists')
  end
end