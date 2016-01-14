json.array!(@progress_bars) do |progress_bar|
  json.extract! progress_bar, :id, :message, :percent
  json.url progress_bar_url(progress_bar, format: :json)
end
