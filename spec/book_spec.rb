require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "seeded data" do
    it "should have at least 5 books in test database" do
      expect(Book.count).to be >= 5
    end
    
    it "should have test-specific book titles" do
      book = Book.first
      expect(book.title).to include("Test Book")
    end
    
    it "can create a new book with valid title" do
      book = Book.new(title: "RSpec Test Book")
      expect(book.save).to be true
      expect(book.title).to eq("RSpec Test Book")
    end
    
    it "lists all seeded books" do
      books = Book.all
      expect(books.count).to be >= 5
      
      books.each do |book|
        expect(book.title).to be_present
        expect(book.title).to include("Test Book")
      end
    end
  end
end