require('spec_helper')

describe 'the brand creation path', {:type => :feature} do
  it 'takes the user to the brands page where they can create a brand' do
    visit '/brands'
    fill_in('name', :with => 'The Shoe Brand')
    fill_in('price', :with => 50)
    click_button('Add brand')
    expect(page).to have_content('The Shoe Brand')
  end
end
