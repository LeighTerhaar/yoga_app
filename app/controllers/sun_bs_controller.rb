class SunBsController < ApplicationController
  def index
    @sun_bs = SunB.all

    render("sun_b_templates/index.html.erb")
  end

  def show
    @pose = Pose.new
    @sun_b = SunB.find(params.fetch("id_to_display"))

    render("sun_b_templates/show.html.erb")
  end

  def new_form
    @sun_b = SunB.new

    render("sun_b_templates/new_form.html.erb")
  end

  def create_row
    @sun_b = SunB.new


    if @sun_b.valid?
      @sun_b.save

      redirect_back(:fallback_location => "/sun_bs", :notice => "Sun b created successfully.")
    else
      render("sun_b_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @sun_b = SunB.find(params.fetch("prefill_with_id"))

    render("sun_b_templates/edit_form.html.erb")
  end

  def update_row
    @sun_b = SunB.find(params.fetch("id_to_modify"))


    if @sun_b.valid?
      @sun_b.save

      redirect_to("/sun_bs/#{@sun_b.id}", :notice => "Sun b updated successfully.")
    else
      render("sun_b_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @sun_b = SunB.find(params.fetch("id_to_remove"))

    @sun_b.destroy

    redirect_to("/sun_bs", :notice => "Sun b deleted successfully.")
  end
end
