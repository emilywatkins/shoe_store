require('spec_helper')

describe 'the store creation path', {:type => :feature} do
  it 'takes the user to the stores page where they can create a store' do
    visit '/stores'
    fill_in('name', :with => 'The Shoe Store')
    click_button('Add store')
    expect(page).to have_content('The Shoe Store')
  end
end
