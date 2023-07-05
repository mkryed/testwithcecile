- dashboard: mini_healthcare_demo_dash
  title: Mini Healthcare Demo Dash
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: kMm2n2FNgt2umu12Gq7Xso
  elements:
  - title: Most Common Patient Conditions
    name: Most Common Patient Conditions
    model: healthcare_demo
    explore: fct_patient_conditions
    type: looker_bar
    fields: [fct_patient_conditions.condition_type, fct_patient_conditions.count]
    sorts: [fct_patient_conditions.count desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: average_of_age
      based_on: dim_patients.age
      expression: ''
      label: Average of Age
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: list_of_condition_type
      based_on: fct_patient_conditions.condition_type
      expression: ''
      label: List of Condition Type
      type: list
      _kind_hint: measure
      _type_hint: list
    query_timezone: America/Montreal
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    y_axes: [{label: Most Common Patient Conditions, orientation: bottom, series: [
          {axisId: fct_patient_conditions.count, id: fct_patient_conditions.count,
            name: Count of Patient Conditions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_colors:
      fct_patient_conditions.count: "#74A09F"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fct_patient_conditions.count:
        is_active: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Location of Hospital: fct_patient_conditions.patient_city
    row: 0
    col: 13
    width: 11
    height: 8
  - title: Age Distribution of Patients
    name: Age Distribution of Patients
    model: healthcare_demo
    explore: fct_hospital_events
    type: looker_pie
    fields: [dim_patients.age_range_tier, dim_patients.count]
    filters:
      dim_patients.age_range_tier: "-Undefined"
    limit: 500
    column_limit: 50
    query_timezone: America/Montreal
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 0
    col: 6
    width: 7
    height: 8
  - name: ''
    type: text
    title_text: ''
    body_text: "<b>"
    row: 0
    col: 0
    width: 6
    height: 1
  filters:
  - name: Hospitalization Year
    title: Hospitalization Year
    type: field_filter
    default_value: '2019'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: healthcare_demo
    explore: fct_hospital_events
    listens_to_filters: []
    field: fct_hospital_events.encounter_started_year
  - name: Hospital Name
    title: Hospital Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: healthcare_demo
    explore: fct_claims
    listens_to_filters: []
    field: dim_organizations.organization_name
  - name: Location of Hospital
    title: Location of Hospital
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: healthcare_demo
    explore: fct_claims
    listens_to_filters: []
    field: dim_organizations.organization_city
  - name: Re-Admission Timeframe
    title: Re-Admission Timeframe
    type: field_filter
    default_value: '30'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '35'
      - '30'
      - '25'
      - '20'
      - '15'
      - '10'
    model: healthcare_demo
    explore: fct_hospital_events
    listens_to_filters: []
    field: dt_hospital_readmissions.admission_timeframe
