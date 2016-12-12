require 'test_helper'

class CustomersStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customers_status = customers_statuses(:one)
  end

  test "should get index" do
    get customers_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_customers_status_url
    assert_response :success
  end

  test "should create customers_status" do
    assert_difference('CustomersStatus.count') do
      post customers_statuses_url, params: { customers_status: {  } }
    end

    assert_redirected_to customers_status_url(CustomersStatus.last)
  end

  test "should show customers_status" do
    get customers_status_url(@customers_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_customers_status_url(@customers_status)
    assert_response :success
  end

  test "should update customers_status" do
    patch customers_status_url(@customers_status), params: { customers_status: {  } }
    assert_redirected_to customers_status_url(@customers_status)
  end

  test "should destroy customers_status" do
    assert_difference('CustomersStatus.count', -1) do
      delete customers_status_url(@customers_status)
    end

    assert_redirected_to customers_statuses_url
  end
end
