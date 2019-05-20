class TodolistsController < ApplicationController
  before_action :set_todolist, only: [:show, :edit, :update, :destroy]
  
  def index
    @todolists = current_user.todolists
  end

  def show
  end

  def new
    @todolist = Todolist.new
  end

  def create
    @todolist = current_user.todolists.new(todolist_params)

    if @todolist.save
      redirect_to todolists_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @todolist.update(todolist_params)
      redirect_to todolists_path(@todolist)
    else
      render :edit
    end
  end

  def destroy
    @todolist.destroy
    redirect_to todolists_path
  end

  private
    def set_todolist
      @todolist = current_user.todolists.find(params[:id])
    end


    def todolist_params
      params.require(:todolist).permit(:listname, :content)
    end

end
