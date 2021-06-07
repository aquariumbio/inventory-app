rails generate scaffold container_type \
    name:string description:text size:string

rails generate scaffold container \
    quantity:text location:text \
    container_type:belongs_to

rails generate scaffold collection

rails generate scaffold sample_type \
    name:string description:text

rails generate scaffold sample \
    name:string description:text \
    sample_type:belongs_to

rails generate scaffold single_item \
    sample:belongs_to

rails generate scaffold item \
    format_id:integer format_class:string \
    container:belongs_to

rails generate scaffold physical_state_type \
    name:string

rails generate scaffold single_item_type \
    physical_state_type:belongs_to sample_type:belongs_to

rails generate scaffold collection_type \
    name:string description:text

rails generate scaffold item_type \
    format_type_id:integer format_type_class:string \
    container_type:belongs_to

rails generate scaffold sample_composition_type \
    name:string description:text recipe:text

rails generate scaffold sample_composition \
    quantity:text \
    composite_sample_id:integer component_sample_id:integer \
    sample_composition_type:belongs_to

rails generate scaffold physical_state \
    name:string description:text \
    physical_state_type:belongs_to

rails generate scaffold collection_item \
    row:integer column:integer \
    collection:belongs_to single_item:belongs_to

rails generate scaffold single_items_physical_state \
    single_item:belongs_to physical_state:belongs_to