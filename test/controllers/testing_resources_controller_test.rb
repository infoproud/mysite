require "test_helper"

class TestingResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testing_resource = testing_resources(:one)
  end

  test "should get index" do
    get testing_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_testing_resource_url
    assert_response :success
  end

  test "should create testing_resource" do
    assert_difference("TestingResource.count") do
      post testing_resources_url, params: { testing_resource: { title: @testing_resource.title } }
    end

    assert_redirected_to testing_resource_url(TestingResource.last)
  end

  test "should show testing_resource" do
    get testing_resource_url(@testing_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_testing_resource_url(@testing_resource)
    assert_response :success
  end

  test "should update testing_resource" do
    patch testing_resource_url(@testing_resource), params: { testing_resource: { title: @testing_resource.title } }
    assert_redirected_to testing_resource_url(@testing_resource)
  end

  test "should destroy testing_resource" do
    assert_difference("TestingResource.count", -1) do
      delete testing_resource_url(@testing_resource)
    end

    assert_redirected_to testing_resources_url
  end
end
