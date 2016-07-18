require 'rails_helper'

feature 'picture' do
  context 'no pictures have been added' do
    scenario 'should display a prompt to add a picture' do
      visit '/pictures'
      expect(page).to have_content('No pictures yet')
      expect(page).to have_link('Add picture')
    end
  end

  context 'pictures ahve been added' do
    before do
      Picture.create(:name 'cat')
    end

    scenario 'show pictures' do
      visit '/pictures'
      expect(page)to have_content('what a grate picture')
    end
  end
end
