module TracksHelper
  def format_duration(duration)
    "#{duration/60}m#{duration%60}s"
  end
end
