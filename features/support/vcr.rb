require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'features/fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.ignore_localhost = true
  c.allow_http_connections_when_no_cassette = false
end

VCR.cucumber_tags do |t|
  t.tag  '@tweets', record: :new_episodes
  t.tag  '@favorites', record: :new_episodes
end