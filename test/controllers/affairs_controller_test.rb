require 'test_helper'

class AffairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @affair = affairs(:one)
  end

  test "should get index" do
    get affairs_url
    assert_response :success
  end

  test "should get new" do
    get new_affair_url
    assert_response :success
  end

  test "should create affair" do
    assert_difference('Affair.count') do
      post affairs_url, params: { affair: { date: @affair.date, description: @affair.description, location: @affair.location, name: @affair.name, website: @affair.website } }
    end

    assert_redirected_to affair_url(Affair.last)
  end

  test "should show affair" do
    get affair_url(@affair)
    assert_response :success
  end

  test "should get edit" do
    get edit_affair_url(@affair)
    assert_response :success
  end

  test "should update affair" do
    patch affair_url(@affair), params: { affair: { date: @affair.date, description: @affair.description, location: @affair.location, name: @affair.name, website: @affair.website } }
    assert_redirected_to affair_url(@affair)
  end

  test "should destroy affair" do
    assert_difference('Affair.count', -1) do
      delete affair_url(@affair)
    end

    assert_redirected_to affairs_url
  end
end
