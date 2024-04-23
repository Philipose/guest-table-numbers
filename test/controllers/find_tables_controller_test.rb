require "test_helper"

class FindTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @find_table = find_tables(:one)
  end

  test "should get index" do
    get find_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_find_table_url
    assert_response :success
  end

  test "should create find_table" do
    assert_difference("FindTable.count") do
      post find_tables_url, params: { find_table: { first_name: @find_table.first_name, last_name: @find_table.last_name, related_names: @find_table.related_names, table_number: @find_table.table_number } }
    end

    assert_redirected_to find_table_url(FindTable.last)
  end

  test "should show find_table" do
    get find_table_url(@find_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_find_table_url(@find_table)
    assert_response :success
  end

  test "should update find_table" do
    patch find_table_url(@find_table), params: { find_table: { first_name: @find_table.first_name, last_name: @find_table.last_name, related_names: @find_table.related_names, table_number: @find_table.table_number } }
    assert_redirected_to find_table_url(@find_table)
  end

  test "should destroy find_table" do
    assert_difference("FindTable.count", -1) do
      delete find_table_url(@find_table)
    end

    assert_redirected_to find_tables_url
  end
end
