require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { add1: @profile.add1, add2: @profile.add2, county: @profile.county, fname: @profile.fname, lname: @profile.lname, mob: @profile.mob, postcode: @profile.postcode, tel: @profile.tel, town: @profile.town }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    put :update, id: @profile, profile: { add1: @profile.add1, add2: @profile.add2, county: @profile.county, fname: @profile.fname, lname: @profile.lname, mob: @profile.mob, postcode: @profile.postcode, tel: @profile.tel, town: @profile.town }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
