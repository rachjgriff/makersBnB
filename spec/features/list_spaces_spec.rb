### User Story 2: Space Renter: Listing Spaces Available for Rent

# As a space renter,
# So that I can see available spaces to rent,
# I'd like to search for available spaces by entering from and to dates.
#
# *Space Renter can only see spaces that the space owner has made available.*
# *Space Renter can still see spaces that have a confirmed booking request within the entered dates.*
feature 'list spaces' do
  scenario 'list all spaces available' do
    connection = PG.connect(dbname: 'makers_bnb_test')
    db_query_result = connection.exec("INSERT INTO spaces (name) VALUES ('Rachels house');")
    connection.exec("INSERT INTO spaces (name) VALUES ('Aleks house');")
    connection.exec("INSERT INTO spaces (name) VALUES ('James house');")
    connection.exec("INSERT INTO spaces (name) VALUES ('Faisal house');")
    
    visit ('/spaces')
    expect(page).to have_content 'Rachels house'
    expect(page).to have_content 'Aleks house'
    expect(page).to have_content 'James house'
    expect(page).to have_content 'Faisal house'
  end
end
