class UpdatesController < ApplicationController
  # GET /updates
  # GET /updates.xml
  def index
    @updates = Update.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @updates }
    end
  end

  # GET /updates/1
  # GET /updates/1.xml
  def show
    @update = Update.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @update }
    end
  end

  # GET /updates/new
  # GET /updates/new.xml
  def new
    @update = Update.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @update }
    end
  end

  # GET /updates/1/edit
  def edit
    @update = Update.find(params[:id])
  end

  # POST /updates
  # POST /updates.xml
  def create
    @update = Update.new(params[:update])

    respond_to do |format|
      if @update.save
        format.html { redirect_to('/', :notice => 'Update was successfully created.') }
        format.xml  { render :xml => @update, :status => :created, :location => @update }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @update.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /updates/1
  # PUT /updates/1.xml
  def update
    @update = Update.find(params[:id])

    respond_to do |format|
      if @update.update_attributes(params[:update])
        format.html { redirect_to(@update, :notice => 'Update was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @update.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /updates/1
  # DELETE /updates/1.xml
  def destroy
    @update = Update.find(params[:id])
    @update.destroy

    respond_to do |format|
      format.html { redirect_to(updates_url) }
      format.xml  { head :ok }
    end
  end
end
