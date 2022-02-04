# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: '1984'
    fill_in 'Author', with: 'George Orwell'
    fill_in 'Price', with: '13.99'
    select '2022', :from => 'book_published_date_1i'      
    select 'June', :from => 'book_published_date_2i'  
    select '8', :from => 'book_published_date_3i'        

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1984')
    expect(page).to have_content('George Orwell')
    expect(page).to have_content('13.99')
    expect(page).to have_content('2022-06-08')
  end
end