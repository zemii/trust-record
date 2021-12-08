class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(name: params[:rental][:name], cost: params[:rental][:cost], term: params[:rental][:term])
    if @rental.save
       flash[:notice] = '貸せるものを登録しました'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])
    if @rental.update(name: params[:rental][:name], cost: params[:rental][:cost], term: params[:rental][:term])
      flash[:notice] = '貸せるものを更新しました'
      @rental.save
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    rental = Rental.find(params[:id])
    rental.destroy
    redirect_to root_path
  end
end
