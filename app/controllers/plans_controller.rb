class PlansController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def create
    # @plan = current_user.plans.build(idea_id: params[:idea_id])
    current_user.ideas << Idea.find(params[:idea_id])

    #if @plan.save
      redirect_to user_path(current_user), notice: 'You have planned this activity'
    #else
  rescue
    redirect_to :back, notice: 'You already have this planned'
  end

  def plans_params
    params.require(:plans).permit(:idea_id)
  end

  def destroy
    @plan = Plan.where(idea_id:params[:idea_id], user_id:current_user.id).first
    @idea_id = params[:idea_id]
    @plan.destroy
    render :plan_destroy
    # respond_to do |format|
    #   format.js { render layout: false}
  end
end