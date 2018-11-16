class SunCsController < ApplicationController
  def index
    @sun_cs = SunC.page(params[:page]).per(10)

    render("sun_c_templates/index.html.erb")
  end

  def show
    @pose = Pose.new
    @sun_c = SunC.find(params.fetch("id_to_display"))

    render("sun_c_templates/show.html.erb")
  end

  def new_form
    @sun_c = SunC.new

    render("sun_c_templates/new_form.html.erb")
  end

  def create_row
    @sun_c = SunC.new


    if @sun_c.valid?
      @sun_c.save

      redirect_back(:fallback_location => "/sun_cs", :notice => "Sun c created successfully.")
    else
      render("sun_c_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @sun_c = SunC.find(params.fetch("prefill_with_id"))

    render("sun_c_templates/edit_form.html.erb")
  end

  def update_row
    @sun_c = SunC.find(params.fetch("id_to_modify"))


    if @sun_c.valid?
      @sun_c.save

      redirect_to("/sun_cs/#{@sun_c.id}", :notice => "Sun c updated successfully.")
    else
      render("sun_c_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @sun_c = SunC.find(params.fetch("id_to_remove"))

    @sun_c.destroy

    redirect_to("/sun_cs", :notice => "Sun c deleted successfully.")
  end
end
