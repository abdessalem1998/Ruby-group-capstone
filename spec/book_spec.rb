require_relative '../book'

describe Book do
  context 'When testing Book' do
    it 'the book should print publisher and return true given certain conditions' do
      book = Book.new('Bloombury', 'bad', '10-12-21')

      expect(book.publisher).to eq 'Bloombury'
      expect(book.can_be_archived?).to be true
    end
  end
end
