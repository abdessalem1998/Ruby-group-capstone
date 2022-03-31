require_relative '../label'
require_relative '../book'

describe Label do
  context 'When testing label' do
    it 'the given label should be added go given book' do
      book = Book.new('Bloombury', 'bad', '10-12-21')
      label = Label.new('Harry Potter', 'Black')

      label.add_item(book)
      expect(book.label.title).to eq 'Harry Potter'
    end
  end
end
