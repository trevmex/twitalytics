Warbler::Config.new do |config|
  config.jar_name = 'twitalytics'
  config.dirs << 'db'
  config.excludes = FileList['**/*/*.box']
  config.bundle_without = []
  config.webxml.jruby.max.runtimes = 1
end