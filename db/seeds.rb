# db/seeds.rb

# Clear existing data to avoid duplicates
Book.delete_all

# Create seed data based on environment
if Rails.env.development?
  puts "Seeding development database..."
  
  Book.create!([
    { title: "The Ruby Programming Language" },
    { title: "Rails Guide for Beginners" },
    { title: "Advanced Web Development" },
    { title: "Database Design Patterns" },
    { title: "Test-Driven Development with Rails" },
    { title: "DevOps for Ruby Applications" },
    { title: "Building REST APIs with Rails" }
  ])
  
  puts "Created #{Book.count} books in development database"

elsif Rails.env.test?
  puts "Seeding test database..."
  
  Book.create!([
    { title: "Test Book Alpha" },
    { title: "Test Book Beta" },
    { title: "Test Book Gamma" },
    { title: "Test Book Delta" },
    { title: "Test Book Epsilon" },
    { title: "Test Book Zeta" }
  ])
  
  puts "Created #{Book.count} books in test database"

elsif Rails.env.production?
  puts "Seeding production database..."
  
  Book.create!([
    { title: "Clean Code: A Handbook of Agile Software Craftsmanship" },
    { title: "Design Patterns: Elements of Reusable Object-Oriented Software" },
    { title: "Refactoring: Improving the Design of Existing Code" },
    { title: "The Pragmatic Programmer: Your Journey To Mastery" },
    { title: "Code Complete: A Practical Handbook of Software Construction" },
    { title: "Working Effectively with Legacy Code" },
    { title: "Domain-Driven Design: Tackling Complexity in the Heart of Software" },
    { title: "Continuous Delivery: Reliable Software Releases" }
  ])
  
  puts "Created #{Book.count} books in production database"

else
  puts "Unknown environment: #{Rails.env}"
  
  # Default fallback data
  Book.create!([
    { title: "Default Book One" },
    { title: "Default Book Two" },
    { title: "Default Book Three" },
    { title: "Default Book Four" },
    { title: "Default Book Five" }
  ])
  
  puts "Created #{Book.count} books in #{Rails.env} database"
end

puts "Database seeding completed!"