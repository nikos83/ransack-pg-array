Ransack.configure do |config|
  config.add_predicate 'contains',
                       arel_predicate: 'contains',
                       formatter: proc { |v| "{#{v}}" },
                       validator: proc { |v| v.present? },
                       type: :string

  config.add_predicate 'contains_string',
                       arel_predicate: 'contains_string',
                       formatter: proc { |v| "{#{v.delete(']').delete('[')}}" },
                       validator: proc { |v| v.present? },
                       type: :string
end
