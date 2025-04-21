class Class
  
  def attr_accessor_with_history(attr_name)
   attr_name = attr_name.to_s 
   attr_reader attr_name 
   attr_reader attr_name+"_history"
   class_eval %Q{
      def #{attr_name}=(attr_name)
        @#{attr_name} =  attr_name

        if !@#{attr_name}_history
          @#{attr_name}_history = []
          @#{attr_name}_history.append(nil)
          @#{attr_name}_history.append(attr_name)
        else
          @#{attr_name}_history.append(attr_name)
        end
      end
   }
  end
end

class Foo
  attr_accessor_with_history :bar
end


f = Foo.new 
f.bar = 3 
f.bar = :wowzo 
f.bar = 'boo!' 
puts(f.bar_history.inspect) 
f = Foo.new 
f.bar = "nense"
puts(f.bar_history.inspect) 