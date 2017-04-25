helpers do
  def render_view(path, options={})
    erb(path.to_sym, options)
  end
end
