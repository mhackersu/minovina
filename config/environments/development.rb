require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded any time
  # it changes. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.enable_reloading = true

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing.
  config.server_timing = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = { "Cache-Control" => "public, max-age=#{2.days.to_i}" }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Disable caching for Action Mailer templates even if Action Controller
  # caching is enabled.
  config.action_mailer.perform_caching = false

  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Tell Active Support which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Highlight code that enqueued background job in logs.
  config.active_job.verbose_enqueue_logs = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  config.action_view.annotate_rendered_view_with_filenames = true

  # Uncomment if you wish to allow Action Cable access from any origin.
  # config.action_cable.disable_request_forgery_protection = true

  # Raise error when a before_action's only/except options reference missing actions.
  config.action_controller.raise_on_missing_callback_actions = true

  # 🚫 DEFAULT BULLET TRAIN CONFIGURATION
  # This section represents the default settings for a Bullet Train application. Your own configuration should be
  # specified at the end of the file. Don't specify your application specific configuration in this section, even
  # if you want to change a default value specified here. Instead, simply re-specify the value in the section that
  # follows this section.

  # disable asset pipeline.
  config.assets.enabled = false

  # generate full urls using the base url configuration setting.
  unless default_url_options_from_base_url.empty?
    Rails.application.routes.default_url_options = default_url_options_from_base_url
    config.action_mailer.default_url_options = default_url_options_from_base_url

    # allow users to access this application via the configured application domain.
    config.hosts << default_url_options_from_base_url[:host]
  end

  if (gitpod_workspace_url = ENV["GITPOD_WORKSPACE_URL"])
    config.hosts << /.*#{URI.parse(gitpod_workspace_url).host}/
  end

  # whitelist ngrok domains.
  config.hosts << /[a-z0-9-]+\.ngrok\.io/
  config.hosts << /[a-z0-9-]+\.ngrok-free\.app/

  config.action_mailer.delivery_method = :letter_opener
  config.active_job.queue_adapter = :sidekiq

  # Raises error for missing translations
  # Don't disable this. Localization is a big part of Bullet Train and you want hard errors when something goes wrong.
  # Furthermore, some Bullet Train functionality depends on receiving an error when a translation is missing.
  config.i18n.raise_on_missing_translations = true

  # i don't plan on mailgun being the default for much longer, but since they're the default in the production
  # configuration right now, i'm making them the default here as well.
  config.action_mailbox.ingress = :mailgun

  # Rails defaults to :local in development. Set any of these ENV vars to use non-local options.
  if (ENV["AWS_ACCESS_KEY_ID"] || ENV["BUCKETEER_AWS_ACCESS_KEY_ID"]).present?
    config.active_storage.service = :amazon
  elsif ENV["CLOUDINARY_URL"].present?
    config.active_storage.service = :cloudinary
  end

  # ✅ YOUR APPLICATION'S CONFIGURATION
  # If you need to customize your application's configuration, this is the place to do it. This helps avoid merge
  # conflicts in the future when Rails or Bullet Train update their own default settings.
end