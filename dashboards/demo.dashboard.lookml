- dashboard: healthcare_demo_1_dashboard
  title: Healthcare Demo Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: MjVRrqLVBtBQ02lBqdqJD1
  elements:
  - title: Most Common Patient Conditions
    name: Most Common Patient Conditions
    model: healthcare_demo_1_1
    explore: fct_patient_conditions
    type: looker_bar
    fields: [fct_patient_conditions.condition_type, fct_patient_conditions.count]
    sorts: [fct_patient_conditions.count desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields: [{measure: average_of_age, based_on: dim_patients.age, expression: '',
        label: Average of Age, type: average, _kind_hint: measure, _type_hint: number},
      {measure: list_of_condition_type, based_on: fct_patient_conditions.condition_type,
        expression: '', label: List of Condition Type, type: list, _kind_hint: measure,
        _type_hint: list}]
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
    series_types: {}
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
    row: 29
    col: 13
    width: 11
    height: 8
  - title: Conditions with Youngest Onset Age
    name: Conditions with Youngest Onset Age
    model: healthcare_demo_1
    explore: fct_patient_conditions
    type: looker_bar
    fields: [fct_patient_conditions.condition_type, average_of_age_onset]
    sorts: [average_of_age_onset]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{measure: average_of_age, based_on: dim_patients.age, expression: '',
        label: Average of Age, type: average, _kind_hint: measure, _type_hint: number},
      {measure: list_of_condition_type, based_on: fct_patient_conditions.condition_type,
        expression: '', label: List of Condition Type, type: list, _kind_hint: measure,
        _type_hint: list}, {measure: average_of_age_when_deceased, based_on: dim_patients.age_when_deceased,
        expression: '', label: Average of Age When Deceased, type: average, _kind_hint: measure,
        _type_hint: number}, {measure: average_of_patient_age_at_death, based_on: fct_patient_conditions.patient_age_at_death,
        expression: '', label: Average of Patient Age At Death, type: average, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_patient_state, based_on: fct_patient_conditions.patient_state,
        expression: '', label: Count of Patient State, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {category: measure, label: Filtered fct_patient_conditions.count,
        based_on: fct_patient_conditions.count, _kind_hint: measure, measure: filtered_fct_patient_conditionscount,
        type: count_distinct, _type_hint: number, filters: {}}, {measure: list_of_patient_state,
        based_on: fct_patient_conditions.patient_state, expression: '', label: List
          of Patient State, type: list, _kind_hint: measure, _type_hint: list}, {
        measure: list_of_patient_city, based_on: fct_patient_conditions.patient_city,
        expression: '', label: List of Patient City, type: list, _kind_hint: measure,
        _type_hint: list}, {category: table_calculation, expression: 'floor(diff_months(${fct_patient_conditions.patient_birth_date},${fct_patient_conditions.condition_onset_date})/12)',
        label: Age of Onset, value_format: !!null '', value_format_name: '', _kind_hint: dimension,
        table_calculation: age_of_onset, _type_hint: number, is_disabled: true}, {
        category: dimension, expression: 'floor(diff_months(${fct_patient_conditions.patient_birth_date},${fct_patient_conditions.condition_onset_date})/12)',
        label: age_onset, value_format: !!null '', value_format_name: !!null '', dimension: age_onset,
        _kind_hint: dimension, _type_hint: number}, {measure: average_of_age_onset,
        based_on: age_onset, expression: '', label: Average of age_onset, type: average,
        _kind_hint: measure, _type_hint: number}]
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
    limit_displayed_rows: true
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
    y_axes: [{label: Average Onset Age (years), orientation: bottom, series: [{axisId: average_of_age_onset,
            id: average_of_age_onset, name: Average of age_onset}], showLabels: true,
        showValues: true, maxValue: 10, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      average_of_age_onset: "#AE6262"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    hidden_fields: []
    defaults_version: 1
    listen:
      Location of Hospital: fct_patient_conditions.patient_city
    row: 50
    col: 12
    width: 12
    height: 7
  - title: Conditions with Oldest Onset Age
    name: Conditions with Oldest Onset Age
    model: healthcare_demo_1
    explore: fct_patient_conditions
    type: looker_bar
    fields: [fct_patient_conditions.condition_type, average_of_age_onset]
    sorts: [average_of_age_onset desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{measure: average_of_age, based_on: dim_patients.age, expression: '',
        label: Average of Age, type: average, _kind_hint: measure, _type_hint: number},
      {measure: list_of_condition_type, based_on: fct_patient_conditions.condition_type,
        expression: '', label: List of Condition Type, type: list, _kind_hint: measure,
        _type_hint: list}, {measure: average_of_age_when_deceased, based_on: dim_patients.age_when_deceased,
        expression: '', label: Average of Age When Deceased, type: average, _kind_hint: measure,
        _type_hint: number}, {measure: average_of_patient_age_at_death, based_on: fct_patient_conditions.patient_age_at_death,
        expression: '', label: Average of Patient Age At Death, type: average, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_patient_state, based_on: fct_patient_conditions.patient_state,
        expression: '', label: Count of Patient State, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {category: measure, label: Filtered fct_patient_conditions.count,
        based_on: fct_patient_conditions.count, _kind_hint: measure, measure: filtered_fct_patient_conditionscount,
        type: count_distinct, _type_hint: number, filters: {}}, {measure: list_of_patient_state,
        based_on: fct_patient_conditions.patient_state, expression: '', label: List
          of Patient State, type: list, _kind_hint: measure, _type_hint: list}, {
        measure: list_of_patient_city, based_on: fct_patient_conditions.patient_city,
        expression: '', label: List of Patient City, type: list, _kind_hint: measure,
        _type_hint: list}, {category: table_calculation, expression: 'floor(diff_months(${fct_patient_conditions.patient_birth_date},${fct_patient_conditions.condition_onset_date})/12)',
        label: Age of Onset, value_format: !!null '', value_format_name: '', _kind_hint: dimension,
        table_calculation: age_of_onset, _type_hint: number, is_disabled: true}, {
        category: dimension, expression: 'floor(diff_months(${fct_patient_conditions.patient_birth_date},${fct_patient_conditions.condition_onset_date})/12)',
        label: age_onset, value_format: !!null '', value_format_name: !!null '', dimension: age_onset,
        _kind_hint: dimension, _type_hint: number}, {measure: average_of_age_onset,
        based_on: age_onset, expression: '', label: Average of age_onset, type: average,
        _kind_hint: measure, _type_hint: number}]
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
    limit_displayed_rows: true
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
    y_axes: [{label: Average Onset Age (years), orientation: bottom, series: [{axisId: average_of_age_onset,
            id: average_of_age_onset, name: Average of age_onset}], showLabels: true,
        showValues: true, maxValue: 100, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      average_of_age_onset: "#AE6262"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    hidden_fields: []
    defaults_version: 1
    listen:
      Location of Hospital: fct_patient_conditions.patient_city
    row: 50
    col: 0
    width: 11
    height: 7
  - title: Top Ten Hospitals With Highest Claim Value
    name: Top Ten Hospitals With Highest Claim Value
    model: healthcare_demo_1
    explore: fct_claims
    type: looker_column
    fields: [dim_organizations.organization_name, fct_claims.total_claims_value]
    sorts: [fct_claims.total_claims_value desc]
    limit: 10
    column_limit: 50
    query_timezone: America/Montreal
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
    show_value_labels: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: fct_claims.total_claims_value,
            id: fct_claims.total_claims_value, name: Total Claims Value}], showLabels: true,
        showValues: true, valueFormat: '$0.00,,,"B"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: $0.00,,,"B"
    series_types: {}
    series_colors: {}
    series_labels: {}
    column_spacing_ratio: 0.3
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 59
    col: 2
    width: 19
    height: 8
  - title: New Tile
    name: New Tile
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: single_value
    fields: [dim_patients.count, fct_hospital_events.encounter_started_year]
    fill_fields: [fct_hospital_events.encounter_started_year]
    filters:
      fct_hospital_events.encounter_started_year: '2019,2018'
    sorts: [fct_hospital_events.encounter_started_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(offset(${dim_patients.count},0)-offset(${dim_patients.count},1))\
          \ / offset(${dim_patients.count},1)", label: YoY Change, value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, table_calculation: yoy_change,
        _type_hint: number}]
    query_timezone: America/Montreal
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 'Total # of Patients'
    value_format: ''
    comparison_label: from Prior Year
    defaults_version: 1
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 2
    col: 14
    width: 5
    height: 4
  - title: New Tile
    name: New Tile (2)
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: single_value
    fields: [fct_hospital_events.mortality_rate, fct_hospital_events.encounter_started_year]
    fill_fields: [fct_hospital_events.encounter_started_year]
    filters:
      fct_hospital_events.encounter_started_year: '2019,2018'
    sorts: [fct_hospital_events.encounter_started_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: '100* (offset(${fct_hospital_events.mortality_rate},0)-offset(${fct_hospital_events.mortality_rate},1))',
        label: YoY Chang, value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        table_calculation: yoy_chang, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    custom_color: "#CE642D"
    single_value_title: Patient Mortality Rate
    comparison_label: from Prior Year
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 6
    col: 19
    width: 5
    height: 4
  - title: Top 10 Least Successful Procedures
    name: Top 10 Least Successful Procedures
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: looker_column
    fields: [fct_hospital_events.procedure_code, fct_hospital_events.count_of_procedures,
      fct_hospital_events.count_of_patients_who_died_14_days_after_procedure, fct_hospital_events.success_rate]
    filters:
      fct_hospital_events.procedure_code: "-Autopsy examination,-Admission to long\
        \ stay hospital,-Admission to burn unit,-Admission to neurosurgical department,-Admission\
        \ to orthopedic department,-Admission to trauma surgery department,-NULL"
    sorts: [fct_hospital_events.success_rate]
    limit: 5000
    column_limit: 50
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: fct_hospital_events.success_rate,
            id: fct_hospital_events.success_rate, name: Success Rate}], showLabels: true,
        showValues: true, maxValue: 1, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      fct_hospital_events.success_rate: "#74A09F"
    show_row_numbers: true
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
      fct_hospital_events.success_rate:
        is_active: true
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [fct_hospital_events.count_of_procedures, fct_hospital_events.count_of_patients_who_died_14_days_after_procedure]
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 39
    col: 0
    width: 15
    height: 9
  - title: Gender Distribution of Patients
    name: Gender Distribution of Patients
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: looker_pie
    fields: [dim_patients.patient_gender, dim_patients.count]
    sorts: [dim_patients.patient_gender]
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
    series_labels:
      female: Female
      male: Male
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
    series_types: {}
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 29
    col: 0
    width: 6
    height: 8
  - title: Age Distribution of Patients
    name: Age Distribution of Patients
    model: healthcare_demo_1
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
    series_labels:
      1 to 12: Children (1-12)
      13 to 17: Adolescents (13-17)
      18 to 64: Adult (18-64)
      65 or Above: Older Adult (65+)
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
    series_types: {}
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 29
    col: 6
    width: 6
    height: 8
  - title: Encounter Rates by Hospital
    name: Encounter Rates by Hospital
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: looker_google_map
    fields: [dim_organizations.organization_name, dim_organizations.organization_postal_code,
      fct_hospital_events.count_of_encounters]
    filters:
      dt_hospital_readmissions.admission_timeframe: '15'
    sorts: [fct_hospital_events.count_of_encounters desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Montreal
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.4
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    limit_displayed_rows: true
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
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    defaults_version: 0
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 2
    col: 1
    width: 12
    height: 12
  - title: Avg Claim Cost per Patient
    name: Avg Claim Cost per Patient
    model: healthcare_demo_1
    explore: fct_claims
    type: single_value
    fields: [fct_claims.total_claims_value, dim_patients.count, fct_claims.billable_period_started_year]
    fill_fields: [fct_claims.billable_period_started_year]
    filters:
      fct_claims.billable_period_started_year: '2019,2018'
    sorts: [fct_claims.billable_period_started_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${fct_claims.total_claims_value}\
          \ / ${dim_patients.count}", label: Avg Claim Cost per Patient, value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, table_calculation: avg_claim_cost_per_patient,
        _type_hint: number}, {category: table_calculation, expression: 'offset(${avg_claim_cost_per_patient},0)-offset(${avg_claim_cost_per_patient},1)',
        label: YoY Change, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: yoy_change, _type_hint: number}]
    query_timezone: America/Vancouver
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Claim Cost per Patient
    value_format: ''
    comparison_label: from Prior Year
    hidden_pivots: {}
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
    series_types: {}
    hidden_fields: [fct_claims.total_claims_value, dim_patients.count]
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 10
    col: 14
    width: 5
    height: 4
  - title: Average Length of Stay (Days)
    name: Average Length of Stay (Days)
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: single_value
    fields: [fct_hospital_events.average_length_of_stay, fct_hospital_events.count_of_encounters,
      fct_hospital_events.encounter_started_year]
    fill_fields: [fct_hospital_events.encounter_started_year]
    filters:
      dt_hospital_readmissions.admission_timeframe: '15'
      fct_hospital_events.encounter_started_year: '2019,2018'
    sorts: [fct_hospital_events.average_length_of_stay]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'offset(${fct_hospital_events.average_length_of_stay},0)-offset(${fct_hospital_events.average_length_of_stay},1)',
        label: YoY Change, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: yoy_change, _type_hint: number}]
    query_timezone: America/Montreal
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Average Length of Stay (Days)
    comparison_label: from Prior Year
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      fct_hospital_events.average_length_of_stay:
        is_active: true
    table_theme: white
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: fct_hospital_events.count_of_encounters,
            id: fct_hospital_events.count_of_encounters, name: Count of Encounters}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: dt_hospital_readmissions.readmission_rate, id: dt_hospital_readmissions.readmission_rate,
            name: Hospital Re-admission Rate (%)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    label_value_format: '[>=1000000]0.0,,"M";[>=1000]0.0,"K";[>=0]#.#%'
    series_types: {}
    point_style: circle_outline
    series_colors:
      dt_hospital_readmissions.readmission_rate: "#583783"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [fct_hospital_events.count_of_encounters, fct_hospital_events.encounter_started_year]
    hidden_points_if_no: []
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.4
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 6
    col: 14
    width: 5
    height: 4
  - title: New Tile
    name: New Tile (3)
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: single_value
    fields: [fct_hospital_events.count_of_encounters, fct_hospital_events.encounter_started_year]
    fill_fields: [fct_hospital_events.encounter_started_year]
    filters:
      fct_hospital_events.encounter_started_year: '2019,2018'
    sorts: [fct_hospital_events.encounter_started_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(offset(${fct_hospital_events.count_of_encounters},0)-offset(${fct_hospital_events.count_of_encounters},1))\
          \ / offset(${fct_hospital_events.count_of_encounters},1)", label: YoY Change,
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        table_calculation: yoy_change, _type_hint: number}]
    query_timezone: America/Montreal
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Number of Hospitalizations
    comparison_label: from Prior Year
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#14af8e",
        font_color: !!null '', color_application: {collection_id: montreal-analytics,
          palette_id: montreal-analytics-sequential-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 2
    col: 19
    width: 5
    height: 4
  - title: Average Claim Per Procedure
    name: Average Claim Per Procedure
    model: healthcare_demo_1
    explore: fct_claims
    type: looker_grid
    fields: [fct_claims.total_claims_value, fct_claims.count, fct_claims.procedure_code]
    filters:
      fct_claims.procedure_id: "-EMPTY"
    sorts: [fct_claims.total_claims_value desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: patient_id, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: patient_id,
        args: [dim_patients.patient_id, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Patient, filter: ''}], !!null ''], _kind_hint: dimension, _type_hint: string},
      {category: table_calculation, expression: "${fct_claims.total_claims_value}/${fct_claims.count}",
        label: Avg Claim Cost per Procedure, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: avg_claim_cost_per_procedure, _type_hint: number}]
    query_timezone: America/Vancouver
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
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
    series_labels: {}
    series_cell_visualizations:
      fct_claims.total_claims_value:
        is_active: true
        palette:
          palette_id: datatonic-diverging-0
          collection_id: datatonic
        value_display: true
      avg_claim_cost_per_procedure:
        is_active: true
    series_value_format:
      fct_claims.total_claims_value: $0.00,,,"B"
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields:
    hidden_points_if_no: []
    series_column_widths:
      fct_claims.count: 145
      fct_claims.total_claims_value: 312
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 67
    col: 3
    width: 17
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Patient Related Metrics"}],"align":"center"},{"type":"h1","children":[{"text":""}],"id":1686853736340}]'
    rich_content_json: '{"format":"slate"}'
    row: 27
    col: 0
    width: 23
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Procedure Related Metrics"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 37
    col: 0
    width: 24
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Condition Onset"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 48
    col: 0
    width: 23
    height: 2
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Hospital Claims"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 57
    col: 0
    width: 23
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Hospitalization Metrics"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Hospitals with Least Successful Risky Procedure Success Rate
    name: Hospitals with Least Successful Risky Procedure Success Rate
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: looker_grid
    fields: [fct_hospital_events.count_of_procedures, fct_hospital_events.count_of_patients_who_died_14_days_after_procedure,
      fct_hospital_events.success_rate, dim_organizations.organization_name]
    filters:
      fct_hospital_events.procedure_code: Percutaneous coronary intervention,Coronary
        artery bypass grafting,Plain chest X-ray,Transthoracic echocardiography,Incision
        of trachea (procedure),Oxygen Therapy,Intravenous infusion (procedure),Intravenous
        antibiotic therapy,Plain chest X-ray (procedure),Insertion of biventricular
        implantable cardioverter defibrillator
      fct_hospital_events.count_of_procedures: ">1"
    sorts: [fct_hospital_events.success_rate]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fct_hospital_events.success_rate:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '18'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: fct_hospital_events.success_rate,
            id: fct_hospital_events.success_rate, name: Success Rate}], showLabels: true,
        showValues: true, maxValue: 1, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      fct_hospital_events.success_rate: "#74A09F"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [fct_hospital_events.count_of_procedures, fct_hospital_events.count_of_patients_who_died_14_days_after_procedure]
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 39
    col: 16
    width: 8
    height: 9
  - title: Avg Claims per Patient
    name: Avg Claims per Patient
    model: healthcare_demo_1
    explore: fct_claims
    type: single_value
    fields: [dim_patients.count, fct_claims.billable_period_started_year, fct_claims.count]
    fill_fields: [fct_claims.billable_period_started_year]
    filters:
      fct_claims.billable_period_started_year: '2019,2018'
    sorts: [fct_claims.billable_period_started_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${fct_claims.count}\
          \ / ${dim_patients.count}", label: Avg Claims per Patient, value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, table_calculation: avg_claims_per_patient,
        _type_hint: number}, {category: table_calculation, expression: 'offset(${avg_claims_per_patient},0)-offset(${avg_claims_per_patient},1)',
        label: YoY Change, value_format: !!null '', value_format_name: decimal_1,
        _kind_hint: measure, table_calculation: yoy_change, _type_hint: number}]
    query_timezone: America/Vancouver
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Claims per Patient
    value_format: ''
    comparison_label: from Prior Year
    hidden_pivots: {}
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
    series_types: {}
    hidden_fields: [dim_patients.count, fct_claims.count]
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 10
    col: 19
    width: 5
    height: 4
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Re-Admission Rates"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 14
    col: 0
    width: 24
    height: 2
  - title: Readmission Rate by Hospital
    name: Readmission Rate by Hospital
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: looker_bar
    fields: [dim_organizations.organization_name, dim_organizations.organization_postal_code,
      fct_hospital_events.count_of_encounters, dt_hospital_readmissions.readmission_rate]
    filters:
      dt_hospital_readmissions.admission_timeframe: '15'
    sorts: [fct_hospital_events.count_of_encounters desc 0]
    limit: 500
    column_limit: 50
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
    plot_size_by_field: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: fct_hospital_events.count_of_encounters,
            id: fct_hospital_events.count_of_encounters, name: Count of Encounters}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: dt_hospital_readmissions.readmission_rate, id: dt_hospital_readmissions.readmission_rate,
            name: Hospital Re-admission Rate (%)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    size_by_field: dt_hospital_readmissions.readmission_rate
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_series: []
    label_value_format: '[>=1000000]0.0,,"M";[>=1000]0.0,"K";[>=0]#.#%'
    series_types:
      dt_hospital_readmissions.readmission_rate: scatter
    series_colors:
      dt_hospital_readmissions.readmission_rate: "#CE642D"
    series_labels: {}
    series_point_styles: {}
    column_group_spacing_ratio: 0.3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [dim_organizations.organization_postal_code]
    hidden_points_if_no: []
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.4
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen:
      Hospitalization Year: fct_hospital_events.encounter_started_year
    row: 16
    col: 7
    width: 17
    height: 11
  - title: Total Readmission Rates
    name: Total Readmission Rates
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: single_value
    fields: [fct_hospital_events.encounter_started_year, dim_patients.count, dt_hospital_readmissions.readmission_rate]
    fill_fields: [fct_hospital_events.encounter_started_year]
    filters:
      fct_hospital_events.encounter_started_year: '2019,2018'
      dt_hospital_readmissions.admission_timeframe: '30'
    sorts: [fct_hospital_events.encounter_started_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${dim_patients.count}*${dt_hospital_readmissions.readmission_rate}",
        label: Readmitted Patients, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: readmitted_patients, _type_hint: number},
      {category: table_calculation, expression: '100*(offset(${dt_hospital_readmissions.readmission_rate},0)-offset(${dt_hospital_readmissions.readmission_rate},1))',
        label: YoY Change, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: yoy_change, _type_hint: number}]
    query_timezone: America/Montreal
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Re-Admission Rate
    value_format: ''
    comparison_label: from Prior Year
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [dim_patients.count, readmitted_patients]
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 16
    col: 0
    width: 6
    height: 5
  - title: Readmitted Patients
    name: Readmitted Patients
    model: healthcare_demo_1
    explore: fct_hospital_events
    type: single_value
    fields: [fct_hospital_events.encounter_started_year, dim_patients.count, dt_hospital_readmissions.readmission_rate]
    fill_fields: [fct_hospital_events.encounter_started_year]
    filters:
      fct_hospital_events.encounter_started_year: '2019,2018'
      dt_hospital_readmissions.admission_timeframe: '30'
    sorts: [fct_hospital_events.encounter_started_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${dim_patients.count}*${dt_hospital_readmissions.readmission_rate}",
        label: Readmitted Patients, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: readmitted_patients, _type_hint: number},
      {category: table_calculation, expression: "(offset(${dim_patients.count},0)-offset(${dim_patients.count},1))\
          \ / offset(${dim_patients.count},1)", label: YoY Change, value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, table_calculation: yoy_change,
        _type_hint: number}]
    query_timezone: America/Montreal
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 'Total # of Readmitted Patients'
    value_format: ''
    comparison_label: from Prior Year
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [dim_patients.count, dt_hospital_readmissions.readmission_rate]
    listen:
      Hospital Name: dim_organizations.organization_name
      Location of Hospital: dim_organizations.organization_city
    row: 22
    col: 0
    width: 6
    height: 5
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<b>"
    row: 21
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
    model: healthcare_demo_1
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
    model: healthcare_demo_1
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
    model: healthcare_demo_1
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
    model: healthcare_demo_1
    explore: fct_hospital_events
    listens_to_filters: []
    field: dt_hospital_readmissions.admission_timeframe
