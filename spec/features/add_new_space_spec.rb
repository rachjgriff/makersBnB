# ### User Story 1: Space Owner: Create New Space
#
# As a space owner,
# So that I can hire out my space,
# I'd like to add a name, a short description, the price per night and available date range.

feature 'add space' do
  scenario 'add a single space with name' do
    visit('/spaces/new')

    expect(page).to have_content("Enter a name for the new space")
    fill_in('name', with: "Team Scorchio's House")
    click_button('Add')
  end
end
