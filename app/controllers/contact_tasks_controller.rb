class ContactTasksController < ApplicationController
  # GET /contact_tasks
  # GET /contact_tasks.json
  def index
    @contact_tasks = ContactTask.where(:user_id => current_user.id).find(:all, :order => "due asc")


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_tasks }
    end
  end

  # GET /contact_tasks/1
  # GET /contact_tasks/1.json
  def show
    @contact_task = ContactTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_task }
    end
  end

  # GET /contact_tasks/new
  # GET /contact_tasks/new.json
  def new
    @contact_task = ContactTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_task }
    end
  end

  # GET /contact_tasks/1/edit
  def edit
    @contact_task = ContactTask.find(params[:id])
  end

  # POST /contact_tasks
  # POST /contact_tasks.json
  def create
    @contact_task = ContactTask.new(params[:contact_task])

    respond_to do |format|
      if @contact_task.save
        format.html { redirect_to @contact_task, notice: 'Contact task was successfully created.' }
        format.json { render json: @contact_task, status: :created, location: @contact_task }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_tasks/1
  # PUT /contact_tasks/1.json
  def update
    @contact_task = ContactTask.find(params[:id])

    respond_to do |format|
      if @contact_task.update_attributes(params[:contact_task])
        format.html { redirect_to @contact_task, notice: 'Contact task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_tasks/1
  # DELETE /contact_tasks/1.json
  def destroy
    @contact_task = ContactTask.find(params[:id])
    @contact_task.destroy

    respond_to do |format|
      format.html { redirect_to contact_tasks_url }
      format.json { head :no_content }
    end
  end
end
