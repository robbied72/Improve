require 'test_helper'

class ContactNotesControllerTest < ActionController::TestCase
  setup do
    @contact_note = contact_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_note" do
    assert_difference('ContactNote.count') do
      post :create, contact_note: { contact_id: @contact_note.contact_id, note: @contact_note.note }
    end

    assert_redirected_to contact_note_path(assigns(:contact_note))
  end

  test "should show contact_note" do
    get :show, id: @contact_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_note
    assert_response :success
  end

  test "should update contact_note" do
    put :update, id: @contact_note, contact_note: { contact_id: @contact_note.contact_id, note: @contact_note.note }
    assert_redirected_to contact_note_path(assigns(:contact_note))
  end

  test "should destroy contact_note" do
    assert_difference('ContactNote.count', -1) do
      delete :destroy, id: @contact_note
    end

    assert_redirected_to contact_notes_path
  end
end
