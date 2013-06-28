require 'test_helper'

class OrganizationNamesControllerTest < ActionController::TestCase
  setup do
    @organization_name = organization_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_name" do
    assert_difference('OrganizationName.count') do
      post :create, organization_name: { location: @organization_name.location, type_of_training: @organization_name.type_of_training }
    end

    assert_redirected_to organization_name_path(assigns(:organization_name))
  end

  test "should show organization_name" do
    get :show, id: @organization_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization_name
    assert_response :success
  end

  test "should update organization_name" do
    put :update, id: @organization_name, organization_name: { location: @organization_name.location, type_of_training: @organization_name.type_of_training }
    assert_redirected_to organization_name_path(assigns(:organization_name))
  end

  test "should destroy organization_name" do
    assert_difference('OrganizationName.count', -1) do
      delete :destroy, id: @organization_name
    end

    assert_redirected_to organization_names_path
  end
end
