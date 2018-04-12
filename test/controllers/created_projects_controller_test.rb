require 'test_helper'

class CreatedProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @created_project = created_projects(:one)
  end

  test "should get index" do
    get created_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_created_project_url
    assert_response :success
  end

  test "should create created_project" do
    assert_difference('CreatedProject.count') do
      post created_projects_url, params: { created_project: {  } }
    end

    assert_redirected_to created_project_url(CreatedProject.last)
  end

  test "should show created_project" do
    get created_project_url(@created_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_created_project_url(@created_project)
    assert_response :success
  end

  test "should update created_project" do
    patch created_project_url(@created_project), params: { created_project: {  } }
    assert_redirected_to created_project_url(@created_project)
  end

  test "should destroy created_project" do
    assert_difference('CreatedProject.count', -1) do
      delete created_project_url(@created_project)
    end

    assert_redirected_to created_projects_url
  end
end
