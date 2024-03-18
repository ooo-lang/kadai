class BlogsController < ApplicationController
  # GET /blogs
  # Blog全件取得
  def index
    @blogs = Blog.includes(:categories)
  end

  # POST /blogs/import
  # CSVデータ読込
  def import
    Blog.import(params[:file])
    redirect_to root_path
  end

  # GET /blogs/1
  # 該当するルーティングが無い為処理なし
  def show
    
  end

  # GET /blogs/1/edit
  # 該当するルーティングが無い為処理なし
  def edit

  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  # 該当するルーティングが無い為処理なし
  def update
    
  end

  # DELETE /blogs/1 or /blogs/1.json
  # 該当するルーティングが無い為処理なし
  def destroy
    
  end
end
