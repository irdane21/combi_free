require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get date:string" do
    get bookings_date:string_url
    assert_response :success
  end

  test "should get combi:references" do
    get bookings_combi:references_url
    assert_response :success
  end

  test "should get user:references" do
    get bookings_user:references_url
    assert_response :success
  end

  test "should get review_content:text" do
    get bookings_review_content:text_url
    assert_response :success
  end

  test "should get review_rating:integer" do
    get bookings_review_rating:integer_url
    assert_response :success
  end

  test "should get review_title:string" do
    get bookings_review_title:string_url
    assert_response :success
  end

  test "should get status:boolean" do
    get bookings_status:boolean_url
    assert_response :success
  end

end
