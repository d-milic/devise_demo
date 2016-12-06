name 'rails-dev'

description 'setup for the devise demo app'

run_list(
  'recipe[apt]',
  'recipe[git]',
  'recipe[nodejs]',
  'recipe[ruby_build]',
  'recipe[rbenv]',
  'recipe[site::rbenv]',
  'recipe[site::mysql]',
  'recipe[site::mysql2_chef_gem]',
  'recipe[site::database]'
)

default_attributes(
  'build_essential' => {
    'compiletime' => true
  }
)
