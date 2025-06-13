require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit quotes_url
  #
  #   assert_selector "h1", text: "Quotes"
  # end

  # Writing System Test by implementing the creation and edition of a quote within the index using Turbo Frames and Turbo Streams
  
  # Setup for the first entry
  setup do
    login_as users(:accountant)
    @quote = Quote.ordered.first
  end
  
  # First Test: Showing a quote
  test "Showing a quote" do 
    visit quotes_path 
    click_link @quote.name 

    assert_selector "h1", text: @quote.name 
  end

  # Second Test: Creating a quote within the index page
  test "Creating a new quote" do 
    visit quotes_path 
    assert_selector "h1", text: "Quotes"

    click_on "New quote"
    fill_in "Name",	with: "Capybara quote" 

    assert_selector "h1", text: "Quotes"
    click_on "Create Quote"

    assert_selector "h1", text: "Quotes"
    assert_text "Capybara quote"
  end

  # Third Test: Updating a quote
  test "Updating a quote" do 
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    click_on "Edit", match: :first
    fill_in "Name", with: "Updated quote"

    assert_selector "h1", text: "Quotes"
    click_on "Update Quote"

    assert_selector "h1", text: "Quotes"
    assert_text "Updated quote"
  end

  # Fourth Test: Deleting a quote
  test "Deleting a quote" do
    visit quotes_path
    assert_text @quote.name

    click_on "Delete", match: :first 
    assert_no_text @quote.name   
  end
end
