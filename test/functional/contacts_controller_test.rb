require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { add1: @contact.add1, add2: @contact.add2, company: @contact.company, county: @contact.county, email: @contact.email, fname: @contact.fname, lname: @contact.lname, mob: @contact.mob, postcode: @contact.postcode, tel: @contact.tel, town: @contact.town, user_id: @contact.user_id }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    put :update, id: @contact, contact: { add1: @contact.add1, add2: @contact.add2, company: @contact.company, county: @contact.county, email: @contact.email, fname: @contact.fname, lname: @contact.lname, mob: @contact.mob, postcode: @contact.postcode, tel: @contact.tel, town: @contact.town, user_id: @contact.user_id }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
