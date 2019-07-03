### User Story 2: Space Renter: Listing Spaces Available for Rent

# As a space renter,
# So that I can see available spaces to rent,
# I'd like to search for available spaces by entering from and to dates.
#
# *Space Renter can only see spaces that the space owner has made available.*
# *Space Renter can still see spaces that have a confirmed booking request within the entered dates.*
feature 'list spaces' do
  scenario 'list all spaces available' do
    visit ('/spaces')
    expect(page).to have_content 'All Spaces'
    expect(page).to have_content 'Boardroom'
    expect(page).to have_content 'Hall'
    expect(page).to have_content 'My House'
  end
end
