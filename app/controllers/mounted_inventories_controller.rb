class MountedInventoriesController < ApplicationController
  before_filter :authenticate_user!
  # before_action :set_mounted_inventory, only: [:show, :edit, :update, :destroy]

  # GET /mounted_inventories
  # GET /mounted_inventories.json
  def index
    @mounted_inventories = MountedInventory.all
    @mounted_inventory = MountedInventory.new
    respond_to do |format|
      format.html
    end
  end

  # GET /mounted_inventories/1
  # GET /mounted_inventories/1.json
  def show
    @mounted_inventory = MountedInventory.find(params[:id])
  end

  # GET /mounted_inventories/new
  def new
    @mounted_inventory = MountedInventory.new
  end

  # GET /mounted_inventories/1/edit
  def edit
    @mounted_inventory = MountedInventory.find(params[:id])
  end

  # POST /mounted_inventories
  # POST /mounted_inventories.json
  def create
    @mounted_inventory = current_user.mounted_inventories.build(params[:mounted_inventory])
    @mounted_inventory.save
    respond_to do |format|
      if @mounted_inventory.save
        format.html { redirect_to :back, notice: 'A mounted inventory was successfully added.' }
        format.json { render action: 'show', status: :created, location: @mounted_inventory }
      else
        format.html { render action: 'new' }
        format.json { render json: @mounted_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mounted_inventories/1
  # PATCH/PUT /mounted_inventories/1.json
  def update
    respond_to do |format|
      if @mounted_inventory.update(params[:mounted_inventory])
        format.html { redirect_to @mounted_inventory, notice: 'A mounted inventory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mounted_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mounted_inventories/1
  # DELETE /mounted_inventories/1.json
  def destroy
    @mounted_inventory.destroy
    respond_to do |format|
      format.html { redirect_to mounted_inventories_url }
      format.json { head :no_content }
    end
  end
end
