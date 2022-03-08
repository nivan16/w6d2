class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.length.times do |i|
      name = names[i].to_sym
      name_eq = (names[i].to_s + "=").to_sym
      puts name
      puts name_eq
      define_method(name){ instance_variable_get("@#{names[i]}") }
      define_method(name_eq){|new_var| instance_variable_set("@#{names[i]}", new_var)}
    end
  end

end
