name 'rails-dev'

description 'setup for the devise demo app'

run_list(
  'recipe[apt]',
  'recipe[git]',
  'recipe[nodejs]',
  'recipe[ruby_build]',
  'recipe[rbenv]',
  'recipe[ruby::rbenv]'

)

default_attributes(
  "build_essential" => {
    "compiletime" => true
  }
)

