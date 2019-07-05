feature 'Adding a new user' do
  scenario 'A user can sign up' do
    visit('/signup')
    fill_in('name', with: 'Faisal')
    fill_in('username', with: 'faisalleic')
    fill_in('email', with: 'test@gmail.com')
    fill_in('password', with: 'testpassword')
    click_button('Submit')
    expect(page).to respond_to()
  end
end
