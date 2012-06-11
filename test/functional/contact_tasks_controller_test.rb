require 'test_helper'

class ContactTasksControllerTest < ActionController::TestCase
  setup do
    @contact_task = contact_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_task" do
    assert_difference('ContactTask.count') do
      post :create, contact_task: { complete: @contact_task.complete, contact_id: @contact_task.contact_id, due: @contact_task.due, status: @contact_task.status, task_details: @contact_task.task_details, title: @contact_task.title, user_id: @contact_task.user_id }
    end

    assert_redirected_to contact_task_path(assigns(:contact_task))
  end

  test "should show contact_task" do
    get :show, id: @contact_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_task
    assert_response :success
  end

  test "should update contact_task" do
    put :update, id: @contact_task, contact_task: { complete: @contact_task.complete, contact_id: @contact_task.contact_id, due: @contact_task.due, status: @contact_task.status, task_details: @contact_task.task_details, title: @contact_task.title, user_id: @contact_task.user_id }
    assert_redirected_to contact_task_path(assigns(:contact_task))
  end

  test "should destroy contact_task" do
    assert_difference('ContactTask.count', -1) do
      delete :destroy, id: @contact_task
    end

    assert_redirected_to contact_tasks_path
  end
end
