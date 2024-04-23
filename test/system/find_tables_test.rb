require "application_system_test_case"

class FindTablesTest < ApplicationSystemTestCase
  setup do
    @find_table = find_tables(:one)
  end

  test "visiting the index" do
    visit find_tables_url
    assert_selector "h1", text: "Find tables"
  end

  test "should create find table" do
    visit find_tables_url
    click_on "New find table"

    fill_in "First name", with: @find_table.first_name
    fill_in "Last name", with: @find_table.last_name
    fill_in "Related names", with: @find_table.related_names
    fill_in "Table number", with: @find_table.table_number
    click_on "Create Find table"

    assert_text "Find table was successfully created"
    click_on "Back"
  end

  test "should update Find table" do
    visit find_table_url(@find_table)
    click_on "Edit this find table", match: :first

    fill_in "First name", with: @find_table.first_name
    fill_in "Last name", with: @find_table.last_name
    fill_in "Related names", with: @find_table.related_names
    fill_in "Table number", with: @find_table.table_number
    click_on "Update Find table"

    assert_text "Find table was successfully updated"
    click_on "Back"
  end

  test "should destroy Find table" do
    visit find_table_url(@find_table)
    click_on "Destroy this find table", match: :first

    assert_text "Find table was successfully destroyed"
  end
end
