class ToHash
  def to_hash(obj)
    obj.instance_variables.each_with_object({}) do |var, hash|
      key = var.to_s.delete('@')
      value = obj.instance_variable_get(var)
      value = to_hash(value) if %w[Genre Author Label Book Movie MusicAlbum].include?(value.class.name)
      hash[key] = value
      hash
    end
  end
end
