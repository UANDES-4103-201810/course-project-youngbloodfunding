require 'test_helper'

class BackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backer = backers(:one)
  end

  test "should get index" do
    get backers_url
    assert_response :success
  end

  test "should get new" do
    get new_backer_url
    assert_response :success
  end

  test "should create backer" do
    assert_difference('Backer.count') do
      post backers_url, params: { backer: {  } }
    end

    assert_redirected_to backer_url(Backer.last)
  end

  test "should show backer" do
    get backer_url(@backer)
    assert_response :success
  end

  test "should get edit" do
    get edit_backer_url(@backer)
    assert_response :success
  end

  test "should update backer" do
    patch backer_url(@backer), params: { backer: {  } }
    assert_redirected_to backer_url(@backer)
  end

  test "should destroy backer" do
    assert_difference('Backer.count', -1) do
      delete backer_url(@backer)
    end

    assert_redirected_to backers_url
  end
end
