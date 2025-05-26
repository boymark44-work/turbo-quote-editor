require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit quotes_url
  #
  #   assert_selector "h1", text: "Quotes"
  # end

  setup do
    @quote = quotes(:first) # Reference to the first fixture quote
  end

  # Test for "Creating a new quote". It is the first test that we wrote
  test "Creating a new quote" do 
    # When we visit the quotes#index page, 
    # we expect to see a title with the text "Quotes"  
    visit quotes_path 
    assert_selector "h1", text: "Quotes"

    # When we click on the link with the text "New quote", 
    # we expect to land on a page with the title "New quote"
    click_on "New quote"
    assert_selector "h1", text: "New quote"

    # When we fill in the name input with "Capybara quote",
    # and we click on "Create quote"
    fill_in "Name", with: "Capybara quote"
    click_on "Create Quote"

    # We expect to be back on the page with the title "Quotes",
    # and to see our "Capybara quote" added to that list
    assert_selector "h1", text: "Quotes"
    assert_text "Capybara quote"
  end

  # Test for "Showing a quote"
  test "Showing a quote" do
    visit quotes_path
    click_link @quote.name   

    assert_selector "h1", text: @quote.name 
  end

  # Test for "Updating a quote"
  test "Updating a quote" do
    visit quotes_path 
    assert_selector "h1", text: "Quotes"

    click_on "Edit", match: :first  
    assert_selector "h1", text: "Edit quote"

    fill_in "Name", with: "Updated quote"
    click_on "Update Quote"

    assert_selector "h1", text: "Quotes"
    assert_text "Updated quote"
  end

  # Test for "Destroying a quote"
  test "Destroying a quote" do
    visit quotes_path
    assert_text @quote.name   

    click_on "Delete", match: :first
    assert_no_text @quote.name
  end
end
