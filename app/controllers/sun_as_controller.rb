class SunAsController < ApplicationController
  def index
    @sun_as = SunA.all

    render("sun_a_templates/index.html.erb")
  end

  def show
    @pose = Pose.new
    @sun_a = SunA.find(params.fetch("id_to_display"))

    render("sun_a_templates/show.html.erb")
  end

  def new_form
    @sun_a = SunA.new

    render("sun_a_templates/new_form.html.erb")
  end

  def create_row
    @sun_a = SunA.new


    if @sun_a.valid?
      @sun_a.save

      redirect_back(:fallback_location => "/sun_as", :notice => "Sun a created successfully.")
    else
      render("sun_a_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @sun_a = SunA.find(params.fetch("prefill_with_id"))

    render("sun_a_templates/edit_form.html.erb")
  end

  def update_row
    @sun_a = SunA.find(params.fetch("id_to_modify"))


    if @sun_a.valid?
      @sun_a.save

      redirect_to("/sun_as/#{@sun_a.id}", :notice => "Sun a updated successfully.")
    else
      render("sun_a_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @sun_a = SunA.find(params.fetch("id_to_remove"))

    @sun_a.destroy

    redirect_to("/sun_as", :notice => "Sun a deleted successfully.")
  end
end
