class StudentsController < ApplicationController
  def index
    @student = Student.all
    @subject = Subject.all
  end

  def add_marks
    value = StudentSubject.where(student_id: params[:student_id], subject_id:
      params[:subject_id]).present?
    if value
      StudentSubject.where(student_id: params[:student_id], subject_id: 
      params[:subject_id]).first.update(mark: params[:mark])
    else
    student = Student.find(params[:student_id])
    std_assign = student.student_subjects.build(subject_id: params[:subject_id], mark: params[:mark])
    std_assign.save
    end
  end
end
