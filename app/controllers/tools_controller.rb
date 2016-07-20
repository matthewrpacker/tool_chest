class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      flash[:notice] = "#{@tool.name} created!"
      redirect_to tools_path
    else
      flash.now[:error] = @tool.errors.full_messages.join(", ")
      render :new
    end
  end

  def new
    @tool = Tool.new
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    if @tool.update_attributes(tool_params)
      redirect_to tools_path
    else
      render :edit
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to tools_path
  end

  private
  def tool_params
    params.require(:tool).permit(:name, :quantity, :price)
  end

end
