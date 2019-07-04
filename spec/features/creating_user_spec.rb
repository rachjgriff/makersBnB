feature 'Adding a new user' do
  scenario 'A user can sign up' do
    visit('/signup')
    fill_in('name', with: 'Faisal')
    fill_in('username', with: 'faisalleic')
    fill_in('email', with: 'test@gmail.com')
    click_button('Submit')

    expect(page).to have_content 'Faisal'
    expect(page).to have_content 'faisalleic'
    expect(page).to have_content 'test@gmail.com'
  end
end
