module StaticpagesHelper
  def convert_to_amcharts_json(data_array)
   data_array.to_json.gsub(/\"text\"/, "text").html_safe
  end
  def convert_to_json(data_array)
   data_array.to_json.html_safe
  end
end
