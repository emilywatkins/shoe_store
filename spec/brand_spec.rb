require('spec_helper')

describe(Brand) do
  it { should have_and_belong_to_many(:stores) }

  describe '#capitalize_name' do
    it("capitalizes the first letter of each word in the name") do
      brand = Brand.create({:name => 'the shoe brand'})
      expect(brand.name).to(eq('The Shoe Brand'))
    end
  end

  it("validates presence of name") do
    brand = Brand.new({:name => ''})
    expect(brand.save).to(eq(false))
  end
end
