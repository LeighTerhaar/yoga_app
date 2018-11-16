class YogaFlowsController < ApplicationController
  before_action :current_user_must_be_yoga_flow_user, :only => [:edit_form, :update_row, :destroy_row]

  def current_user_must_be_yoga_flow_user
    yoga_flow = YogaFlow.find(params["id_to_display"] || params["prefill_with_id"] || params["id_to_modify"] || params["id_to_remove"])

    unless current_user == yoga_flow.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = YogaFlow.ransack(params[:q])
    @yoga_flows = @q.result(:distinct => true).includes(:user, :poses).page(params[:page]).per(10)

    render("yoga_flow_templates/index.html.erb")
  end

  def show
    @pose = Pose.new
    @yoga_flow = YogaFlow.find(params.fetch("id_to_display"))

    render("yoga_flow_templates/show.html.erb")
  end

  def new_form
    @yoga_flow = YogaFlow.new

    render("yoga_flow_templates/new_form.html.erb")
  end

  def create_row
    @yoga_flow = YogaFlow.new

    @yoga_flow.name = params.fetch("name")
    @yoga_flow.intention = params.fetch("intention")
    @yoga_flow.pose_id = params.fetch("pose_id")
    @yoga_flow.user_id = params.fetch("user_id")
    @yoga_flow.description = params.fetch("description")
    @yoga_flow.yoga_type = params.fetch("yoga_type")

    if @yoga_flow.valid?
      @yoga_flow.save

      redirect_back(:fallback_location => "/yoga_flows", :notice => "Yoga flow created successfully.")
    else
      render("yoga_flow_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @yoga_flow = YogaFlow.find(params.fetch("prefill_with_id"))

    render("yoga_flow_templates/edit_form.html.erb")
  end

  def update_row
    @yoga_flow = YogaFlow.find(params.fetch("id_to_modify"))

    @yoga_flow.name = params.fetch("name")
    @yoga_flow.intention = params.fetch("intention")
    @yoga_flow.pose_id = params.fetch("pose_id")
    
    @yoga_flow.description = params.fetch("description")
    @yoga_flow.yoga_type = params.fetch("yoga_type")

    if @yoga_flow.valid?
      @yoga_flow.save

      redirect_to("/yoga_flows/#{@yoga_flow.id}", :notice => "Yoga flow updated successfully.")
    else
      render("yoga_flow_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @yoga_flow = YogaFlow.find(params.fetch("id_to_remove"))

    @yoga_flow.destroy

    redirect_to("/users/#{@yoga_flow.user_id}", notice: "YogaFlow deleted successfully.")
  end

  def destroy_row
    @yoga_flow = YogaFlow.find(params.fetch("id_to_remove"))

    @yoga_flow.destroy

    redirect_to("/yoga_flows", :notice => "Yoga flow deleted successfully.")
  end
end
