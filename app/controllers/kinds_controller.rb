class KindsController < ApplicationController
  def index
    @kinds = Kind.all
  end

  def new
    @kind = Kind.new
  end

  def edit
    kind = Kind.find(params[:id])
    @kind   = kind
  end

  def create
    kind = Kind.create(kind_params)
    if kind.name.length >= 5 && (params[:kind][:size].to_i > kind.min_size)
      if kind.save
        flash[:notice] = "Kind good enough!"
        redirect_to kinds_path
      else
        @kind = kind
        render :new
      end
    else
      flash[:notice] = "Kind name should be 5 characters length and size at least 20!"
      @kind = kind
      render :new
    end
  end

  def update
    @kind = Kind.find(params[:id])
    @kind.update(kind_params)
    !@kind.valid? && (return render "edit")
    redirect_to kinds_path
  end

  private

  def kind_params
    params.require(:kind).permit(:name, :active, :size)
  end
end
