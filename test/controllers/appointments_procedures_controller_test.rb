require 'test_helper'

class AppointmentsProceduresControllerTest < ActionController::TestCase
  setup do
    @appointments_procedure = appointments_procedures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointments_procedures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointments_procedure" do
    assert_difference('AppointmentsProcedure.count') do
      post :create, appointments_procedure: { anotaciones: @appointments_procedure.anotaciones }
    end

    assert_redirected_to appointments_procedure_path(assigns(:appointments_procedure))
  end

  test "should show appointments_procedure" do
    get :show, id: @appointments_procedure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointments_procedure
    assert_response :success
  end

  test "should update appointments_procedure" do
    patch :update, id: @appointments_procedure, appointments_procedure: { anotaciones: @appointments_procedure.anotaciones }
    assert_redirected_to appointments_procedure_path(assigns(:appointments_procedure))
  end

  test "should destroy appointments_procedure" do
    assert_difference('AppointmentsProcedure.count', -1) do
      delete :destroy, id: @appointments_procedure
    end

    assert_redirected_to appointments_procedures_path
  end
end
