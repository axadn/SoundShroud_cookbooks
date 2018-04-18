default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:soundshroud][:git_repository] = "https://github.com/axadn/SoundShroud/"
default[:soundshroud][:git_revision] = "master"
default[:soundshroud][:path] = "/opt/soundshroud"

default[:soundshroud][:rails_env] = "production"
default[:soundshroud][:log_to_stdout] = "true"

default[:soundshroud][:environment] = {
  "SECRET_KEY_BASE": node[:soundshroud][:secret_key_base],
  "DATABASE_URL": node[:soundshroud][:database_url],
  "RAILS_ENV": node[:soundshroud][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:soundshroud][:log_to_stdout],
  "S3_BUCKET": node[:soundshroud][:s3_bucket],
  "S3_KEY": node[:soundshroud][:s3_key],
  "S3_ID": node[:soundshroud][:s3_id],
  "S3_URL": node[:soundshroud][:s3_url]
}

default[:soundshroud][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
