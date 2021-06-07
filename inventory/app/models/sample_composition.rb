class SampleComposition < ApplicationRecord
  belongs_to :composite_sample, class_name: "Sample", foreign_key: "composite_sample_id"
  belongs_to :component_sample, class_name: "Sample", foreign_key: "component_sample_id"
  belongs_to :sample_composition_type

  def grouper
    {
      composite_sample: composite_sample,
      sample_composition_type: sample_composition_type
    }
  end
end
