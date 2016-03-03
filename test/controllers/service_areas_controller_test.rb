require 'test_helper'

class ServiceAreasControllerTest < ActionController::TestCase
  setup do
    @service_area = service_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_area" do
    assert_difference('ServiceArea.count') do
      post :create, service_area: { lat: @service_area.lat, long: @service_area.long, radi: @service_area.radi, scope: @service_area.scope }
    end

    assert_redirected_to service_area_path(assigns(:service_area))
  end

  test "should show service_area" do
    get :show, id: @service_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_area
    assert_response :success
  end

  test "should update service_area" do
    patch :update, id: @service_area, service_area: { lat: @service_area.lat, long: @service_area.long, radi: @service_area.radi, scope: @service_area.scope }
    assert_redirected_to service_area_path(assigns(:service_area))
  end

  test "should destroy service_area" do
    assert_difference('ServiceArea.count', -1) do
      delete :destroy, id: @service_area
    end

    assert_redirected_to service_areas_path
  end
end
