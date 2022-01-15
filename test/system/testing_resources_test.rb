require "application_system_test_case"

class TestingResourcesTest < ApplicationSystemTestCase
  setup do
    @testing_resource = testing_resources(:one)
  end

  test "visiting the index" do
    visit testing_resources_url
    assert_selector "h1", text: "Testing resources"
  end

  test "should create testing resource" do
    visit testing_resources_url
    click_on "New testing resource"

    fill_in "Title", with: @testing_resource.title
    click_on "Create Testing resource"

    assert_text "Testing resource was successfully created"
    click_on "Back"
  end

  test "should update Testing resource" do
    visit testing_resource_url(@testing_resource)
    click_on "Edit this testing resource", match: :first

    fill_in "Title", with: @testing_resource.title
    click_on "Update Testing resource"

    assert_text "Testing resource was successfully updated"
    click_on "Back"
  end

  test "should destroy Testing resource" do
    visit testing_resource_url(@testing_resource)
    click_on "Destroy this testing resource", match: :first

    assert_text "Testing resource was successfully destroyed"
  end
end
