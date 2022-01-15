class CandidatesController < ApplicationController
  def new_application
    @candidate = Candidate.new
  end

  def apply
    @candidate = Candidate.find_or_initialize_by(email: params[:candidate][:email])
    @candidate.update(candidate_params)

    if @candidate.invalid?
      render :new_application, error: "We could not process your application"
    end
  end

  private

  def candidate_params
    params.require(:candidate).permit(:name, :last_name, :email, :location)
  end
end
