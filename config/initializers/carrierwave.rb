# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
   if Rails.env.development?
  config.cache_dir = '/home/vagrant/uploads_tmp/tmp/uploads'
  config.root = '/home/vagrant/uploads_tmp/tmp'
end
end   



