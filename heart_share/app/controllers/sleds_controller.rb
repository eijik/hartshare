class SledsController < ApplicationController
  before_action :set_sled, only: [:show, :edit, :update, :destroy, :complete]

  # GET /sleds
  def index
    @sleds = Sled.all.order(created_at: :desc)
  end

  # GET /sleds/1
  def show
  end

  # GET /sleds/new
  def new
    @sled = Sled.new
  end

  # GET /sleds/1/complete
  # @params
  #   group_id:
  #     なし: 全体sleadsの最新１件を表示
  #     あり: 家族(group_idで絞込)の最新１件表示
  def complete
    if params[:group_id].present?
       # 家族(group_id)があるときは、グループの中で最新のレコードを１件取得する
      @sled = Sled.joins(:sled_groups).where(sled_groups:{group_id:params[:group_id]}).order("sleds.created_at asc").first
      @title = "家族"
    else
       # 家族(group_id)がないときは、全体の中で最新のレコードを１件取得する
      @sled = Sled.all.order(created_at: :asc).first
      @title = "近所"
    end
  end

  # GET /sleds/1/edit
  def edit
  end

  # POST /sleds
  def create
    @sled = Sled.new(sled_params)

     # 以下、仮コード
    @sled.creator = User.first

    if @sled.save
      #redirect_to @sled, notice: '画像をアップしましたー'
      #render :edit
      redirect_to edit_sled_path(@sled), notice: '画像をアップしましたー'
    else
      #render :new
      redirect_to edit_sled_path(@sled), notice: '画像をアップしましたー'
      #render :edit
    end
  end

  # PATCH/PUT /sleds/1
  def update
    if @sled.update(sled_params)
      #redirect_to @sled, notice: '画像をアップしましたー'
      #render :edit
      redirect_to edit_sled_path(@sled), notice: '画像をアップしましたー'
    else
      #render :edit
      redirect_to edit_sled_path(@sled), notice: '画像をアップしましたー'
    end
  end

  # DELETE /sleds/1
  def destroy
    @sled.destroy
    redirect_to sleds_url, notice: 'Sled was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sled
      @sled = Sled.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sled_params
      params[:sled].present? ? params.require(:sled).permit(:file) : {}
    end
end
