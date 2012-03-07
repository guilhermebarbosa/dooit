class CasesController < ApplicationController
  # GET /cases
  # GET /cases.xml
  def index
    @cases = Case.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cases }
    end
  end
end
