require 'test_helper'

class BackedProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backed_project = backed_projects(:one)
  end

  test "should get index" do
    get backed_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_backed_project_url
    assert_response :success
  end

  test "should create backed_project" do
    assert_difference('BackedProject.count') do
      post backed_projects_url, params: { backed_project: {  } }
    end

    assert_redirected_to backed_project_url(BackedProject.last)
  end

  test "should show backed_project" do
    get backed_project_url(@backed_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_backed_project_url(@backed_project)
    assert_response :success
  end

  test "should update backed_project" do
    patch backed_project_url(@backed_project), params: { backed_project: {  } }
    assert_redirected_to backed_project_url(@backed_project)
  end

  test "should destroy backed_project" do
    assert_difference('BackedProject.count', -1) do
      delete backed_project_url(@backed_project)
    end

    assert_redirected_to backed_projects_url
  end
end
