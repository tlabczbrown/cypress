
class PatientPopulationsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @patient_populations = PatientPopulation.find(:all)
    
    respond_to do |format|
      format.json { render :json => @patient_populations }
      format.html { render :action => "show" }
    end
  end
    
end
