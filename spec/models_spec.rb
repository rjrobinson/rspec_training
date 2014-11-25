require 'book'

describe Book do
  it 'fails to create an empty book' do
    book = build(:book)

    expect(book.save).to be_falsey
  end
end
