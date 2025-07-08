---
- dashboard: ga4_weekly
  title: GA4 Weekly
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ""
  filters_bar_collapsed: true
  preferred_slug: cUJqxOYZM21y2UvVOw469O
  elements:
    - title: PDP Rate (URL)
      name: PDP Rate (URL)
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.pdp_users_url,
          sessions.total_users,
          sessions.pdp_rate_2,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users_url},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/01/01`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2023 - wt_average_conversion: "#ff449a"
        2024 - wt_average_conversion: "#149eff"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel PDP URL / All Users Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average Conversion',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel PDP URL / All Users Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average Conversion',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - wt_average_step_2
      defaults_version: 1
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          sessions.pdp_users_url,
          sessions.total_users,
          wt_average_step_2,
          wt_average_step_1,
        ]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 110
      col: 0
      width: 24
      height: 7
    - title: Purchase Rate
      name: Purchase Rate
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.purchase_users,
          sessions.pdp_users,
          sessions.purchase_rate,
          sessions.session_year,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.purchase_users},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: []
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2023 - wt_average_conversion: "#ff449a"
        2024 - wt_average_conversion: "#149eff"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Purchase Rate %',
            lineWidth: '1px'
          }, {
            name: '2023 - 4WT Average Conversion',
            lineWidth: '5px'
          }, {
            name: '2024 - eComm Funnel Purchase Rate %',
            lineWidth: '1px'
          }, {
            name: '2024 - 4WT Average Conversion',
            lineWidth: '5px'
          }]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - wt_average_step_2
      defaults_version: 1
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          wt_average_step_2,
          wt_average_step_1,
          sessions.purchase_users,
          sessions.pdp_users,
        ]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 19
      col: 0
      width: 24
      height: 7
    - title: Add Shipping Info >> Purchase Rate
      name: Add Shipping Info >> Purchase Rate
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.add_shipping_info_users,
          sessions.purchase_users,
          sessions.purchase_add_shipping_rate,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.purchase_users},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
        - category: table_calculation
          expression: mean(offset_list(${sessions.add_shipping_info_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: []
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average_conversion: "#149eff"
        2023 - wt_average_conversion: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel Purchase / Add Shipping Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average Conversion',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Purchase / Add Shipping Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average Conversion',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          wt_average_step_2,
          wt_average_step_1,
          sessions.add_shipping_info_users,
          sessions.purchase_users,
        ]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 68
      col: 9
      width: 15
      height: 7
    - title: Total Site Conversion Rate
      name: Total Site Conversion Rate
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.total_users,
          sessions.purchase_users,
          sessions.total_site_conversion_rate,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.purchase_users},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/05/22`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: []
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2023 - wt_average_conversion: "#ff449a"
        2024 - wt_average_conversion: "#149eff"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [{
              'name': '2023 - eComm Funnel Total Site Conversion Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average Conversion',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Total Site Conversion Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average Conversion',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - wt_average_step_2
      defaults_version: 1
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          sessions.total_users,
          wt_average_step_2,
          wt_average_step_1,
          sessions.purchase_users,
        ]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 26
      col: 0
      width: 24
      height: 7
    - title: Add to Cart >> Begin Checkout Rate
      name: Add to Cart >> Begin Checkout Rate
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.add_to_cart_users,
          sessions.begin_checkout_users,
          sessions.begin_checkout_atc_rate,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.begin_checkout_users},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
        - category: table_calculation
          expression: mean(offset_list(${sessions.add_to_cart_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: []
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average_conversion: "#149eff"
        2023 - wt_average_conversion: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel Begin Checkout / Add to Cart Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average Conversion',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Begin Checkout / Add to Cart Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average Conversion',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          wt_average_step_2,
          wt_average_step_1,
          sessions.add_to_cart_users,
          sessions.begin_checkout_users,
        ]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 54
      col: 9
      width: 15
      height: 7
    - title: Begin Checkout >> Add Shipping Info Rate
      name: Begin Checkout >> Add Shipping Info Rate
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.begin_checkout_users,
          sessions.add_shipping_info_users,
          sessions.add_shipping_begin_checkout_rate,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.add_shipping_info_users},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
        - category: table_calculation
          expression: mean(offset_list(${sessions.begin_checkout_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: []
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average_conversion: "#149eff"
        2023 - wt_average_conversion: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel Add Shipping / Begin Checkout Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average Conversion',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Add Shipping / Begin Checkout Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average Conversion',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          wt_average_step_2,
          wt_average_step_1,
          sessions.begin_checkout_users,
          sessions.add_shipping_info_users,
        ]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 61
      col: 9
      width: 15
      height: 7
    - title: View Item >> Add to Cart Rate
      name: View Item >> Add to Cart Rate
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.pdp_users,
          sessions.session_year,
          sessions.add_to_cart_users,
          sessions.add_to_cart_pdp_rate,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.add_to_cart_users},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: []
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average_conversion: "#149eff"
        2023 - wt_average_conversion: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel Add to Cart / PDP Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average Conversion',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Add to Cart / PDP Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average Conversion',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - wt_average_step_2
      defaults_version: 1
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          wt_average_step_2,
          wt_average_step_1,
          sessions.pdp_users,
          sessions.add_to_cart_users,
        ]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 47
      col: 9
      width: 15
      height: 7
    - title: Purchase Users
      name: Purchase Users
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.purchase_users,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users_url},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.purchase_users},0,4))
          label: 4WT Average
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average: "#149eff"
        2023 - wt_average: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel Purchase Users',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Purchase Users',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields: [wt_average_bc]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 75
      col: 0
      width: 24
      height: 7
    - title: Add Shipping Info Users
      name: Add Shipping Info Users
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.add_shipping_info_users,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users_url},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.add_shipping_info_users},0,4))
          label: 4WT Average
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: [
          2023 - wt_average_conversion,
          2024 - wt_average_conversion,
          2023
          - wt_average,
          2024 - wt_average,
        ]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average: "#149eff"
        2023 - wt_average: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel Add Shipping Info Users',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Add Shipping Info Users',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields: [wt_average_bc]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 68
      col: 0
      width: 9
      height: 7
    - title: PDP Users
      name: PDP Users
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.pdp_users,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users_url},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users},0,4))
          label: 4WT Average
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: [
          2023 - wt_average_conversion,
          2024 - wt_average_conversion,
          2023
          - wt_average,
          2024 - wt_average,
        ]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average: "#149eff"
        2023 - wt_average: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [{
              'name': '2023 - eComm Funnel PDP Users',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel PDP Users',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields: [wt_average_bc]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 47
      col: 0
      width: 9
      height: 7
    - title: Begin Checkout Users
      name: Begin Checkout Users
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.begin_checkout_users,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users_url},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.begin_checkout_users},0,4))
          label: 4WT Average
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: [
          2023 - wt_average_conversion,
          2024 - wt_average_conversion,
          2023
          - wt_average,
          2024 - wt_average,
        ]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average: "#149eff"
        2023 - wt_average: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel Begin Checkout Users',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Begin Checkout Users',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields: [wt_average_bc]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 61
      col: 0
      width: 9
      height: 7
    - title: Add to Cart Users
      name: Add to Cart Users
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.add_to_cart_users,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users_url},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.add_to_cart_users},0,4))
          label: 4WT Average
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: [
          2023 - wt_average_conversion,
          2024 - wt_average_conversion,
          2023
          - wt_average,
          2024 - wt_average,
        ]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average: "#149eff"
        2023 - wt_average: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - eComm Funnel Add to Cart Users',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel Add to Cart Users',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields: [wt_average_bc]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 54
      col: 0
      width: 9
      height: 7
    - title: All Traffic (Users)
      name: All Traffic (Users)
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.total_users,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users_url},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/01/01`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2024 - wt_average: "#149eff"
        2023 - wt_average: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [
            {
              'name': '2023 - All Users',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - All Users',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names: []
      defaults_version: 1
      hidden_fields: [wt_average_bc]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 40
      col: 0
      width: 24
      height: 7
    - title: Table View YoY Comparison
      name: Table View YoY Comparison
      model: ga4_v2
      explore: sessions
      type: looker_grid
      fields:
        [
          sessions.session_week_of_year,
          sessions.total_users,
          sessions.add_shipping_info_users,
          sessions.pdp_users_url,
          sessions.add_to_cart_users,
          sessions.begin_checkout_users,
          sessions.purchase_users,
          sessions.purchase_rate,
          sessions.total_site_conversion_rate,
          sessions.session_year,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year]
      filters:
        events.event_time_date: before 0 days ago
        sessions.session_date: after 2023/01/01
      sorts: [sessions.session_year, sessions.session_week_of_year 0]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.purchase_users},-3,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.add_shipping_info_users},-3,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},-3,4))
          label: 4WT Avg Users
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: wt_avg_users
          _type_hint: number
          is_disabled: true
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: true
      header_text_alignment: left
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order:
        [
          "$$$_row_numbers_$$$",
          sessions.session_week_of_year,
          2023_sessions.total_users,
          2024_sessions.total_users,
          2023_sessions.pdp_users_url,
          2024_sessions.pdp_users_url,
          2023_sessions.add_to_cart_users,
          2024_sessions.add_to_cart_users,
          2023_sessions.begin_checkout_users,
          2024_sessions.begin_checkout_users,
          2023_sessions.add_shipping_info_users,
          2024_sessions.add_shipping_info_users,
          2023_sessions.purchase_users,
          2024_sessions.purchase_users,
          2023_sessions.purchase_rate,
          2024_sessions.purchase_rate,
          2023_sessions.total_site_conversion_rate,
          2024_sessions.total_site_conversion_rate,
        ]
      show_totals: false
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_cell_visualizations:
        sessions.total_users:
          is_active: false
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      conditional_formatting:
        [
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: afccdf9f-2d76-0152-d60c-88a92c55cfae,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: percentile, value: 1 },
                        mid: { type: percentile, value: 50 },
                        max: { type: percentile, value: 99 },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.total_users],
          },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: 7a2beef1-3373-267d-20be-d2d32bb28e70,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.pdp_users_url],
          },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: bcfb322c-02a6-8d08-b77c-4412584599db,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.add_to_cart_users],
          },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: e1548771-c493-dd18-8897-9f5a287030c8,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.begin_checkout_users],
          },
          { type: along
              a scale..., value: !!null "", background_color: "#ff449a", font_color: !!null "", color_application: { collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6, custom: { id: 62e45c78-5057-3843-74d7-a68c2a97601c, label: Custom, type: continuous, stops: [{ color: "#ffb29d", offset: 0 }, { color: "#ffffff", offset: 50 }, { color: "#6cbf89", offset: 100 }] }, options: { steps: 5, constraints: { min: { type: minimum }, mid: { type: percentile, value: 50 }, max: { type: maximum } }, mirror: false, reverse: false, stepped: false } }, bold: false, italic: false, strikethrough: false, fields: [sessions.add_shipping_info_users] },
          { type: along
              a scale..., value: !!null "", background_color: "#ff449a", font_color: !!null "", color_application: { collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6, custom: { id: 307257f3-afc1-86e9-df11-6a81f465ab09, label: Custom, type: continuous, stops: [{ color: "#ffb29d", offset: 0 }, { color: "#ffffff", offset: 50 }, { color: "#6cbf89", offset: 100 }] }, options: { steps: 5, constraints: { min: { type: minimum }, mid: { type: percentile, value: 50 }, max: { type: maximum } }, mirror: false, reverse: false, stepped: false } }, bold: false, italic: false, strikethrough: false, fields: [sessions.purchase_users] },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: d300a6f0-583f-2d21-e20f-2ad2dba46ac3,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.purchase_rate],
          },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: f3681875-4ddc-c856-0ff7-4f62eb01a952,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: true,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.total_site_conversion_rate],
          },
        ]
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
      trellis: ""
      stacking: ""
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Purchase / Add Shipping Rate %'
          }, {
            name: '2023 - 4WT Average Conversion'
          }, {
            name: '2024 - eComm Funnel Purchase / Add Shipping Rate %'
          }, {
            name: '2024 - 4WT Average Conversion'
          }]
        }
      hidden_pivots: {}
      defaults_version: 1
      hidden_fields: [wt_average, wt_average_bc]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 96
      col: 0
      width: 24
      height: 14
    - title: Table View
      name: Table View
      model: ga4_v2
      explore: sessions
      type: looker_grid
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_week,
          sessions.total_users,
          sessions.pdp_users,
          sessions.add_to_cart_users,
          sessions.begin_checkout_users,
          sessions.add_shipping_info_users,
          sessions.purchase_users,
          sessions.purchase_rate,
          sessions.total_site_conversion_rate,
          sessions.pdp_rate,
        ]
      filters:
        events.event_time_date: before 0 days ago
        sessions.session_date: after 2023/01/01
      sorts: [sessions.session_week desc]
      limit: 500
      column_limit: 50
      total: true
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: true
      header_text_alignment: left
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order:
        [
          "$$$_row_numbers_$$$",
          sessions.session_week_of_year,
          sessions.session_week,
          sessions.total_users,
          sessions.pdp_users,
          sessions.add_to_cart_users,
          sessions.begin_checkout_users,
          sessions.add_shipping_info_users,
          sessions.purchase_users,
          sessions.purchase_rate,
          sessions.total_site_conversion_rate,
          sessions.pdp_rate,
        ]
      show_totals: false
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_cell_visualizations:
        sessions.total_users:
          is_active: false
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      conditional_formatting:
        [
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: afccdf9f-2d76-0152-d60c-88a92c55cfae,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: percentile, value: 1 },
                        mid: { type: percentile, value: 50 },
                        max: { type: percentile, value: 99 },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.total_users],
          },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: 7a2beef1-3373-267d-20be-d2d32bb28e70,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [],
          },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: bcfb322c-02a6-8d08-b77c-4412584599db,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.add_to_cart_users],
          },
          { type: along
              a scale..., value: !!null "", background_color: "#ff449a", font_color: !!null "", color_application: { collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6, custom: { id: e1548771-c493-dd18-8897-9f5a287030c8, label: Custom, type: continuous, stops: [{ color: "#ffb29d", offset: 0 }, { color: "#ffffff", offset: 50 }, { color: "#6cbf89", offset: 100 }] }, options: { steps: 5, constraints: { min: { type: minimum }, mid: { type: percentile, value: 50 }, max: { type: maximum } }, mirror: false, reverse: false, stepped: false } }, bold: false, italic: false, strikethrough: false, fields: [sessions.begin_checkout_users] },
          { type: along
              a scale..., value: !!null "", background_color: "#ff449a", font_color: !!null "", color_application: { collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6, custom: { id: 62e45c78-5057-3843-74d7-a68c2a97601c, label: Custom, type: continuous, stops: [{ color: "#ffb29d", offset: 0 }, { color: "#ffffff", offset: 50 }, { color: "#6cbf89", offset: 100 }] }, options: { steps: 5, constraints: { min: { type: minimum }, mid: { type: percentile, value: 50 }, max: { type: maximum } }, mirror: false, reverse: false, stepped: false } }, bold: false, italic: false, strikethrough: false, fields: [sessions.add_shipping_info_users] },
          { type: along
              a scale..., value: !!null "", background_color: "#ff449a", font_color: !!null "", color_application: { collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6, custom: { id: 307257f3-afc1-86e9-df11-6a81f465ab09, label: Custom, type: continuous, stops: [{ color: "#ffb29d", offset: 0 }, { color: "#ffffff", offset: 50 }, { color: "#6cbf89", offset: 100 }] }, options: { steps: 5, constraints: { min: { type: minimum }, mid: { type: percentile, value: 50 }, max: { type: maximum } }, mirror: false, reverse: false, stepped: false } }, bold: false, italic: false, strikethrough: false, fields: [sessions.purchase_users] },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: d300a6f0-583f-2d21-e20f-2ad2dba46ac3,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: false,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.purchase_rate],
          },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: f3681875-4ddc-c856-0ff7-4f62eb01a952,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: true,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.total_site_conversion_rate],
          },
          { type: along
              a scale..., value: !!null "", background_color: "#ff449a", font_color: !!null "", color_application: { collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6, custom: { id: 79f8edc7-d051-520a-35ed-c938e7daf004, label: Custom, type: continuous, stops: [{ color: "#ffb29d", offset: 0 }, { color: "#ffffff", offset: 50 }, { color: "#6cbf89", offset: 100 }] }, options: { steps: 5, constraints: { min: { type: minimum }, mid: { type: percentile, value: 50 }, max: { type: maximum } }, mirror: true, reverse: false, stepped: false } }, bold: false, italic: false, strikethrough: false, fields: [sessions.pdp_rate] },
          {
            type: along a scale...,
            value: !!null "",
            background_color: "#ff449a",
            font_color: !!null "",
            color_application:
              {
                collection_id: 1550a107-f683-4f25-84a0-5e7652158ec6,
                custom:
                  {
                    id: b51f7daf-da16-8589-b08a-9bbf3b2d7ea3,
                    label: Custom,
                    type: continuous,
                    stops:
                      [
                        { color: "#ffb29d", offset: 0 },
                        { color: "#ffffff", offset: 50 },
                        { color: "#6cbf89", offset: 100 },
                      ],
                  },
                options:
                  {
                    steps: 5,
                    constraints:
                      {
                        min: { type: minimum },
                        mid: { type: percentile, value: 50 },
                        max: { type: maximum },
                      },
                    mirror: true,
                    reverse: false,
                    stepped: false,
                  },
              },
            bold: false,
            italic: false,
            strikethrough: false,
            fields: [sessions.pdp_users],
          },
        ]
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
      trellis: ""
      stacking: ""
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Purchase / Add Shipping Rate %'
          }, {
            name: '2023 - 4WT Average Conversion'
          }, {
            name: '2024 - eComm Funnel Purchase / Add Shipping Rate %'
          }, {
            name: '2024 - 4WT Average Conversion'
          }]
        }
      hidden_pivots: {}
      defaults_version: 1
      hidden_fields: [wt_average, wt_average_bc]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 82
      col: 0
      width: 24
      height: 14
    - title: YTD Weekly PDP Rate
      name: YTD Weekly PDP Rate
      model: ga4_v2
      explore: sessions
      type: single_value
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.pdp_rate_2,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      filters:
        events.event_time_date: before 0 days ago
        sessions.session_date: after 2023/01/01
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
        - category: table_calculation
          expression: mean(${sessions.purchase_rate})
          label: Average Purchase Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_purchase_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(${sessions.total_site_conversion_rate})
          label: Average Total Site Conversion Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_total_site_conversion_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(${sessions.pdp_rate_2})
          label: Average PDP Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_pdp_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: sum(${sessions.total_users})
          label: Sum of Users
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: sum_of_users
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(${sessions.pdp_rate_2})
          label: Mean of PDP Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: mean_of_pdp_rate
          _type_hint: number
        - category: table_calculation
          label: Percent change from previous column of  Sum of PDP Users
          value_format:
          value_format_name: percent_0
          calculation_type: percent_change_from_previous_column
          table_calculation: percent_change_from_previous_column_of_sum_of_pdp_users
          args:
            - mean_of_pdp_rate
          _kind_hint: measure
          _type_hint: number
      filter_expression:
        "${sessions.session_day_of_year} < (diff_days(date(extract_years(now()),\
        \ 01, 01), now()))"
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: true
      comparison_type: change
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      comparison_label: Last Year to Date
      showHighlight: false
      columnOrder: {}
      indexColumn: false
      transposeTable: false
      label|sessions.pdp_rate_2: PDP Rate
      heading|sessions.pdp_rate_2: PDP Rate
      style|sessions.total_users: normal
      label|sessions.pdp_users_url: PDP Viewers
      heading|sessions.pdp_users_url: PDP Viewers
      hide|sessions.session_week: false
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          wt_average_step_2,
          sessions.session_week_of_year,
          sessions.pdp_rate_2,
        ]
      hidden_points_if_no: []
      series_labels: {}
      show_view_names: false
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2023 - 4WT Average Conversion'
          }, {
            name: '2024 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2024 - 4WT Average Conversion'
          }]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - sum_of_pdp_users
            - percent_change_from_previous_column_of_sum_of_pdp_users
            - mean_of_pdp_rate
      defaults_version: 1
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 17
      col: 16
      width: 8
      height: 2
    - title: YTD Weekly Total Site CVR
      name: YTD Weekly Total Site CVR
      model: ga4_v2
      explore: sessions
      type: single_value
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.purchase_users,
          sessions.total_users,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      filters:
        events.event_time_date: before 0 days ago
        sessions.session_date: after 2023/05/22
        sessions.session_week: before 0 weeks ago
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
        - category: table_calculation
          expression: mean(${sessions.purchase_rate})
          label: Average Purchase Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_purchase_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(${sessions.total_site_conversion_rate})
          label: Average Total Site Conversion Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_total_site_conversion_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(${sessions.pdp_rate_2})
          label: Average PDP Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_pdp_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: sum(${sessions.total_users})
          label: Sum of Users
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: sum_of_users
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: sum(${sessions.total_users})
          label: Sum of Users
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: sum_of_users_1
          _type_hint: number
        - category: table_calculation
          label: Percent change from previous column of  Sum of PDP Users
          value_format:
          value_format_name: percent_0
          calculation_type: percent_change_from_previous_column
          table_calculation: percent_change_from_previous_column_of_sum_of_pdp_users
          args:
            - average_purchase_rate
          _kind_hint: dimension
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: sum(${sessions.purchase_users})
          label: Sum of Purchasers
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: sum_of_purchasers
          _type_hint: number
        - category: table_calculation
          expression: "${sum_of_purchasers}/${sum_of_users_1}"
          label: Total Conversion Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: total_conversion_rate
          _type_hint: number
        - category: table_calculation
          label: Percent of previous column of  Total Conversion Rate
          value_format:
          value_format_name: percent_0
          calculation_type: percent_change_from_previous_column
          table_calculation: percent_of_previous_column_of_total_conversion_rate
          args:
            - total_conversion_rate
          _kind_hint: measure
          _type_hint: number
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: true
      comparison_type: change
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      comparison_label: Last (Full) Year
      showHighlight: false
      columnOrder: {}
      indexColumn: false
      transposeTable: false
      label|sessions.pdp_rate_2: PDP Rate
      heading|sessions.pdp_rate_2: PDP Rate
      style|sessions.total_users: normal
      label|sessions.pdp_users_url: PDP Viewers
      heading|sessions.pdp_users_url: PDP Viewers
      hide|sessions.session_week: false
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          wt_average_step_2,
          sessions.session_week_of_year,
          sessions.total_users,
          sum_of_users_1,
          sum_of_purchasers,
          sessions.purchase_users,
        ]
      hidden_points_if_no: []
      series_labels: {}
      show_view_names: false
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2023 - 4WT Average Conversion'
          }, {
            name: '2024 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2024 - 4WT Average Conversion'
          }]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - sessions.purchase_users
            - total_conversion_rate
            - percent_of_previous_column_of_total_conversion_rate
      defaults_version: 1
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 17
      col: 8
      width: 8
      height: 2
    - title: YTD Weekly Purchase Rate
      name: YTD Weekly Purchase Rate
      model: ga4_v2
      explore: sessions
      type: single_value
      fields:
        [
          sessions.session_week_of_year,
          sessions.session_year,
          sessions.purchase_users,
          sessions.pdp_users,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      filters:
        events.event_time_date: before 0 days ago
        sessions.session_date: after 2023/07/24
        sessions.session_week: before 0 weeks ago
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
        - category: table_calculation
          expression: mean(${sessions.purchase_rate})
          label: Average Purchase Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_purchase_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(${sessions.total_site_conversion_rate})
          label: Average Total Site Conversion Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_total_site_conversion_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: mean(${sessions.pdp_rate_2})
          label: Average PDP Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: average_pdp_rate
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: sum(${sessions.total_users})
          label: Sum of Users
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: sum_of_users
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: sum(${sessions.pdp_users})
          label: Sum of Users
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: sum_of_users_1
          _type_hint: number
        - category: table_calculation
          label: Percent change from previous column of  Sum of PDP Users
          value_format:
          value_format_name: percent_0
          calculation_type: percent_change_from_previous_column
          table_calculation: percent_change_from_previous_column_of_sum_of_pdp_users
          args:
            - average_purchase_rate
          _kind_hint: dimension
          _type_hint: number
          is_disabled: true
        - category: table_calculation
          expression: sum(${sessions.purchase_users})
          label: Sum of Purchasers
          value_format:
          value_format_name: decimal_0
          _kind_hint: measure
          table_calculation: sum_of_purchasers
          _type_hint: number
        - category: table_calculation
          expression: "${sum_of_purchasers}/${sum_of_users_1}"
          label: Total Conversion Rate
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: total_conversion_rate
          _type_hint: number
        - category: table_calculation
          label: Percent of previous column of  Total Conversion Rate
          value_format:
          value_format_name: percent_0
          calculation_type: percent_change_from_previous_column
          table_calculation: percent_of_previous_column_of_total_conversion_rate
          args:
            - total_conversion_rate
          _kind_hint: measure
          _type_hint: number
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: true
      comparison_type: change
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      comparison_label: Last (Full) Year
      showHighlight: false
      columnOrder: {}
      indexColumn: false
      transposeTable: false
      label|sessions.pdp_rate_2: PDP Rate
      heading|sessions.pdp_rate_2: PDP Rate
      style|sessions.total_users: normal
      label|sessions.pdp_users_url: PDP Viewers
      heading|sessions.pdp_users_url: PDP Viewers
      hide|sessions.session_week: false
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          wt_average_step_2,
          sessions.session_week_of_year,
          sum_of_users_1,
          sum_of_purchasers,
          sessions.purchase_users,
          sessions.pdp_users,
        ]
      hidden_points_if_no: []
      series_labels: {}
      show_view_names: false
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2023 - 4WT Average Conversion'
          }, {
            name: '2024 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2024 - 4WT Average Conversion'
          }]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - sessions.purchase_users
            - total_conversion_rate
            - percent_of_previous_column_of_total_conversion_rate
      defaults_version: 1
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 17
      col: 0
      width: 8
      height: 2
    - name: ""
      type: text
      title_text: ""
      subtitle_text: ""
      body_text:
        '[{"type":"p","children":[{"text":""}],"id":"inxms"},{"type":"h1","children":[{"text":"WEEKLY  RATES
        - CALCULATED WEEKLY","bold":true,"underline":true}],"align":"center"},{"type":"p","children":[{"text":""},{"type":"a","url":"https://lookerstudio.google.com/u/0/reporting/c1914cb7-1ecf-43b5-8d6f-30b9dc418b6f/page/p_w6np8kifkd","children":[{"text":"Looker
        Studio Link for Traffic Source Cuts"}],"id":"sdvo3"},{"text":"     ———   "},{"type":"a","url":"https://swagdotcom.looker.com/dashboards/203","children":[{"text":"Daily
        Views Link"}],"id":"4j94k"},{"text":""}],"id":"vi55a","align":"center"}]'
      rich_content_json: '{"format":"slate"}'
      row: 14
      col: 0
      width: 24
      height: 3
    - title: PDP Rate
      name: PDP Rate
      model: ga4_v2
      explore: sessions
      type: looker_line
      fields:
        [
          sessions.session_week_of_year,
          sessions.pdp_users,
          sessions.total_users,
          sessions.session_year,
          sessions.pdp_rate,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_year, sessions.session_week_of_year]
      sorts: [sessions.session_year, sessions.session_week_of_year desc]
      limit: 500
      column_limit: 50
      total: true
      dynamic_fields:
        - category: table_calculation
          expression: mean(offset_list(${sessions.pdp_users},0,4))
          label: 4WT Average Step 2
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_2
          _type_hint: number
        - category: table_calculation
          expression: mean(offset_list(${sessions.total_users},0,4))
          label: 4WT Average Step 1
          value_format:
          value_format_name: formatted_number
          _kind_hint: measure
          table_calculation: wt_average_step_1
          _type_hint: number
        - category: table_calculation
          expression: "${wt_average_step_2} / ${wt_average_step_1}"
          label: 4WT Average Conversion
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: wt_average_conversion
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 weeks ago`)
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
      trellis: ""
      stacking: ""
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_series: []
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
        2023 - wt_average_conversion: "#ff449a"
        2024 - wt_average_conversion: "#149eff"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          'chart': {},
          'series': [{
              'name': '2023 - eComm Funnel View Item / All Users Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2023 - 4WT Average Conversion',
              'lineWidth': '5px'
            },
            {
              'name': '2024 - eComm Funnel View Item / All Users Rate %',
              'lineWidth': '1px'
            },
            {
              'name': '2024 - 4WT Average Conversion',
              'lineWidth': '5px'
            }
          ]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - wt_average_step_2
      defaults_version: 1
      hidden_fields:
        [
          wt_average,
          wt_average_bc,
          sessions.total_users,
          wt_average_step_2,
          wt_average_step_1,
          sessions.pdp_users,
        ]
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 33
      col: 0
      width: 24
      height: 7
    - title: YTD Summary
      name: YTD Summary
      model: ga4_v2
      explore: sessions
      type: looker_grid
      fields:
        [
          sessions.session_year,
          sessions.purchase_rate,
          sessions.total_site_conversion_rate,
          sessions.pdp_rate,
        ]
      fill_fields: [sessions.session_year]
      sorts: [sessions.session_year desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
        - _kind_hint: measure
          _type_hint: number
          args:
            - sessions.purchase_rate
          based_on: sessions.purchase_rate
          calculation_type: percent_difference_from_previous
          category: table_calculation
          label: Percent change from previous - eComm Funnel Purchase Rate %
          source_field: sessions.purchase_rate
          table_calculation: percent_change_from_previous_ecomm_funnel_purchase_rate
          value_format:
          value_format_name: percent_0
        - _kind_hint: measure
          _type_hint: number
          args:
            - sessions.total_site_conversion_rate
          based_on: sessions.total_site_conversion_rate
          calculation_type: percent_difference_from_previous
          category: table_calculation
          label:
            Percent change from previous - eComm Funnel Total Site Conversion Rate
            %
          source_field: sessions.total_site_conversion_rate
          table_calculation: percent_change_from_previous_ecomm_funnel_total_site_conversion_rate
          value_format:
          value_format_name: percent_0
        - _kind_hint: measure
          _type_hint: number
          args:
            - sessions.pdp_rate
          based_on: sessions.pdp_rate
          calculation_type: percent_difference_from_previous
          category: table_calculation
          label: Percent change from previous - eComm Funnel PDP / All Users Rate %
          source_field: sessions.pdp_rate
          table_calculation: percent_change_from_previous_ecomm_funnel_pdp_all_users_rate
          value_format:
          value_format_name: percent_0
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 week ago`)
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order:
        [
          "$$$_row_numbers_$$$",
          sessions.session_year,
          sessions.purchase_rate,
          percent_change_from_previous_ecomm_funnel_purchase_rate,
          sessions.total_site_conversion_rate,
          percent_change_from_previous_ecomm_funnel_total_site_conversion_rate,
          sessions.pdp_rate,
          percent_change_from_previous_ecomm_funnel_pdp_all_users_rate,
        ]
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        percent_change_from_previous_ecomm_funnel_purchase_rate: PR Δ
        percent_change_from_previous_ecomm_funnel_total_site_conversion_rate: CVR Δ
        percent_change_from_previous_ecomm_funnel_pdp_all_users_rate: PDPR Δ
      series_cell_visualizations:
        sessions.purchase_rate:
          is_active: false
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_fields: [wt_average, wt_average_bc, wt_average_step_2]
      hidden_points_if_no: []
      showHighlight: false
      columnOrder: {}
      transposeTable: false
      style|sessions.total_users: normal
      label|sessions.pdp_users_url: PDP Viewers
      heading|sessions.pdp_users_url: PDP Viewers
      label|sessions.pdp_rate_2: PDP Rate
      heading|sessions.pdp_rate_2: PDP Rate
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
      trellis: ""
      stacking: ""
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2023 - 4WT Average Conversion'
          }, {
            name: '2024 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2024 - 4WT Average Conversion'
          }]
        }
      hidden_pivots: {}
      defaults_version: 1
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 5
      col: 0
      width: 24
      height: 4
    - title: Quarterly Summary
      name: Quarterly Summary
      model: ga4_v2
      explore: sessions
      type: looker_grid
      fields:
        [
          sessions.purchase_rate,
          sessions.total_site_conversion_rate,
          sessions.pdp_rate,
          sessions.session_quarter,
        ]
      fill_fields: [sessions.session_quarter]
      sorts: [sessions.session_quarter desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
        - _kind_hint: measure
          _type_hint: number
          args:
            - sessions.purchase_rate
          based_on: sessions.purchase_rate
          calculation_type: percent_difference_from_previous
          category: table_calculation
          label: Percent change from previous - eComm Funnel Purchase Rate %
          source_field: sessions.purchase_rate
          table_calculation: percent_change_from_previous_ecomm_funnel_purchase_rate
          value_format:
          value_format_name: percent_0
        - _kind_hint: measure
          _type_hint: number
          args:
            - sessions.total_site_conversion_rate
          based_on: sessions.total_site_conversion_rate
          calculation_type: percent_difference_from_previous
          category: table_calculation
          label:
            Percent change from previous - eComm Funnel Total Site Conversion Rate
            %
          source_field: sessions.total_site_conversion_rate
          table_calculation: percent_change_from_previous_ecomm_funnel_total_site_conversion_rate
          value_format:
          value_format_name: percent_0
        - _kind_hint: measure
          _type_hint: number
          args:
            - sessions.pdp_rate
          based_on: sessions.pdp_rate
          calculation_type: percent_difference_from_previous
          category: table_calculation
          label: Percent change from previous - eComm Funnel PDP / All Users Rate %
          source_field: sessions.pdp_rate
          table_calculation: percent_change_from_previous_ecomm_funnel_pdp_all_users_rate
          value_format:
          value_format_name: percent_0
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 week ago`)
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order:
        [
          "$$$_row_numbers_$$$",
          sessions.session_quarter,
          sessions.purchase_rate,
          percent_change_from_previous_ecomm_funnel_purchase_rate,
          sessions.total_site_conversion_rate,
          percent_change_from_previous_ecomm_funnel_total_site_conversion_rate,
          sessions.pdp_rate,
          percent_change_from_previous_ecomm_funnel_pdp_all_users_rate,
        ]
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        percent_change_from_previous_ecomm_funnel_purchase_rate: PR Δ
        percent_change_from_previous_ecomm_funnel_total_site_conversion_rate: CVR Δ
        percent_change_from_previous_ecomm_funnel_pdp_all_users_rate: PDPR Δ
      series_cell_visualizations:
        sessions.purchase_rate:
          is_active: false
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_fields: [wt_average, wt_average_bc, wt_average_step_2]
      hidden_points_if_no: []
      showHighlight: false
      columnOrder: {}
      transposeTable: false
      style|sessions.total_users: normal
      label|sessions.pdp_users_url: PDP Viewers
      heading|sessions.pdp_users_url: PDP Viewers
      label|sessions.pdp_rate_2: PDP Rate
      heading|sessions.pdp_rate_2: PDP Rate
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
      trellis: ""
      stacking: ""
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2023 - 4WT Average Conversion'
          }, {
            name: '2024 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2024 - 4WT Average Conversion'
          }]
        }
      hidden_pivots: {}
      defaults_version: 1
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 9
      col: 0
      width: 24
      height: 5
    - title: Quarterly Summary (Copy)
      name: Quarterly Summary (Copy)
      model: ga4_v2
      explore: sessions
      type: looker_grid
      fields:
        [
          sessions.purchase_rate,
          sessions.total_site_conversion_rate,
          sessions.pdp_rate,
          sessions.session_quarter_of_year,
          sessions.session_year,
        ]
      pivots: [sessions.session_year]
      fill_fields: [sessions.session_quarter_of_year, sessions.session_year]
      sorts: [sessions.session_year, sessions.session_quarter_of_year desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
        - category: table_calculation
          expression:
            "(${sessions.purchase_rate} / pivot_offset(${sessions.purchase_rate},\
            \ -1)) -1"
          label: PR Δ
          value_format:
          value_format_name: percent_2
          _kind_hint: measure
          table_calculation: pr_d
          _type_hint: number
        - category: table_calculation
          label: CVR Δ
          value_format:
          value_format_name: percent_2
          calculation_type: percent_change_from_previous_column
          table_calculation: cvr_d
          args:
            - sessions.total_site_conversion_rate
          _kind_hint: measure
          _type_hint: number
        - category: table_calculation
          label: PDPR Δ
          value_format:
          value_format_name: percent_2
          calculation_type: percent_change_from_previous_column
          table_calculation: pdpr_d
          args:
            - sessions.pdp_rate
          _kind_hint: measure
          _type_hint: number
      filter_expression:
        matches_filter(${events.event_time_date}, `before 0 days ago`)
        AND matches_filter(${sessions.session_date}, `after 2023/07/24`) AND matches_filter(${sessions.session_date},
        `before 0 week ago`)
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order:
        [
          "$$$_row_numbers_$$$",
          sessions.session_quarter_of_year,
          2023_sessions.purchase_rate,
          2024_sessions.purchase_rate,
          2024_pr_d,
          2023_sessions.total_site_conversion_rate,
          2024_sessions.total_site_conversion_rate,
          2024_cvr_d,
          2023_sessions.pdp_rate,
          2024_sessions.pdp_rate,
          2024_pdpr_d,
        ]
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        percent_change_from_previous_ecomm_funnel_purchase_rate: PR Δ
        percent_change_from_previous_ecomm_funnel_total_site_conversion_rate: CVR Δ
        percent_change_from_previous_ecomm_funnel_pdp_all_users_rate: PDPR Δ
      series_cell_visualizations:
        sessions.purchase_rate:
          is_active: false
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hidden_fields: [wt_average, wt_average_bc, wt_average_step_2]
      hidden_points_if_no: []
      showHighlight: false
      columnOrder: {}
      transposeTable: false
      style|sessions.total_users: normal
      label|sessions.pdp_users_url: PDP Viewers
      heading|sessions.pdp_users_url: PDP Viewers
      label|sessions.pdp_rate_2: PDP Rate
      heading|sessions.pdp_rate_2: PDP Rate
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
      trellis: ""
      stacking: ""
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: false
      interpolation: monotone
      y_axes:
        [
          {
            label: "",
            orientation: left,
            series:
              [
                {
                  axisId: sessions.total_users,
                  id: view_item - sessions.total_users,
                  name: view_item,
                },
              ],
            showLabels: true,
            showValues: true,
            unpinAxis: true,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
      x_axis_zoom: true
      y_axis_zoom: true
      hidden_series:
        [2023 - wt_average_conversion, 2024 - wt_average_conversion]
      label_value_format: ""
      series_colors:
        view_item - 2024 - wt_average: "#ff449a"
        view_item - 2023 - wt_average: "#70BE56"
        view_item - 2023 - sessions.total_users: "#70BE56"
        view_item - 2024 - sessions.total_users: "#ff449a"
      trend_lines: []
      discontinuous_nulls: false
      advanced_vis_config: |-
        {
          chart: {},
          series: [{
            name: '2023 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2023 - 4WT Average Conversion'
          }, {
            name: '2024 - eComm Funnel Total Site Conversion Rate %'
          }, {
            name: '2024 - 4WT Average Conversion'
          }]
        }
      hidden_pivots:
        "2023":
          measure_names:
            - percent_change_from_previous_ecomm_funnel_purchase_rate
            - percent_change_from_previous_ecomm_funnel_total_site_conversion_rate
            - percent_change_from_previous_ecomm_funnel_pdp_all_users_rate
            - pr_d
            - cvr_d
            - pdpr_d
      defaults_version: 1
      listen:
        Session Source Medium: sessions.session_attribution_source_medium
        User Medium: events.traffic_source__medium
        User Source: events.traffic_source__source
      row: 117
      col: 0
      width: 24
      height: 5
    - name: " (2)"
      type: text
      title_text: ""
      subtitle_text: ""
      body_text:
        "\n<div style=\"border: solid 1px #1A73E8; border-radius: 5px; padding:\
        \ 3px 10px; background: #eaf1fe; text-align: center; margin-bottom: 10px;\"\
        >\n\t<div>\n\t\t<img style=\"height: 60px; margin-top: 30px;\" src=\"https://www.gstatic.com/analytics-suite/header/suite/v2/ic_analytics.svg\"\
        />\n\t</div><br>\n    <nav style=\"font-size: 18px; position: absolute; bottom:\
        \ 0; text-align: center;\" id=\"nav-links\">\n    \n<a style=\"padding: 5px;\
        \ line-height: 40px;\" href=\"https://swagdotcom.looker.com/dashboards/205?Session+Source+Medium=&User+Medium=&User+Source=\"\
        >\n    <svg style=\"height: 16px; fill: #4285F4;\" class=\"svg-icon\" viewBox=\"\
        0 0 20 20\">\n    <path d=\"M17.431,2.156h-3.715c-0.228,0-0.413,0.186-0.413,0.413v6.973h-2.89V6.687c0-0.229-0.186-0.413-0.413-0.413H6.285c-0.228,0-0.413,0.184-0.413,0.413v6.388H2.569c-0.227,0-0.413,0.187-0.413,0.413v3.942c0,0.228,0.186,0.413,0.413,0.413h14.862c0.228,0,0.413-0.186,0.413-0.413V2.569C17.844,2.342,17.658,2.156,17.431,2.156\
        \ M5.872,17.019h-2.89v-3.117h2.89V17.019zM9.587,17.019h-2.89V7.1h2.89V17.019z\
        \ M13.303,17.019h-2.89v-6.651h2.89V17.019z M17.019,17.019h-2.891V2.982h2.891V17.019z\"\
        ></path>\n    </svg>\n    Clear Filters</a>\n\n    <a style=\"padding: 5px;\
        \ line-height: 40px;\" href=\"https://swagdotcom.looker.com/dashboards/205?Session+Source+Medium=&User+Medium=cpc%2Cppc&User+Source=google%2Cbing%2Cadwords\"\
        >\n    <svg style=\"height: 16px; fill: #4285F4;\" class=\"svg-icon\" viewBox=\"\
        0 0 20 20\">\n    <path d=\"M17.431,2.156h-3.715c-0.228,0-0.413,0.186-0.413,0.413v6.973h-2.89V6.687c0-0.229-0.186-0.413-0.413-0.413H6.285c-0.228,0-0.413,0.184-0.413,0.413v6.388H2.569c-0.227,0-0.413,0.187-0.413,0.413v3.942c0,0.228,0.186,0.413,0.413,0.413h14.862c0.228,0,0.413-0.186,0.413-0.413V2.569C17.844,2.342,17.658,2.156,17.431,2.156\
        \ M5.872,17.019h-2.89v-3.117h2.89V17.019zM9.587,17.019h-2.89V7.1h2.89V17.019z\
        \ M13.303,17.019h-2.89v-6.651h2.89V17.019z M17.019,17.019h-2.891V2.982h2.891V17.019z\"\
        ></path>\n    </svg>\n    Paid Search</a>\n    <a style=\"padding: 5px; line-height:\
        \ 40px;\" href=\"https://swagdotcom.looker.com/dashboards/205?Session+Source+Medium=&User+Medium=organic&User+Source=bing%2Cgoogle%2Cduckduckgo%2Cyahoo\"\
        >\n    <svg style=\"height: 16px; fill: #4285F4;\" class=\"svg-icon\" viewBox=\"\
        0 0 20 20\">\n    <path d=\"M8.749,9.934c0,0.247-0.202,0.449-0.449,0.449H4.257c-0.247,0-0.449-0.202-0.449-0.449S4.01,9.484,4.257,9.484H8.3C8.547,9.484,8.749,9.687,8.749,9.934\
        \ M7.402,12.627H4.257c-0.247,0-0.449,0.202-0.449,0.449s0.202,0.449,0.449,0.449h3.145c0.247,0,0.449-0.202,0.449-0.449S7.648,12.627,7.402,12.627\
        \ M8.3,6.339H4.257c-0.247,0-0.449,0.202-0.449,0.449c0,0.247,0.202,0.449,0.449,0.449H8.3c0.247,0,0.449-0.202,0.449-0.449C8.749,6.541,8.547,6.339,8.3,6.339\
        \ M18.631,4.543v10.78c0,0.248-0.202,0.45-0.449,0.45H2.011c-0.247,0-0.449-0.202-0.449-0.45V4.543c0-0.247,0.202-0.449,0.449-0.449h16.17C18.429,4.094,18.631,4.296,18.631,4.543\
        \ M17.732,4.993H2.46v9.882h15.272V4.993z M16.371,13.078c0,0.247-0.202,0.449-0.449,0.449H9.646c-0.247,0-0.449-0.202-0.449-0.449c0-1.479,0.883-2.747,2.162-3.299c-0.434-0.418-0.714-1.008-0.714-1.642c0-1.197,0.997-2.246,2.133-2.246s2.134,1.049,2.134,2.246c0,0.634-0.28,1.224-0.714,1.642C15.475,10.331,16.371,11.6,16.371,13.078M11.542,8.137c0,0.622,0.539,1.348,1.235,1.348s1.235-0.726,1.235-1.348c0-0.622-0.539-1.348-1.235-1.348S11.542,7.515,11.542,8.137\
        \ M15.435,12.629c-0.214-1.273-1.323-2.246-2.657-2.246s-2.431,0.973-2.644,2.246H15.435z\"\
        ></path>\n    </svg>\n    Organic Search</a>\n    <a style=\"padding: 5px; line-height:\
        \ 40px;\" href=\"https://swagdotcom.looker.com/dashboards/205?Session+Source+Medium=&User+Medium=paidsocial%2Cpaid%2Ccpc&User+Source=pinterest%2Clinkedin%2Cfacebook\"\
        >\n    <svg style=\"height: 16px; fill: #4285F4;\" class=\"svg-icon\" viewBox=\"\
        0 0 20 20\">\n    <path d=\"M17.237,3.056H2.93c-0.694,0-1.263,0.568-1.263,1.263v8.837c0,0.694,0.568,1.263,1.263,1.263h4.629v0.879c-0.015,0.086-0.183,0.306-0.273,0.423c-0.223,0.293-0.455,0.592-0.293,0.92c0.07,0.139,0.226,0.303,0.577,0.303h4.819c0.208,0,0.696,0,0.862-0.379c0.162-0.37-0.124-0.682-0.374-0.955c-0.089-0.097-0.231-0.252-0.268-0.328v-0.862h4.629c0.694,0,1.263-0.568,1.263-1.263V4.319C18.5,3.625,17.932,3.056,17.237,3.056\
        \ M8.053,16.102C8.232,15.862,8.4,15.597,8.4,15.309v-0.89h3.366v0.89c0,0.303,0.211,0.562,0.419,0.793H8.053z\
        \ M17.658,13.156c0,0.228-0.193,0.421-0.421,0.421H2.93c-0.228,0-0.421-0.193-0.421-0.421v-1.263h15.149V13.156z\
        \ M17.658,11.052H2.509V4.319c0-0.228,0.193-0.421,0.421-0.421h14.308c0.228,0,0.421,0.193,0.421,0.421V11.052z\"\
        ></path>\n    </svg>\n    Paid Social</a>\n    <a style=\"padding: 5px; line-height:\
        \ 40px;\" href=\"https://swagdotcom.looker.com/dashboards/205?Session+Source+Medium=&User+Medium=%28none%29&User+Source=%28direct%29\"\
        >\n    <svg style=\"height: 16px; fill: #4285F4;\" class=\"svg-icon\" viewBox=\"\
        0 0 20 20\">\n    <path d=\"M15.94,10.179l-2.437-0.325l1.62-7.379c0.047-0.235-0.132-0.458-0.372-0.458H5.25c-0.241,0-0.42,0.223-0.373,0.458l1.634,7.376L4.06,10.179c-0.312,0.041-0.446,0.425-0.214,0.649l2.864,2.759l-0.724,3.947c-0.058,0.315,0.277,0.554,0.559,0.401l3.457-1.916l3.456,1.916c-0.419-0.238,0.56,0.439,0.56-0.401l-0.725-3.947l2.863-2.759C16.388,10.604,16.254,10.22,15.94,10.179M10.381,2.778h3.902l-1.536,6.977L12.036,9.66l-1.655-3.546V2.778z\
        \ M5.717,2.778h3.903v3.335L7.965,9.66L7.268,9.753L5.717,2.778zM12.618,13.182c-0.092,0.088-0.134,0.217-0.11,0.343l0.615,3.356l-2.938-1.629c-0.057-0.03-0.122-0.048-0.184-0.048c-0.063,0-0.128,0.018-0.185,0.048l-2.938,1.629l0.616-3.356c0.022-0.126-0.019-0.255-0.11-0.343l-2.441-2.354l3.329-0.441c0.128-0.017,0.24-0.099,0.295-0.215l1.435-3.073l1.435,3.073c0.055,0.116,0.167,0.198,0.294,0.215l3.329,0.441L12.618,13.182z\"\
        ></path>\n    </svg>\n    Direct</a>\n    <a style=\"padding: 5px; line-height:\
        \ 40px;\" href=\"https://swagdotcom.looker.com/dashboards/205?Session+Source+Medium=&User+Medium=referral&User+Source=%22snack_nation%22%2Cteambuilding.com\"\
        >\n    <svg style=\"height: 16px; fill: #4285F4;\" class=\"svg-icon\" viewBox=\"\
        0 0 20 20\">\n    <path d=\"M15.94,10.179l-2.437-0.325l1.62-7.379c0.047-0.235-0.132-0.458-0.372-0.458H5.25c-0.241,0-0.42,0.223-0.373,0.458l1.634,7.376L4.06,10.179c-0.312,0.041-0.446,0.425-0.214,0.649l2.864,2.759l-0.724,3.947c-0.058,0.315,0.277,0.554,0.559,0.401l3.457-1.916l3.456,1.916c-0.419-0.238,0.56,0.439,0.56-0.401l-0.725-3.947l2.863-2.759C16.388,10.604,16.254,10.22,15.94,10.179M10.381,2.778h3.902l-1.536,6.977L12.036,9.66l-1.655-3.546V2.778z\
        \ M5.717,2.778h3.903v3.335L7.965,9.66L7.268,9.753L5.717,2.778zM12.618,13.182c-0.092,0.088-0.134,0.217-0.11,0.343l0.615,3.356l-2.938-1.629c-0.057-0.03-0.122-0.048-0.184-0.048c-0.063,0-0.128,0.018-0.185,0.048l-2.938,1.629l0.616-3.356c0.022-0.126-0.019-0.255-0.11-0.343l-2.441-2.354l3.329-0.441c0.128-0.017,0.24-0.099,0.295-0.215l1.435-3.073l1.435,3.073c0.055,0.116,0.167,0.198,0.294,0.215l3.329,0.441L12.618,13.182z\"\
        ></path>\n    </svg>\n    Referral</a>\n    <a style=\"padding: 5px; line-height:\
        \ 40px;\" href=\"https://swagdotcom.looker.com/dashboards/205?Session+Source+Medium=&User+Medium=-paidsocial&User+Source=-pinterest%2C-linkedin%2C-facebook\"\
        >\n    <svg style=\"height: 16px; fill: #4285F4;\" class=\"svg-icon\" viewBox=\"\
        0 0 20 20\">\n    <path d=\"M12.075,10.812c1.358-0.853,2.242-2.507,2.242-4.037c0-2.181-1.795-4.618-4.198-4.618S5.921,4.594,5.921,6.775c0,1.53,0.884,3.185,2.242,4.037c-3.222,0.865-5.6,3.807-5.6,7.298c0,0.23,0.189,0.42,0.42,0.42h14.273c0.23,0,0.42-0.189,0.42-0.42C17.676,14.619,15.297,11.677,12.075,10.812\
        \ M6.761,6.775c0-2.162,1.773-3.778,3.358-3.778s3.359,1.616,3.359,3.778c0,2.162-1.774,3.778-3.359,3.778S6.761,8.937,6.761,6.775\
        \ M3.415,17.69c0.218-3.51,3.142-6.297,6.704-6.297c3.562,0,6.486,2.787,6.705,6.297H3.415z\"\
        ></path>\n    </svg>\n    Not Paid Social</a>\n    <a style=\"padding: 5px;\
        \ line-height: 40px;\" href=\"https://swagdotcom.looker.com/dashboards/205?Session+Source+Medium=&User+Medium=-paidsocial%2C-paid%2C-ppc%2C-cpc&User+Source=\"\
        >\n    <svg style=\"height: 16px; fill: #4285F4;\" class=\"svg-icon\" viewBox=\"\
        0 0 20 20\">\n    <path d=\"M12.075,10.812c1.358-0.853,2.242-2.507,2.242-4.037c0-2.181-1.795-4.618-4.198-4.618S5.921,4.594,5.921,6.775c0,1.53,0.884,3.185,2.242,4.037c-3.222,0.865-5.6,3.807-5.6,7.298c0,0.23,0.189,0.42,0.42,0.42h14.273c0.23,0,0.42-0.189,0.42-0.42C17.676,14.619,15.297,11.677,12.075,10.812\
        \ M6.761,6.775c0-2.162,1.773-3.778,3.358-3.778s3.359,1.616,3.359,3.778c0,2.162-1.774,3.778-3.359,3.778S6.761,8.937,6.761,6.775\
        \ M3.415,17.69c0.218-3.51,3.142-6.297,6.704-6.297c3.562,0,6.486,2.787,6.705,6.297H3.415z\"\
        ></path>\n    </svg>\n    Not Paid Search or Paid Social</a>\n    </nav>\n</div>\n\
        \n<style>\n  .active-link {\n    color: red !important;\n    font-weight: bold\
        \ !important;\n  }\n</style>\n\n<script>\n  document.addEventListener(\"DOMContentLoaded\"\
        , () => {\n    // Get the current URL\n    const currentUrl = window.location.href;\n\
        \n    // Get all the links in the navigation\n    const links = document.querySelectorAll(\"\
        #nav-links a\");\n\n    // Loop through each link and compare its href with\
        \ the current URL\n    links.forEach((link) => {\n      if (currentUrl.startsWith(link.href))\
        \ {\n        // Add the active class if the URL matches\n        link.classList.add(\"\
        active-link\");\n      } else {\n        // Remove the active class for non-matching\
        \ links\n        link.classList.remove(\"active-link\");\n      }\n    });\n\
        \  });\n</script>"
      row: 0
      col: 0
      width: 24
      height: 5
  filters:
    - name: Session Source Medium
      title: Session Source Medium
      type: field_filter
      default_value: ""
      allow_multiple_values: true
      required: false
      ui_config:
        type: advanced
        display: popover
      model: ga4_v2
      explore: sessions
      listens_to_filters: []
      field: sessions.session_attribution_source_medium
    - name: User Medium
      title: User Medium
      type: field_filter
      default_value: ""
      allow_multiple_values: true
      required: false
      ui_config:
        type: advanced
        display: popover
      model: ga4_v2
      explore: sessions
      listens_to_filters: []
      field: events.traffic_source__medium
    - name: User Source
      title: User Source
      type: field_filter
      default_value: ""
      allow_multiple_values: true
      required: false
      ui_config:
        type: advanced
        display: popover
      model: ga4_v2
      explore: sessions
      listens_to_filters: []
      field: events.traffic_source__source
