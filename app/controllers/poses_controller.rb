class PosesController < ApplicationController
  def index
    @q = Pose.ransack(params[:q])
    @poses = @q.result(:distinct => true).includes(:flow, :sun_a, :sun_b, :sun_c).page(params[:page]).per(10)

    render("pose_templates/index.html.erb")
  end

  def show
    @pose = Pose.find(params.fetch("id_to_display"))

    render("pose_templates/show.html.erb")
  end

  def new_form
    @pose = Pose.new

    render("pose_templates/new_form.html.erb")
  end

  def create_row
    @pose = Pose.new

    @pose.english_name = params.fetch("english_name")
    @pose.sanksrit = params.fetch("sanksrit")
    @pose.sequence_id = params.fetch("sequence_id")
    @pose.picture = params.fetch("picture")
    @pose.sun_a_id = params.fetch("sun_a_id")
    @pose.sun_b_id = params.fetch("sun_b_id")
    @pose.sun_c_id = params.fetch("sun_c_id")

    if @pose.valid?
      @pose.save

      redirect_back(:fallback_location => "/poses", :notice => "Pose created successfully.")
    else
      render("pose_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_yoga_flow
    @pose = Pose.new

    @pose.english_name = params.fetch("english_name")
    @pose.sanksrit = params.fetch("sanksrit")
    @pose.sequence_id = params.fetch("sequence_id")
    @pose.picture = params.fetch("picture")
    @pose.sun_a_id = params.fetch("sun_a_id")
    @pose.sun_b_id = params.fetch("sun_b_id")
    @pose.sun_c_id = params.fetch("sun_c_id")

    if @pose.valid?
      @pose.save

      redirect_to("/yoga_flows/#{@pose.sequence_id}", notice: "Pose created successfully.")
    else
      render("pose_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_sun_a
    @pose = Pose.new

    @pose.english_name = params.fetch("english_name")
    @pose.sanksrit = params.fetch("sanksrit")
    @pose.sequence_id = params.fetch("sequence_id")
    @pose.picture = params.fetch("picture")
    @pose.sun_a_id = params.fetch("sun_a_id")
    @pose.sun_b_id = params.fetch("sun_b_id")
    @pose.sun_c_id = params.fetch("sun_c_id")

    if @pose.valid?
      @pose.save

      redirect_to("/sun_as/#{@pose.sun_a_id}", notice: "Pose created successfully.")
    else
      render("pose_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_sun_b
    @pose = Pose.new

    @pose.english_name = params.fetch("english_name")
    @pose.sanksrit = params.fetch("sanksrit")
    @pose.sequence_id = params.fetch("sequence_id")
    @pose.picture = params.fetch("picture")
    @pose.sun_a_id = params.fetch("sun_a_id")
    @pose.sun_b_id = params.fetch("sun_b_id")
    @pose.sun_c_id = params.fetch("sun_c_id")

    if @pose.valid?
      @pose.save

      redirect_to("/sun_bs/#{@pose.sun_b_id}", notice: "Pose created successfully.")
    else
      render("pose_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_sun_c
    @pose = Pose.new

    @pose.english_name = params.fetch("english_name")
    @pose.sanksrit = params.fetch("sanksrit")
    @pose.sequence_id = params.fetch("sequence_id")
    @pose.picture = params.fetch("picture")
    @pose.sun_a_id = params.fetch("sun_a_id")
    @pose.sun_b_id = params.fetch("sun_b_id")
    @pose.sun_c_id = params.fetch("sun_c_id")

    if @pose.valid?
      @pose.save

      redirect_to("/sun_cs/#{@pose.sun_c_id}", notice: "Pose created successfully.")
    else
      render("pose_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @pose = Pose.find(params.fetch("prefill_with_id"))

    render("pose_templates/edit_form.html.erb")
  end

  def update_row
    @pose = Pose.find(params.fetch("id_to_modify"))

    @pose.english_name = params.fetch("english_name")
    @pose.sanksrit = params.fetch("sanksrit")
    @pose.sequence_id = params.fetch("sequence_id")
    @pose.picture = params.fetch("picture")
    @pose.sun_a_id = params.fetch("sun_a_id")
    @pose.sun_b_id = params.fetch("sun_b_id")
    @pose.sun_c_id = params.fetch("sun_c_id")

    if @pose.valid?
      @pose.save

      redirect_to("/poses/#{@pose.id}", :notice => "Pose updated successfully.")
    else
      render("pose_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_flow
    @pose = Pose.find(params.fetch("id_to_remove"))

    @pose.destroy

    redirect_to("/yoga_flows/#{@pose.sequence_id}", notice: "Pose deleted successfully.")
  end

  def destroy_row_from_sun_a
    @pose = Pose.find(params.fetch("id_to_remove"))

    @pose.destroy

    redirect_to("/sun_as/#{@pose.sun_a_id}", notice: "Pose deleted successfully.")
  end

  def destroy_row_from_sun_b
    @pose = Pose.find(params.fetch("id_to_remove"))

    @pose.destroy

    redirect_to("/sun_bs/#{@pose.sun_b_id}", notice: "Pose deleted successfully.")
  end

  def destroy_row_from_sun_c
    @pose = Pose.find(params.fetch("id_to_remove"))

    @pose.destroy

    redirect_to("/sun_cs/#{@pose.sun_c_id}", notice: "Pose deleted successfully.")
  end

  def destroy_row
    @pose = Pose.find(params.fetch("id_to_remove"))

    @pose.destroy

    redirect_to("/poses", :notice => "Pose deleted successfully.")
  end
end
