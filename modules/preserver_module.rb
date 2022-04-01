require 'json'

module PreserverModule
  def save_data_as_json(data, file_name)
    File.write("./data/#{file_name}.json", JSON.generate(data)) if data.any?
  end

  def load_file(file_name)
    if File.exist?("./data/#{file_name}.json")
      JSON.parse(File.read("./data/#{file_name}.json"))
    else
      []
    end
  end
end
