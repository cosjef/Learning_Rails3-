class AwardsController < ApplicationController

  before_filter :get_student
  # :get_student is defined at the bottom of the file,
  # and takes the student_id given by the routing and
  # converts it to an @student object.

  def index
    @awards = @student.awards
    # was @awards = Award.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @awards }
    end
  end

  # GET /awards/1
  # GET /awards/1.json
  def show
    @award = @student.awards.find(params[:id])
    # was Award.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @award }
    end
  end

  # GET /awards/new
  # GET /awards/new.json
  def new
    @student = Student.find(params[:student_id])
    @award = @student.awards.build
    # was @award = Award.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @award }
    end
  end

  # GET /awards/1/edit
  def edit
    @award = @student.awards.find(params[:id])
    # was @award = Award.find(params[:id])
  end

  # POST /awards
  # POST /awards.json
  def create
    @award = @student.awards.build(params[:award])
    # was @award = Award.new(params[:award])
    
    respond_to do |format|
      if @award.save
        format.html { redirect_to student_awards_url(@student), notice: 'Award was successfully created.' }
        format.json { render json: @award, status: :created, location: @award }
      else
        format.html { render action: "new" }
        format.json { render json: @award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /awards/1
  # PUT /awards/1.json
  def update
    @award = @student.awards.find(params[:id])
    # was @award = Award.find(params[:id])

    respond_to do |format|
      if @award.update_attributes(params[:award])
        format.html { redirect_to student_awards_url(@student), notice: 'Award was successfully updated.' }
                      # was redirect_to(@award)
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awards/1
  # DELETE /awards/1.json
  def destroy
    @award = @student.awards.find(params[:id])
    # was @award = Award.find(params[:id])
    @award.destroy

    respond_to do |format|
      format.html { redirect_to (student_awards_path(@student)) }
          # was redirect_to(awards_url)
      format.json { head :ok }
    end
  end
  
  
  private
  # get_student converts the student_id given by the routing
  # into an @student object, for use here and in the view.
  def get_student
  @student = Student.find(params[:student_id])
  end
end
