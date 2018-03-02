require('spec_helper')

describe 'the store creation path', {:type => :feature} do
  it 'takes the user to the stores page where they can create a store' do
    visit '/stores'
    fill_in('name', :with => 'The Shoe Store')
    click_button('Add store')
    expect(page).to have_content('The Shoe Store')
  end
end

describe 'the store edit path', {:type => :feature} do
  it 'takes the user to the stores edit page where they can edit a store' do
    Store.create({:name => 'The Shoe Store'})
    visit '/stores'
    click_link('Update or Delete')
    fill_in('name', :with => 'The New Shoe Store')
    click_button('Update')
    expect(page).to have_content('The New Shoe Store')
  end
end

describe 'the store delete path', {:type => :feature} do
  it 'takes the user to the stores edit page where they can edit a store' do
    Store.create({:name => 'The Shoe Store'})
    visit '/stores'
    click_link('Update or Delete')
    click_button('Update')
    expect(page).to have_content('')
  end
end
