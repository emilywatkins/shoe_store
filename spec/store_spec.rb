require('spec_helper')

describe(Store) do
  it { should have_and_belong_to_many(:brands) }

  describe '#capitalize' do
    it("capitalizes the first letter of each word in the name") do
      store = Store.create({:name => 'the shoe store'})
      expect(store.name).to(eq('The Shoe Store'))
    end
  end
end
