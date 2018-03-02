require('spec_helper')

describe(Store) do
  it { should have_and_belong_to_many(:brands) }

  describe '#capitalize_name' do
    it("capitalizes the first letter of each word in the name") do
      store = Store.create({:name => 'the shoe store'})
      expect(store.name).to(eq('The Shoe Store'))
    end
  end

  it("validates presence of name") do
    store = Store.new({:name => ''})
    expect(store.save).to(eq(false))
  end

  it("ensures the length of name is at most 100 characters") do
    store = Store.new({:name => "a".*(51)})
    expect(store.save()).to(eq(false))
  end

end
