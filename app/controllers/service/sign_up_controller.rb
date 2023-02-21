class Service::SignUpController < ApplicationController
  def new
    @clinic = Clinic.new
    @clinic.staffs.build

  end

  def confirm
    @clinic = build_clinic(clinic_params)

    unless @clinic.valid? && @clinic.staffs.first.valid?
      render :new
    end
  end

  def create
    @clinic = build_clinic(clinic_params)
    if @clinic.save && @clinic.staffs.first.save
      redirect_to root_path, notice: '登録が完了しました。'
    else
      render :new
    end
  end

  private

  def build_clinic(params)
    clinic = Clinic.new(params)
    clinic.staffs.first.role = :admin
    clinic
  end

  def clinic_params
    params.require(:clinic).permit(:name, :phone, staffs_attributes: [:name, :email, :password, :password_confirmation, :_destroy])
  end


end
