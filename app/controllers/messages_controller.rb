class MessagesController < ApplicationController
  include ApplicationHelper
  def index
		@all_messages = Message.all
		@messages = @all_messages.paginate(page: params[:page], per_page: 5)
	end

  def new
  end

  def create
	  @message = Message.new(article_params)
	  @message.save
	  # redirect_to @message
	  update('message')
	  redirect_to save_url
	end

	def show
		@message = Message.find(params[:id])
	end
	 
	private
	  def article_params
	    params.require(:message).permit(:subject, :text)
	  end
end
