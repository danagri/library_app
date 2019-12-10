require 'test_helper'

class BorrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrow = borrows(:one)
  end

  test "should get index" do
    get borrows_url
    assert_response :success
  end

  test "should get new" do
    get new_borrow_url
    assert_response :success
  end

  test "should create borrow" do
    assert_difference('Borrow.count') do
      post borrows_url, params: { borrow: { book_id: @borrow.book_id, date_borrow: @borrow.date_borrow, date_return: @borrow.date_return, name: @borrow.name, who_borrow: @borrow.who_borrow } }
    end

    assert_redirected_to borrow_url(Borrow.last)
  end

  test "should show borrow" do
    get borrow_url(@borrow)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrow_url(@borrow)
    assert_response :success
  end

  test "should update borrow" do
    patch borrow_url(@borrow), params: { borrow: { book_id: @borrow.book_id, date_borrow: @borrow.date_borrow, date_return: @borrow.date_return, name: @borrow.name, who_borrow: @borrow.who_borrow } }
    assert_redirected_to borrow_url(@borrow)
  end

  test "should destroy borrow" do
    assert_difference('Borrow.count', -1) do
      delete borrow_url(@borrow)
    end

    assert_redirected_to borrows_url
  end
end
