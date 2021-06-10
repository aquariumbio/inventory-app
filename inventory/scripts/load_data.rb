require 'csv'

models = %w(sample_types physical_states single_item_types collection_types container_types)
models.each do |model|
  cls = model.classify.constantize
  c_keys = cls.new.attributes.keys.reject { |k| %w(id created_at updated_at).include?(k) }
  # puts c_keys.to_s

  filename = "New Inventory Model - #{model}.csv"
  rows = CSV.read(Rails.root.join('scripts', 'data', filename))
  r_keys = rows.shift
  # puts r_keys.to_s

  references = []
  r_keys.each do |r|
    references << r if r =~ /_name$/ && c_keys.include?(r.sub(/_name$/, '_id'))
  end
  # puts references.inspect

  rows.each do |row|
    record = Hash[r_keys.zip(row)]
    references.each do |ref|
      if record[ref.sub(/_name$/, '_type')]
        ref_cls = record[ref.sub(/_name$/, '_type')].constantize
      else
        ref_cls = ref.sub(/_name$/, '').classify.constantize
      end

      name = record.delete(ref)
      if name.present?
        record[ref.sub(/_name$/, '_id')] = ref_cls.find_by(name: name).id
      else
        record[ref.sub(/_name$/, '_id')] = 1
      end
    end
    obj = cls.new(record)
    obj.save
    puts obj.inspect
  end
end