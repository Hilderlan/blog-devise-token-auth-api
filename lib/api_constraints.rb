class ApiConstraints
  attr_reader :version, :default

  def initialize(version:, default:)
    @version = version
    @default = default
  end

  def matches?(req)
    default || req.headers['Accept'].include?("application/vnd.blog.v#{version}")
  end
end
