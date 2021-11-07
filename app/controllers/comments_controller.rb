class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end
@@record = 0
  # GET /comments/new
  def new
    item = params[:item]
    @model_name = params[:from_model]
    if @model_name == "topic"
      @rec = Topic.find(item)
      @@record = @rec
      @comment = @rec.comments.new
    elsif @model_name == "campaign"
      @rec = CampaignTab.find(item)
      @@record = @rec
      @comment = @rec.comments.new
    end
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = @@record.comments.new(comment_params)
    @@record = 0
    path = path_name(@comment)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to path, notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        path = path_name(@comment)
        format.html { redirect_to path, notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    c = @comment
    @comment.destroy
    respond_to do |format|
      if c.commented_on_type == "Topic"
        format.html { redirect_to topic_path(c.commented_on_id), notice: "Comment was successfully destroyed." }
        format.json { head :no_content }
      elsif c.commented_on_type == "CampaignTab"
        format.html { redirect_to campaign_tab_path(c.commented_on_id), notice: "Comment was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def path_name(comment)
      if comment.commented_on_type == "Topic"
        return topic_path(@comment.commented_on_id)
      elsif comment.commented_on_type == "CampaignTab"
        return campaign_tab_path(@comment.commented_on_id)
      end
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:title, :user_id)
    end
end
