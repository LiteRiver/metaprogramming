class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(method_name, *args)
    super unless data_source.respond_to?("get_#{method_name}_info")

    info = data_source.send("get_#{method_name}_info", @id)
    price = @data_source.send("get_#{method_name}_price", @id)
    result = "#{method_name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100

    result
  end

  def respond_to_missing?(method_name, include_private = false)
    @data_source.respond_to?(method_name) || super
  end
end
