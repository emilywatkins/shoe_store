class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates(:name, {:presence => true})
  before_save(:capitalize_name)

  def capitalize_name
    self.name = name.split.map(&:capitalize).join(' ')
  end
end
