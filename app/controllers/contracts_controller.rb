class ContractsController < ApplicationController

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new
    if @contract.save
    responsd_to :html, :json
  end
end