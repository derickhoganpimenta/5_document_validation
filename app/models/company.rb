require_relative 'person.rb'

class Company < Person
  DOCUMENT_REGEX = "^\d{2}.\d{3}.\d{3}/\d{4}-\d{2}$"

  validates :document, presence: true, format: {
    with: DOCUMENT_REGEX, message: "Invalid document" }
end
