
module MongoidClassForCollection
  def mongoid_class_for_collection(collection, opts = {}, &blk)
    module_name  = "Id#{MongoidClassForCollection.unique_id}"
    class_name = opts[:class_name] || collection.to_s.classify
  
    eval <<-CLASSDEF
      module #{module_name}
        class #{class_name}
          include Mongoid::Document
          store_in '#{collection}'
        end
      end
    CLASSDEF

    klass = eval("#{module_name}::#{class_name}")
    klass.class_eval &blk if block_given?
    klass
  end
  
  def self.unique_id
    @unique_id ||= 0
    @unique_id += 1
  end
end

# Add this to your migration class
# extend MongoidClassForCollection
