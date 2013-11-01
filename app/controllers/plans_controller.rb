class PlansController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def create
    @plan = current_user.plans.build(idea_id: params[:idea_id])

    if @plan.save
      redirect_to user_path(current_user), notice: 'You have planned this activity'
    else
      redirect_to :back, notice: 'You already have this planned'
     end
  end

  def plans_params
    params.require(:plans).permit(:idea_id)
  end

  def destroy
   @plan_id = @plan.id
   @plan.destroy
   respond_to do |format|
    format.js { render layout: false}
  end
end
