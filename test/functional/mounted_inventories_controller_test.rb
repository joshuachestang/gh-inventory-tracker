require 'test_helper'

class MountedInventoriesControllerTest < ActionController::TestCase
  setup do
    @mounted_inventory = mounted_inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mounted_inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mounted_inventory" do
    assert_difference('MountedInventory.count') do
      post :create, mounted_inventory: { lot_number: @mounted_inventory.lot_number, total_mg: @mounted_inventory.total_mg }
    end

    assert_redirected_to mounted_inventory_path(assigns(:mounted_inventory))
  end

  test "should show mounted_inventory" do
    get :show, id: @mounted_inventory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mounted_inventory
    assert_response :success
  end

  test "should update mounted_inventory" do
    put :update, id: @mounted_inventory, mounted_inventory: { lot_number: @mounted_inventory.lot_number, total_mg: @mounted_inventory.total_mg }
    assert_redirected_to mounted_inventory_path(assigns(:mounted_inventory))
  end

  test "should destroy mounted_inventory" do
    assert_difference('MountedInventory.count', -1) do
      delete :destroy, id: @mounted_inventory
    end

    assert_redirected_to mounted_inventories_path
  end
end
