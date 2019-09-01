module EnvVars
  def app_path_google
    @app_path_google = ENV.fetch('APP_PATH_GOOGLE')
  end
end

World(EnvVars)
