class ExampleModel
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :error, :boolean

  validates :error, comparison: {equal_to: false}, allow_blank: true
end
