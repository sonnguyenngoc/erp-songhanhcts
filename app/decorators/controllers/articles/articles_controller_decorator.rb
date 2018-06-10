Erp::Articles::Backend::ArticlesController.class_eval do
  # dataselect /articles
  def dataselect
    respond_to do |format|
      format.json {
        render json: Erp::Articles::Article.dataselect(params[:keyword], params)
      }
    end
  end
end