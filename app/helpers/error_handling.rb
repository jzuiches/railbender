helpers do
  def display_error
    error = session[:error]
    session[:error] = nil
      if error
        return erb :'error_display', layout: false, locals: {errors: error}
      else
        return ""
      end
  end
end
