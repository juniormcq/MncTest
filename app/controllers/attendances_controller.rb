class AttendancesController < ApplicationController
  def index
  end

  def show
   @attendances = Worker.select(:name, :puesto).where("codigo = ?",params[:codigo])
   @attendances2 = Attendance.select(:fecha, :hora).where("codigo_id = ?",params[:codigo])
  
   end

  def new
  	@attendance = Attendance.new
    @attendance.fecha = Date.current
    @attendance.hora = Time.current
    @attendance.codigo_id = params[:codigo]

    @attendance.save
    
  end
end
