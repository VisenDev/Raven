(defpackage #:raven
  (:use)
  (:export #:alloc #:allocation_count #:animate #:annotation #:app_name
   #:arguments #:backdrop_count #:backend #:badge #:block_comment_end
   #:block_comment_start #:button #:buttons #:cancelled #:choices #:clicks
   #:clip_height #:clip_width #:clip_x #:clip_y #:clipboard_get
   #:clipboard_set #:codepoint #:color #:color2 #:color_format #:column
   #:command_buffer #:constants #:count #:deceleration #:default_extension
   #:define-ractioncallback #:define-rblockeditorcallback
   #:define-rblockeditorcontextcallback #:define-rbreadcrumbcallback
   #:define-rbuttonclickedcallback #:define-rcheckboxchangedcallback
   #:define-rcolorchangedcallback #:define-rcomboboxchangedcallback
   #:define-rcompletioncallback #:define-rdatechangedcallback
   #:define-rdeviceresetcallback #:define-rdialogclosedcallback
   #:define-rdockchangedcallback #:define-rdockclosecallback
   #:define-rdropcallback #:define-rerrorcallback
   #:define-rexpanderchangedcallback #:define-rfilebrowsercallback
   #:define-rframecallback #:define-rgesturecallback
   #:define-rislandchangedcallback #:define-rlabellinkcallback
   #:define-rlisteventcallback #:define-rlistitemtextcallback
   #:define-rlocalechangedcallback #:define-rmeasurecallback
   #:define-rmenuitemclickedcallback #:define-rnodegraphconnectcallback
   #:define-rnodegraphcontextcallback #:define-rnodegraphitemcallback
   #:define-rnotificationclickedcallback #:define-rnotificationfallback
   #:define-rpagechangedcallback #:define-rpaintcallback
   #:define-rparallelrangecallback #:define-rpencallback
   #:define-rplotdraglinecallback #:define-rplotseriescallback
   #:define-rplotviewcallback #:define-rratingchangedcallback
   #:define-rsliderchangedcallback #:define-rspinboxchangedcallback
   #:define-rtabchangedcallback #:define-rtabclosecallback
   #:define-rtablecelltextcallback #:define-rtableeventcallback
   #:define-rtablesortcallback #:define-rtaskcallback
   #:define-rtextchangedcallback #:define-rtexteditorchangedcallback
   #:define-rtexteditorzoomcallback #:define-rtilecontextcallback
   #:define-rtiledragdatacallback #:define-rtileeventcallback
   #:define-rtileitemcallback #:define-rtimechangedcallback
   #:define-rtimelineitemcallback #:define-rtimelinetimecallback
   #:define-rtimercallback #:define-rtoastcallback #:define-rtouchcallback
   #:define-rtrayclickedcallback #:define-rtreecontextcallback
   #:define-rtreeeventcallback #:define-rviewportdrawcallback
   #:define-rviewportresizecallback #:define-rwidgetdestroycallback
   #:define-rwidgeteventcallback #:define-rwindowclosecallback
   #:define-rwindoweventhook #:define-rwindowresizecallback
   #:define-rxmlreloadcallback #:define-rxmltagattributecallback
   #:define-rxmltagcreatecallback #:delta_x #:delta_y #:description #:detail
   #:device #:directive #:directory #:disable_render_thread #:disable_vsync
   #:display #:drag_source #:drag_type #:draw_call_count #:enable_validation
   #:eraser #:extensions #:file_name #:filter_count #:filters #:fingers
   #:flags #:frame_index #:framebuffer_height #:framebuffer_width #:free
   #:gestures #:group #:headless #:height #:high_contrast #:hover #:icon
   #:icon_radius #:id #:inertia #:instance_count #:key #:keywords #:kind
   #:layout_ms #:line #:line_comment #:load-library #:local_x #:local_y
   #:long_press #:message #:modifiers #:mouse_emulation #:multiline_strings
   #:name #:paint_job_count #:paint_ms #:palm_rejection #:pan_x #:pan_y
   #:params #:parent #:path_count #:paths #:patterns #:peak_bytes
   #:pen_mouse_emulation #:phase #:pointer #:press #:pressure
   #:pressure_curve #:pressure_threshold #:r_backdrop_acrylic
   #:r_backdrop_blur #:r_backdrop_mica #:r_backdrop_none
   #:r_backdrop_transparent #:r_backend_custom #:r_backend_null
   #:r_backend_vulkan #:r_backend_webgl #:r_block_body #:r_block_boolean
   #:r_block_c #:r_block_cap #:r_block_hat #:r_block_input #:r_block_next
   #:r_block_reporter #:r_block_statement #:r_blur_frosted #:r_blur_glass
   #:r_blur_native #:r_blur_plain #:r_button_default #:r_button_flat
   #:r_button_primary #:r_checkbox_check #:r_checkbox_radio
   #:r_checkbox_switch #:r_collapsed #:r_color_accent
   #:r_color_accent_hovered #:r_color_accent_pressed #:r_color_accent_text
   #:r_color_border #:r_color_code #:r_color_control
   #:r_color_control_border #:r_color_control_hovered
   #:r_color_control_pressed #:r_color_danger #:r_color_filter_deuteranopia
   #:r_color_filter_grayscale #:r_color_filter_invert #:r_color_filter_none
   #:r_color_filter_protanopia #:r_color_filter_simulate_achromatopsia
   #:r_color_filter_simulate_deuteranopia
   #:r_color_filter_simulate_protanopia #:r_color_filter_simulate_tritanopia
   #:r_color_filter_tritanopia #:r_color_focus #:r_color_handle
   #:r_color_handle_hovered #:r_color_header #:r_color_header_hovered
   #:r_color_input #:r_color_link #:r_color_panel #:r_color_popup
   #:r_color_popup_border #:r_color_row_hovered #:r_color_selection
   #:r_color_separator #:r_color_shadow #:r_color_success #:r_color_switch
   #:r_color_tab_active #:r_color_text #:r_color_text_disabled
   #:r_color_text_placeholder #:r_color_tooltip #:r_color_tooltip_text
   #:r_color_track #:r_color_warning #:r_color_window #:r_cursor_arrow
   #:r_cursor_crosshair #:r_cursor_hand #:r_cursor_ibeam #:r_cursor_move
   #:r_cursor_none #:r_cursor_not_allowed #:r_cursor_resize_h
   #:r_cursor_resize_nesw #:r_cursor_resize_nwse #:r_cursor_resize_v
   #:r_direction_auto #:r_direction_inherit #:r_direction_ltr
   #:r_direction_rtl #:r_dock_bottom #:r_dock_left #:r_dock_right
   #:r_dock_tab #:r_dock_top #:r_drop_dropped #:r_drop_enter #:r_drop_leave
   #:r_drop_move #:r_edge_bottom #:r_edge_bottom_left #:r_edge_bottom_right
   #:r_edge_left #:r_edge_right #:r_edge_top #:r_edge_top_left
   #:r_edge_top_right #:r_effect_aurora #:r_effect_grain #:r_effect_mesh
   #:r_effect_neon #:r_effect_plasma #:r_effect_ripple #:r_effect_shimmer
   #:r_effect_spotlight #:r_error_backend #:r_error_file_not_found
   #:r_error_invalid_enum #:r_error_invalid_file_format #:r_error_invalid_id
   #:r_error_invalid_operation #:r_error_invalid_value
   #:r_error_out_of_memory #:r_error_platform #:r_error_wrong_thread
   #:r_error_xml #:r_event_focus_gained #:r_event_focus_lost
   #:r_event_key_down #:r_event_key_up #:r_event_mouse_down
   #:r_event_mouse_enter #:r_event_mouse_leave #:r_event_mouse_move
   #:r_event_mouse_up #:r_event_mouse_wheel #:r_event_none #:r_event_text
   #:r_false #:r_file_browser_folder #:r_file_browser_open
   #:r_file_browser_save #:r_file_dialog_multiple #:r_file_dialog_raven
   #:r_file_dialog_show_hidden #:r_filter_linear #:r_filter_mipmap
   #:r_filter_nearest #:r_font_bold #:r_font_bold_italic #:r_font_italic
   #:r_font_regular #:r_gesture_begin #:r_gesture_device_touchscreen
   #:r_gesture_device_trackpad #:r_gesture_end #:r_gesture_pinch
   #:r_gesture_swipe #:r_gesture_update #:r_halign_center #:r_halign_fill
   #:r_halign_left #:r_halign_right #:r_header_all_buttons #:r_header_close
   #:r_header_maximize #:r_header_minimize #:r_header_no_buttons #:r_hidden
   #:r_horizontal #:r_invalid_id #:r_key_0 #:r_key_1 #:r_key_2 #:r_key_3
   #:r_key_4 #:r_key_5 #:r_key_6 #:r_key_7 #:r_key_8 #:r_key_9 #:r_key_a
   #:r_key_apostrophe #:r_key_b #:r_key_backslash #:r_key_backspace
   #:r_key_c #:r_key_caps_lock #:r_key_comma #:r_key_count #:r_key_d
   #:r_key_delete #:r_key_down #:r_key_e #:r_key_end #:r_key_enter
   #:r_key_equal #:r_key_escape #:r_key_f #:r_key_f1 #:r_key_f10 #:r_key_f11
   #:r_key_f12 #:r_key_f2 #:r_key_f3 #:r_key_f4 #:r_key_f5 #:r_key_f6
   #:r_key_f7 #:r_key_f8 #:r_key_f9 #:r_key_g #:r_key_grave #:r_key_h
   #:r_key_home #:r_key_i #:r_key_insert #:r_key_j #:r_key_k #:r_key_kp_0
   #:r_key_kp_1 #:r_key_kp_2 #:r_key_kp_3 #:r_key_kp_4 #:r_key_kp_5
   #:r_key_kp_6 #:r_key_kp_7 #:r_key_kp_8 #:r_key_kp_9 #:r_key_kp_add
   #:r_key_kp_decimal #:r_key_kp_divide #:r_key_kp_enter #:r_key_kp_multiply
   #:r_key_kp_subtract #:r_key_l #:r_key_left #:r_key_left_alt
   #:r_key_left_bracket #:r_key_left_ctrl #:r_key_left_shift
   #:r_key_left_super #:r_key_m #:r_key_menu #:r_key_minus #:r_key_n
   #:r_key_o #:r_key_p #:r_key_page_down #:r_key_page_up #:r_key_pause
   #:r_key_period #:r_key_print_screen #:r_key_q #:r_key_r #:r_key_right
   #:r_key_right_alt #:r_key_right_bracket #:r_key_right_ctrl
   #:r_key_right_shift #:r_key_right_super #:r_key_s #:r_key_semicolon
   #:r_key_slash #:r_key_space #:r_key_t #:r_key_tab #:r_key_u
   #:r_key_unknown #:r_key_up #:r_key_v #:r_key_w #:r_key_x #:r_key_y
   #:r_key_z #:r_language_char_literals #:r_language_embeds
   #:r_language_formatted_text #:r_language_ignore_case
   #:r_language_indent_on_colon #:r_language_markup
   #:r_language_nested_comments #:r_language_style_sheet #:r_look_gnome_dark
   #:r_look_gnome_light #:r_look_macos_dark #:r_look_macos_glass_dark
   #:r_look_macos_glass_light #:r_look_macos_light #:r_look_native_dark
   #:r_look_native_light #:r_look_raven_dark #:r_look_raven_glass_dark
   #:r_look_raven_glass_light #:r_look_raven_high_contrast_dark
   #:r_look_raven_high_contrast_light #:r_look_raven_light
   #:r_look_windows_dark #:r_look_windows_light #:r_marker_error
   #:r_marker_info #:r_marker_warning #:r_material_default
   #:r_material_frosted_glass #:r_material_glass #:r_material_solid
   #:r_material_tinted_glass #:r_message_ok #:r_message_ok_cancel
   #:r_message_result_cancel #:r_message_result_no #:r_message_result_ok
   #:r_message_result_yes #:r_message_yes_no #:r_message_yes_no_cancel
   #:r_metric_blur_radius #:r_metric_border_width #:r_metric_check_size
   #:r_metric_control_height #:r_metric_corner_radius #:r_metric_font_size
   #:r_metric_glass_frost #:r_metric_glass_refraction #:r_metric_glass_rim
   #:r_metric_glass_saturation #:r_metric_glass_shadow #:r_metric_indent
   #:r_metric_padding_x #:r_metric_padding_y #:r_metric_popup_radius
   #:r_metric_row_height #:r_metric_scrollbar_size
   #:r_metric_slider_handle_size #:r_metric_spacing #:r_metric_splitter_size
   #:r_mod_alt #:r_mod_ctrl #:r_mod_shift #:r_mod_super #:r_motion_bouncy
   #:r_motion_smooth #:r_motion_snappy #:r_motion_wobbly #:r_mouse_left
   #:r_mouse_middle #:r_mouse_right #:r_mouse_x1 #:r_mouse_x2 #:r_no_error
   #:r_notification_critical #:r_notification_low #:r_notification_normal
   #:r_pen_button_barrel #:r_pen_button_barrel2 #:r_pen_down #:r_pen_hover
   #:r_pen_leave #:r_pen_move #:r_pen_up #:r_pip_bottom_left
   #:r_pip_bottom_right #:r_pip_top_left #:r_pip_top_right
   #:r_plot_legend_bottom #:r_plot_legend_bottom_left
   #:r_plot_legend_bottom_right #:r_plot_legend_hidden #:r_plot_legend_left
   #:r_plot_legend_outside #:r_plot_legend_right #:r_plot_legend_top
   #:r_plot_legend_top_left #:r_plot_legend_top_right #:r_plot_line_dash_dot
   #:r_plot_line_dashed #:r_plot_line_dotted #:r_plot_line_none
   #:r_plot_line_solid #:r_plot_marker_asterisk #:r_plot_marker_circle
   #:r_plot_marker_cross #:r_plot_marker_diamond #:r_plot_marker_none
   #:r_plot_marker_plus #:r_plot_marker_square #:r_plot_marker_triangle_down
   #:r_plot_marker_triangle_up #:r_plot_scale_linear #:r_plot_scale_log
   #:r_plot_scale_symlog #:r_plot_x #:r_plot_x2 #:r_plot_y #:r_plot_y2
   #:r_preset_auto #:r_preset_blender #:r_preset_blueprint #:r_preset_modern
   #:r_preset_neon #:r_role_alert #:r_role_auto #:r_role_button
   #:r_role_canvas #:r_role_checkbox #:r_role_combo_box #:r_role_dialog
   #:r_role_document #:r_role_group #:r_role_heading #:r_role_image
   #:r_role_link #:r_role_list #:r_role_list_item #:r_role_menu
   #:r_role_menu_bar #:r_role_menu_item #:r_role_none #:r_role_pane
   #:r_role_progress_bar #:r_role_radio_button #:r_role_scroll_bar
   #:r_role_separator #:r_role_slider #:r_role_spin_button
   #:r_role_status_bar #:r_role_tab #:r_role_tab_list #:r_role_tab_panel
   #:r_role_table #:r_role_text #:r_role_text_field #:r_role_toggle_button
   #:r_role_toolbar #:r_role_tree #:r_role_tree_item #:r_role_window
   #:r_severity_error #:r_severity_fatal #:r_severity_warning
   #:r_severity_weak_warning #:r_shader_animated #:r_shader_backdrop
   #:r_stretch_cover #:r_stretch_fill #:r_stretch_fit #:r_stretch_none
   #:r_syntax_c #:r_syntax_none #:r_syntax_xml #:r_taskbar_progress_error
   #:r_taskbar_progress_indeterminate #:r_taskbar_progress_none
   #:r_taskbar_progress_normal #:r_taskbar_progress_paused
   #:r_text_align_center #:r_text_align_left #:r_text_align_right
   #:r_theme_dark #:r_theme_glass_dark #:r_theme_glass_light
   #:r_theme_high_contrast_dark #:r_theme_high_contrast_light
   #:r_theme_light #:r_timeline_clip #:r_timeline_key #:r_timeline_marker
   #:r_timeline_none #:r_toast_error #:r_toast_info #:r_toast_replace
   #:r_toast_sequence #:r_toast_stack #:r_toast_success #:r_toast_warning
   #:r_token_attribute #:r_token_comment #:r_token_directive
   #:r_token_emphasis #:r_token_function #:r_token_heading #:r_token_keyword
   #:r_token_link #:r_token_number #:r_token_punctuation #:r_token_string
   #:r_token_strong #:r_token_tag #:r_token_text #:r_token_type
   #:r_touch_cancel #:r_touch_down #:r_touch_mode_auto #:r_touch_mode_mouse
   #:r_touch_mode_none #:r_touch_mode_scroll #:r_touch_move #:r_touch_up
   #:r_transition_drop #:r_transition_fade #:r_transition_fly_down
   #:r_transition_fly_left #:r_transition_fly_right #:r_transition_fly_up
   #:r_transition_none #:r_transition_pop #:r_transition_slide_left
   #:r_transition_slide_right #:r_transition_zoom #:r_true #:r_valign_bottom
   #:r_valign_center #:r_valign_fill #:r_valign_top #:r_vertical #:r_visible
   #:r_widget_background_blur #:r_widget_block_editor #:r_widget_border
   #:r_widget_breadcrumb #:r_widget_button #:r_widget_canvas
   #:r_widget_checkbox #:r_widget_color_picker #:r_widget_combo_box
   #:r_widget_custom #:r_widget_date_picker #:r_widget_dock_area
   #:r_widget_expander #:r_widget_file_browser #:r_widget_grid
   #:r_widget_hbox #:r_widget_header_bar #:r_widget_image #:r_widget_island
   #:r_widget_label #:r_widget_list_view #:r_widget_menu #:r_widget_menu_bar
   #:r_widget_menu_item #:r_widget_node_graph #:r_widget_overlay
   #:r_widget_pagination #:r_widget_plot #:r_widget_progressbar
   #:r_widget_rating #:r_widget_scroll_box #:r_widget_separator
   #:r_widget_size_box #:r_widget_slider #:r_widget_spacer
   #:r_widget_spin_box #:r_widget_splitter #:r_widget_switcher
   #:r_widget_tab_view #:r_widget_table #:r_widget_text_editor
   #:r_widget_text_input #:r_widget_tile_view #:r_widget_time_picker
   #:r_widget_timeline #:r_widget_toast #:r_widget_tree_view
   #:r_widget_uniform_grid #:r_widget_vbox #:r_widget_viewport
   #:r_widget_wrap_box #:r_window_borderless #:r_window_custom_header
   #:r_window_default #:r_window_hidden #:r_window_maximized
   #:r_window_no_resize #:r_window_splash_screen #:r_window_system_cocoa
   #:r_window_system_emscripten #:r_window_system_none
   #:r_window_system_wayland #:r_window_system_win32 #:r_window_system_x11
   #:r_window_transparent #:r_xml_action #:r_xml_bool #:r_xml_choice
   #:r_xml_color #:r_xml_file #:r_xml_list #:r_xml_number #:r_xml_numbers
   #:r_xml_text #:raccessibility_announce #:raccessibility_follow_system
   #:raccessibility_get_color_filter
   #:raccessibility_get_focus_always_visible
   #:raccessibility_get_high_contrast #:raccessibility_get_reduce_motion
   #:raccessibility_get_system_settings #:raccessibility_get_text_scale
   #:raccessibility_is_screen_reader_active
   #:raccessibility_set_color_filter
   #:raccessibility_set_focus_always_visible
   #:raccessibility_set_high_contrast #:raccessibility_set_reduce_motion
   #:raccessibility_set_text_scale #:raccessibilitysettings
   #:raccessiblerole #:raction_bind #:raction_fire #:raction_is_builtin
   #:raction_set_builtins #:raction_set_default_handler #:raction_unbind
   #:ractioncallback #:radius #:rallocator #:rallocator_get_system
   #:raven_api_version #:raven_version_major #:raven_version_minor
   #:raven_version_patch #:raw_pressure #:rbackdrop #:rbackend
   #:rbackground_blur_clear_tint #:rbackground_blur_create
   #:rbackground_blur_get_radius #:rbackground_blur_get_style
   #:rbackground_blur_set_corner_radius #:rbackground_blur_set_grain
   #:rbackground_blur_set_padding #:rbackground_blur_set_radius
   #:rbackground_blur_set_saturation #:rbackground_blur_set_shadow
   #:rbackground_blur_set_style #:rbackground_blur_set_tint
   #:rblock_editor_add_block #:rblock_editor_add_kind #:rblock_editor_attach
   #:rblock_editor_clear #:rblock_editor_create #:rblock_editor_detach
   #:rblock_editor_get_body #:rblock_editor_get_input
   #:rblock_editor_get_kind #:rblock_editor_get_mouth_count
   #:rblock_editor_get_next #:rblock_editor_get_parent
   #:rblock_editor_get_position #:rblock_editor_get_script
   #:rblock_editor_get_script_count #:rblock_editor_get_selected
   #:rblock_editor_get_selection_count #:rblock_editor_get_slot_count
   #:rblock_editor_get_value #:rblock_editor_get_view #:rblock_editor_load
   #:rblock_editor_remove_block #:rblock_editor_save #:rblock_editor_select
   #:rblock_editor_set_block_deletable #:rblock_editor_set_block_glow
   #:rblock_editor_set_category_color #:rblock_editor_set_changed_callback
   #:rblock_editor_set_clicked_callback #:rblock_editor_set_context_callback
   #:rblock_editor_set_kind_label #:rblock_editor_set_kind_visible
   #:rblock_editor_set_palette_visible #:rblock_editor_set_slot_options
   #:rblock_editor_set_value #:rblock_editor_set_view #:rblockeditorcallback
   #:rblockeditorcontextcallback #:rblockplace #:rblockshape #:rblurstyle
   #:rborder_get_effect #:rborder_set_background #:rborder_set_corner_radius
   #:rborder_set_effect #:rborder_set_material #:rborder_set_outline
   #:rborder_set_padding #:rborder_set_shadow #:rbreadcrumb_add_item
   #:rbreadcrumb_get_item_count #:rbreadcrumb_get_item_text
   #:rbreadcrumb_set_clicked_callback #:rbreadcrumb_set_items
   #:rbreadcrumb_truncate #:rbreadcrumbcallback #:rbutton_create
   #:rbutton_set_clicked_callback #:rbutton_set_style #:rbutton_set_text
   #:rbuttonclickedcallback #:rbuttonstyle #:rcheckbox_create
   #:rcheckbox_get_text #:rcheckbox_is_checked
   #:rcheckbox_set_changed_callback #:rcheckbox_set_checked
   #:rcheckbox_set_style #:rcheckbox_set_text #:rcheckboxchangedcallback
   #:rcheckboxstyle #:rclipboard_get_text #:rclipboard_set_html
   #:rclipboard_set_text #:rcolor_hsv_to_rgb #:rcolor_picker_add_swatch
   #:rcolor_picker_clear_swatches #:rcolor_picker_create
   #:rcolor_picker_get_color #:rcolor_picker_get_hex #:rcolor_picker_get_hsv
   #:rcolor_picker_get_swatch_count #:rcolor_picker_set_alpha_enabled
   #:rcolor_picker_set_changed_callback #:rcolor_picker_set_color
   #:rcolor_picker_set_compact #:rcolor_picker_set_hex
   #:rcolor_picker_set_hsv #:rcolor_picker_set_popup
   #:rcolor_picker_set_previous_color #:rcolor_rgb_to_hsv
   #:rcolorchangedcallback #:rcolorfilter #:rcolorrole #:rcombo_box_add_item
   #:rcombo_box_clear_items #:rcombo_box_get_item_count
   #:rcombo_box_get_item_text #:rcombo_box_get_selected
   #:rcombo_box_set_changed_callback #:rcombo_box_set_selected
   #:rcomboboxchangedcallback #:rcompletioncallback #:rcursor
   #:rcustom_set_measure_callback #:rcustom_set_paint_callback
   #:rdate_picker_get_date #:rdate_picker_get_text #:rdate_picker_is_open
   #:rdate_picker_set_changed_callback #:rdate_picker_set_date
   #:rdate_picker_set_first_day_of_week #:rdate_picker_set_format
   #:rdate_picker_set_open #:rdate_picker_set_range #:rdatechangedcallback
   #:rdeviceresetcallback #:rdialog_close #:rdialog_open #:rdialog_run
   #:rdialogclosedcallback #:rdirection #:rdock_area_add_panel
   #:rdock_area_close_panel #:rdock_area_create #:rdock_area_dock_panel
   #:rdock_area_float_panel #:rdock_area_get_panel_window
   #:rdock_area_hide_panel #:rdock_area_is_panel_open
   #:rdock_area_is_panel_shown #:rdock_area_is_tearable
   #:rdock_area_load_layout #:rdock_area_move_panel #:rdock_area_open_panel
   #:rdock_area_save_layout #:rdock_area_set_changed_callback
   #:rdock_area_set_close_callback #:rdock_area_set_close_hides
   #:rdock_area_set_movable #:rdock_area_set_panel_closable
   #:rdock_area_set_panel_icon #:rdock_area_set_panel_title
   #:rdock_area_set_tearable #:rdock_area_show_panel #:rdockchangedcallback
   #:rdockclosecallback #:rdockside #:rdrag_begin #:rdrag_cancel
   #:rdrag_get_data #:rdrag_get_type #:rdrag_is_active #:rdraw_circle
   #:rdraw_curve #:rdraw_frame #:rdraw_glass #:rdraw_image #:rdraw_line
   #:rdraw_pop_clip_rect #:rdraw_push_clip_rect #:rdraw_rect
   #:rdraw_rect_outline #:rdraw_shader #:rdraw_spring #:rdraw_text
   #:rdraw_triangle #:rdropcallback #:rdropevent #:rdropphase #:realloc
   #:reduce_motion #:reffect #:reffect_find #:reffect_get
   #:reffect_get_defaults #:reffect_get_name #:render_ms #:render_pass
   #:repeat #:rerror #:rerror_get_last #:rerror_set_callback
   #:rerror_to_string #:rerrorcallback #:reserved_bytes #:revent
   #:reventtype #:rexpander_get_title #:rexpander_is_expanded
   #:rexpander_set_changed_callback #:rexpander_set_expanded
   #:rexpander_set_title #:rexpanderchangedcallback #:rfile_browser_create
   #:rfile_browser_get_directory #:rfile_browser_get_selection
   #:rfile_browser_get_selection_count #:rfile_browser_refresh
   #:rfile_browser_select #:rfile_browser_set_accepted_callback
   #:rfile_browser_set_cancelled_callback
   #:rfile_browser_set_controls_visible
   #:rfile_browser_set_default_extension #:rfile_browser_set_directory
   #:rfile_browser_set_file_name #:rfile_browser_set_filters
   #:rfile_browser_set_mode #:rfile_browser_set_multiple
   #:rfile_browser_set_places_visible
   #:rfile_browser_set_selection_changed_callback
   #:rfile_browser_set_show_hidden #:rfile_dialog_get_result
   #:rfile_dialog_get_result_count #:rfile_dialog_open #:rfile_dialog_save
   #:rfile_dialog_select_folder #:rfile_is_memory #:rfile_read
   #:rfile_register_memory #:rfile_unregister_memory #:rfile_write
   #:rfilebrowsercallback #:rfilebrowsermode #:rfiledialogdesc
   #:rfiledialogflags #:rfilefilter #:rfiltertype #:rfont_create
   #:rfont_create_from_file #:rfont_destroy #:rfont_get_default
   #:rfont_get_monospace #:rfont_get_variant #:rfont_is_valid
   #:rfont_measure_text #:rfont_set_fallback #:rfont_set_variant
   #:rfontstyle #:rframecallback #:rframestats #:rgesturecallback
   #:rgesturedevice #:rgestureevent #:rgesturekind #:rgesturephase
   #:rget_animation_speed #:rget_animations_enabled #:rget_delta_time
   #:rget_exit_code #:rget_layout_direction #:rget_time #:rget_ui_scale
   #:rget_version #:rget_vsync #:rget_worker_thread_count
   #:rgrid_set_column_fill #:rgrid_set_row_fill #:rhalign
   #:rheader_bar_create #:rheader_bar_set_background
   #:rheader_bar_set_button_side #:rheader_bar_set_buttons
   #:rheader_bar_set_title #:rheader_bar_set_title_align
   #:rheader_bar_set_title_notch #:rheaderbuttons #:rhost_inject_close
   #:rhost_inject_focus #:rhost_inject_key #:rhost_inject_mouse_button
   #:rhost_inject_mouse_leave #:rhost_inject_mouse_move
   #:rhost_inject_mouse_wheel #:rhost_inject_text #:rhost_platform_is_active
   #:rhost_platform_register #:rhost_window_set_size #:rhostplatformdesc
   #:rid #:rimage_decode #:rimage_set_corner_radius #:rimage_set_region
   #:rimage_set_stretch #:rimage_set_texture #:rimage_set_tint_color
   #:rimage_set_tint_text #:rinit #:rinit_ex #:rinitdesc #:ris_initialized
   #:ris_running #:ris_ui_thread #:risland_create #:risland_expand_for
   #:risland_get_notch #:risland_is_expanded #:risland_is_in_notch
   #:risland_set_attached #:risland_set_changed_callback
   #:risland_set_expand_on_click #:risland_set_expand_on_hover
   #:risland_set_expanded #:risland_set_notch #:rislandchangedcallback
   #:rjumptask #:rkey #:rlabel_clear_selection #:rlabel_create
   #:rlabel_get_markdown #:rlabel_get_plain_text #:rlabel_get_selectable
   #:rlabel_get_selected_text #:rlabel_get_text #:rlabel_select_all
   #:rlabel_set_color #:rlabel_set_font #:rlabel_set_link_callback
   #:rlabel_set_markdown #:rlabel_set_selectable #:rlabel_set_text
   #:rlabel_set_text_align #:rlabel_set_text_size #:rlabel_set_wrap
   #:rlabellinkcallback #:rlanguage_for_file #:rlanguage_get
   #:rlanguage_get_count #:rlanguage_get_name #:rlanguage_register
   #:rlanguagedesc #:rlanguageflags #:rlist_view_add_item
   #:rlist_view_clear_items #:rlist_view_get_item_count
   #:rlist_view_get_item_text #:rlist_view_get_selected
   #:rlist_view_remove_item #:rlist_view_scroll_to_item
   #:rlist_view_set_activated_callback #:rlist_view_set_item_text
   #:rlist_view_set_selected #:rlist_view_set_selection_changed_callback
   #:rlist_view_set_virtual_items #:rlisteventcallback
   #:rlistitemtextcallback #:rlocale_clear #:rlocale_format_number
   #:rlocale_get_language #:rlocale_get_language_at
   #:rlocale_get_language_count #:rlocale_get_system_language
   #:rlocale_is_rtl #:rlocale_load_csv #:rlocale_load_csv_from_memory
   #:rlocale_set_changed_callback #:rlocale_set_fallback_language
   #:rlocale_set_language #:rlocale_set_text #:rlocalechangedcallback
   #:rlook #:rlook_get #:rlook_set #:rmarkerkind #:rmaterial
   #:rmeasurecallback #:rmemory_alloc #:rmemory_check #:rmemory_free
   #:rmemory_get_stats #:rmemory_realloc #:rmemory_trim #:rmemorystats
   #:rmenu_add_item #:rmenu_add_menu #:rmenu_add_separator
   #:rmenu_bar_is_native #:rmenu_bar_set_native #:rmenu_item_get_text
   #:rmenu_item_is_checked #:rmenu_item_set_checkable
   #:rmenu_item_set_checked #:rmenu_item_set_clicked_callback
   #:rmenu_item_set_icon #:rmenu_item_set_shortcut #:rmenu_item_set_text
   #:rmenu_open #:rmenu_set_title #:rmenuitemclickedcallback #:rmessage_box
   #:rmessagebuttons #:rmessageresult #:rmetric #:rmodifier #:rmotion
   #:rmousebutton #:rnativewindow #:rnode_graph_add_input
   #:rnode_graph_add_node #:rnode_graph_add_output #:rnode_graph_clear
   #:rnode_graph_clear_selection #:rnode_graph_connect #:rnode_graph_create
   #:rnode_graph_disconnect #:rnode_graph_find_node #:rnode_graph_find_pin
   #:rnode_graph_frame_all #:rnode_graph_from_canvas #:rnode_graph_get_input
   #:rnode_graph_get_input_link #:rnode_graph_get_link
   #:rnode_graph_get_link_count #:rnode_graph_get_link_input
   #:rnode_graph_get_link_output #:rnode_graph_get_node
   #:rnode_graph_get_node_content #:rnode_graph_get_node_count
   #:rnode_graph_get_node_name #:rnode_graph_get_node_position
   #:rnode_graph_get_node_size #:rnode_graph_get_node_title
   #:rnode_graph_get_node_user_data #:rnode_graph_get_output
   #:rnode_graph_get_pin_label #:rnode_graph_get_pin_node
   #:rnode_graph_get_pin_position #:rnode_graph_get_pin_type
   #:rnode_graph_get_preset #:rnode_graph_get_selected_node
   #:rnode_graph_get_selection_count #:rnode_graph_get_view
   #:rnode_graph_is_node_selected #:rnode_graph_is_pin_output
   #:rnode_graph_remove_node #:rnode_graph_remove_pin
   #:rnode_graph_select_node #:rnode_graph_set_activated_callback
   #:rnode_graph_set_connect_callback #:rnode_graph_set_context_callback
   #:rnode_graph_set_flow_visible #:rnode_graph_set_grid_visible
   #:rnode_graph_set_linked_callback #:rnode_graph_set_moved_callback
   #:rnode_graph_set_node_active #:rnode_graph_set_node_active_color
   #:rnode_graph_set_node_badge #:rnode_graph_set_node_color
   #:rnode_graph_set_node_content #:rnode_graph_set_node_deletable
   #:rnode_graph_set_node_name #:rnode_graph_set_node_position
   #:rnode_graph_set_node_style #:rnode_graph_set_node_title
   #:rnode_graph_set_node_user_data #:rnode_graph_set_pin_multiple
   #:rnode_graph_set_pin_name #:rnode_graph_set_pin_style
   #:rnode_graph_set_preset #:rnode_graph_set_read_only
   #:rnode_graph_set_removed_callback #:rnode_graph_set_selection_callback
   #:rnode_graph_set_type_color #:rnode_graph_set_type_style
   #:rnode_graph_set_unlinked_callback #:rnode_graph_set_view
   #:rnode_graph_to_canvas #:rnodegraphconnectcallback
   #:rnodegraphcontextcallback #:rnodegraphitemcallback
   #:rnotification_is_supported #:rnotification_set_clicked_callback
   #:rnotification_set_fallback #:rnotification_show
   #:rnotificationclickedcallback #:rnotificationfallback
   #:rnotificationurgency #:ropen_url #:rorientation #:rotation
   #:rotation_delta #:rpagechangedcallback #:rpagination_get_page
   #:rpagination_get_page_count #:rpagination_set_changed_callback
   #:rpagination_set_page #:rpagination_set_page_count
   #:rpagination_set_siblings #:rpaintcallback #:rpanel_get_spacing
   #:rpanel_set_spacing #:rparallel_for #:rparallelrangecallback
   #:rpenbutton #:rpencallback #:rpenevent #:rpenphase
   #:rpictureinpicturecorner #:rpixels_free #:rplot_add_drag_line
   #:rplot_add_point #:rplot_add_series #:rplot_append_series_data
   #:rplot_clear #:rplot_clear_series_data #:rplot_data_to_point #:rplot_fit
   #:rplot_get_axis_label #:rplot_get_axis_range #:rplot_get_axis_scale
   #:rplot_get_drag_line_count #:rplot_get_drag_line_value
   #:rplot_get_mouse_position #:rplot_get_point #:rplot_get_point_count
   #:rplot_get_series_count #:rplot_get_series_name #:rplot_get_title
   #:rplot_is_axis_auto_fit #:rplot_is_series_visible #:rplot_point_to_data
   #:rplot_remove_drag_line #:rplot_remove_series #:rplot_set_axis_auto_fit
   #:rplot_set_axis_format #:rplot_set_axis_grid #:rplot_set_axis_inverted
   #:rplot_set_axis_label #:rplot_set_axis_linear_threshold
   #:rplot_set_axis_locked #:rplot_set_axis_range #:rplot_set_axis_scale
   #:rplot_set_axis_visible #:rplot_set_crosshair
   #:rplot_set_drag_line_callback #:rplot_set_drag_line_color
   #:rplot_set_drag_line_value #:rplot_set_legend #:rplot_set_mouse_text
   #:rplot_set_series_axes #:rplot_set_series_color #:rplot_set_series_data
   #:rplot_set_series_fill #:rplot_set_series_line #:rplot_set_series_marker
   #:rplot_set_series_marker_filled #:rplot_set_series_max_points
   #:rplot_set_series_name #:rplot_set_series_step
   #:rplot_set_series_toggled_callback #:rplot_set_series_visible
   #:rplot_set_title #:rplot_set_tooltips #:rplot_set_view_changed_callback
   #:rplotaxis #:rplotdraglinecallback #:rplotlegend #:rplotline
   #:rplotmarker #:rplotscale #:rplotseriescallback #:rplotviewcallback
   #:rpoll_events #:rprogress_bar_get_value #:rprogress_bar_set_value
   #:rquit #:rrating_get_max #:rrating_get_value #:rrating_set_allow_half
   #:rrating_set_changed_callback #:rrating_set_max #:rrating_set_read_only
   #:rrating_set_star_size #:rrating_set_value #:rratingchangedcallback
   #:rscroll_box_get_offset #:rscroll_box_scroll_to_end
   #:rscroll_box_set_offset #:rscroll_box_set_orientation
   #:rscroll_box_set_scroll_both #:rseparator_set_orientation
   #:rset_allocator #:rset_animation_speed #:rset_animation_time_step
   #:rset_animations_enabled #:rset_device_reset_callback
   #:rset_frame_callback #:rset_layout_direction #:rset_ui_scale
   #:rset_vsync #:rseverity #:rseverity_to_string #:rshader_create
   #:rshader_create_from_file #:rshader_destroy #:rshader_get_flags
   #:rshader_is_valid #:rshader_look_defaults #:rshader_look_init
   #:rshaderflags #:rshaderlook #:rshutdown #:rsize_box_set_aspect_ratio
   #:rslider_get_range #:rslider_get_value #:rslider_set_changed_callback
   #:rslider_set_orientation #:rslider_set_range #:rslider_set_step
   #:rslider_set_value #:rsliderchangedcallback #:rslot_set_alignment
   #:rslot_set_anchors #:rslot_set_auto #:rslot_set_fill #:rslot_set_grid
   #:rslot_set_grid_span #:rslot_set_halign #:rslot_set_max_size
   #:rslot_set_padding #:rslot_set_position #:rslot_set_size
   #:rslot_set_title #:rslot_set_valign #:rspacer_set_size
   #:rspin_box_get_range #:rspin_box_get_value
   #:rspin_box_set_changed_callback #:rspin_box_set_decimals
   #:rspin_box_set_range #:rspin_box_set_step #:rspin_box_set_value
   #:rspinboxchangedcallback #:rsplitter_set_min_pane_size
   #:rsplitter_set_orientation #:rspring #:rspring_kick #:rspring_set
   #:rstretch #:rswitcher_get_index #:rswitcher_set_index #:rsyntax
   #:rtab_view_add_tab #:rtab_view_find_tab #:rtab_view_get_active
   #:rtab_view_get_tab #:rtab_view_get_tab_count #:rtab_view_set_active
   #:rtab_view_set_changed_callback #:rtab_view_set_close_callback
   #:rtab_view_set_documents #:rtab_view_set_tab_closable
   #:rtab_view_set_tab_icon #:rtab_view_set_tab_title #:rtab_view_show_tab
   #:rtabchangedcallback #:rtabclosecallback #:rtable_add_column
   #:rtable_add_row #:rtable_clear_columns #:rtable_clear_rows
   #:rtable_get_cell #:rtable_get_column_count #:rtable_get_column_header
   #:rtable_get_column_width #:rtable_get_row_count #:rtable_get_selected
   #:rtable_get_sort_column #:rtable_is_sort_descending #:rtable_remove_row
   #:rtable_scroll_to_row #:rtable_set_activated_callback #:rtable_set_cell
   #:rtable_set_column_align #:rtable_set_column_fill
   #:rtable_set_column_header #:rtable_set_column_sortable
   #:rtable_set_column_width #:rtable_set_grid_lines
   #:rtable_set_header_visible #:rtable_set_selected
   #:rtable_set_selection_changed_callback #:rtable_set_sort_callback
   #:rtable_set_striped #:rtable_set_virtual_rows #:rtable_sort
   #:rtablecelltextcallback #:rtableeventcallback #:rtablesortcallback
   #:rtask_post #:rtask_run_async #:rtaskbar_set_badge
   #:rtaskbar_set_jump_list #:rtaskbar_set_menu #:rtaskbarprogress
   #:rtaskcallback #:rtext_editor_add_completion #:rtext_editor_add_marker
   #:rtext_editor_can_redo #:rtext_editor_can_undo
   #:rtext_editor_clear_markers #:rtext_editor_create
   #:rtext_editor_get_cursor #:rtext_editor_get_language
   #:rtext_editor_get_length #:rtext_editor_get_line
   #:rtext_editor_get_line_count #:rtext_editor_get_markdown
   #:rtext_editor_get_marker_count #:rtext_editor_get_selected_text
   #:rtext_editor_get_selection #:rtext_editor_get_text
   #:rtext_editor_get_token #:rtext_editor_get_zoom
   #:rtext_editor_insert_text #:rtext_editor_is_completing
   #:rtext_editor_redo #:rtext_editor_scroll_to_line #:rtext_editor_select
   #:rtext_editor_select_all #:rtext_editor_set_auto_pairs
   #:rtext_editor_set_changed_callback #:rtext_editor_set_completion
   #:rtext_editor_set_completion_callback #:rtext_editor_set_cursor
   #:rtext_editor_set_font #:rtext_editor_set_language
   #:rtext_editor_set_line_numbers #:rtext_editor_set_markdown
   #:rtext_editor_set_placeholder #:rtext_editor_set_read_only
   #:rtext_editor_set_syntax #:rtext_editor_set_tab_inserts_spaces
   #:rtext_editor_set_tab_size #:rtext_editor_set_text
   #:rtext_editor_set_word_wrap #:rtext_editor_set_zoom
   #:rtext_editor_set_zoom_callback #:rtext_editor_set_zoomable
   #:rtext_editor_show_completions #:rtext_editor_undo
   #:rtext_input_get_text #:rtext_input_is_password
   #:rtext_input_is_read_only #:rtext_input_select_all
   #:rtext_input_set_changed_callback #:rtext_input_set_committed_callback
   #:rtext_input_set_max_length #:rtext_input_set_password
   #:rtext_input_set_placeholder #:rtext_input_set_read_only
   #:rtext_input_set_text #:rtextalign #:rtextchangedcallback
   #:rtexteditorchangedcallback #:rtexteditorzoomcallback #:rtexture_create
   #:rtexture_create_async #:rtexture_create_from_file
   #:rtexture_create_from_file_async #:rtexture_create_from_pixels
   #:rtexture_create_from_svg #:rtexture_destroy #:rtexture_get_density
   #:rtexture_get_size #:rtexture_is_ready #:rtexture_is_valid
   #:rtexture_set_filter #:rtexture_update #:rtexture_wait #:rtheme
   #:rtheme_apply #:rtheme_clear_styles #:rtheme_clear_token_colors
   #:rtheme_get_color #:rtheme_get_count #:rtheme_get_font
   #:rtheme_get_material #:rtheme_get_metric #:rtheme_get_name
   #:rtheme_get_name_at #:rtheme_get_token_color #:rtheme_get_wallpaper
   #:rtheme_is_dark #:rtheme_load #:rtheme_load_from_memory #:rtheme_save
   #:rtheme_set_accent #:rtheme_set_color #:rtheme_set_dark
   #:rtheme_set_font #:rtheme_set_material #:rtheme_set_metric
   #:rtheme_set_style_color #:rtheme_set_style_material
   #:rtheme_set_style_metric #:rtheme_set_token_color #:rtheme_set_wallpaper
   #:rtheme_use #:rtile_view_clear_selection #:rtile_view_get_count
   #:rtile_view_get_current #:rtile_view_get_item_at
   #:rtile_view_get_selection #:rtile_view_get_selection_count
   #:rtile_view_is_selected #:rtile_view_refresh #:rtile_view_scroll_to
   #:rtile_view_select_only #:rtile_view_set_activated_callback
   #:rtile_view_set_context_callback #:rtile_view_set_drag_data_callback
   #:rtile_view_set_drag_type #:rtile_view_set_drop_highlight
   #:rtile_view_set_empty_text #:rtile_view_set_items
   #:rtile_view_set_selected #:rtile_view_set_selection_changed_callback
   #:rtile_view_set_tile_size #:rtilecontextcallback #:rtiledragdatacallback
   #:rtileeventcallback #:rtileitem #:rtileitemcallback
   #:rtime_picker_get_time #:rtime_picker_set_changed_callback
   #:rtime_picker_set_minute_step #:rtime_picker_set_seconds_visible
   #:rtime_picker_set_time #:rtimechangedcallback #:rtimeline_add_clip
   #:rtimeline_add_key #:rtimeline_add_marker #:rtimeline_add_track
   #:rtimeline_clear #:rtimeline_clear_selection #:rtimeline_create
   #:rtimeline_get_default_track_height #:rtimeline_get_duration
   #:rtimeline_get_frame_rate #:rtimeline_get_header_width
   #:rtimeline_get_item #:rtimeline_get_item_count
   #:rtimeline_get_item_label #:rtimeline_get_item_length
   #:rtimeline_get_item_start #:rtimeline_get_item_track
   #:rtimeline_get_item_type #:rtimeline_get_preset
   #:rtimeline_get_ruler_height #:rtimeline_get_selected
   #:rtimeline_get_selection_count #:rtimeline_get_time
   #:rtimeline_get_track #:rtimeline_get_track_count
   #:rtimeline_get_track_name #:rtimeline_get_view #:rtimeline_is_playing
   #:rtimeline_is_selected #:rtimeline_is_track_muted
   #:rtimeline_remove_item #:rtimeline_remove_track #:rtimeline_select
   #:rtimeline_set_activated_callback #:rtimeline_set_changed_callback
   #:rtimeline_set_default_track_height #:rtimeline_set_duration
   #:rtimeline_set_frame_rate #:rtimeline_set_header_width
   #:rtimeline_set_item #:rtimeline_set_item_color
   #:rtimeline_set_item_label #:rtimeline_set_item_style
   #:rtimeline_set_loop #:rtimeline_set_playing #:rtimeline_set_preset
   #:rtimeline_set_removed_callback #:rtimeline_set_ruler_height
   #:rtimeline_set_selection_callback #:rtimeline_set_snapping
   #:rtimeline_set_time #:rtimeline_set_time_callback
   #:rtimeline_set_track_color #:rtimeline_set_track_height
   #:rtimeline_set_track_locked #:rtimeline_set_track_muted
   #:rtimeline_set_track_name #:rtimeline_set_track_style
   #:rtimeline_set_view #:rtimelineitem #:rtimelineitemcallback
   #:rtimelinetimecallback #:rtimer_create #:rtimer_destroy
   #:rtimer_is_valid #:rtimercallback #:rtoast_clear #:rtoast_get_count
   #:rtoast_get_queue #:rtoast_get_text #:rtoast_hide #:rtoast_is_shown
   #:rtoast_set_action_callback #:rtoast_set_action_text #:rtoast_set_kind
   #:rtoast_set_max_visible #:rtoast_set_queue #:rtoast_show
   #:rtoast_show_kind #:rtoastcallback #:rtoastkind #:rtoastqueue #:rtoken
   #:rtouch_get_default_settings #:rtouch_get_settings #:rtouch_set_settings
   #:rtouchcallback #:rtouchevent #:rtouchmode #:rtouchphase
   #:rtouchsettings #:rtr #:rtr_exists #:rtr_format #:rtr_plural
   #:rtransition #:rtray_create #:rtray_destroy #:rtray_is_supported
   #:rtray_is_valid #:rtray_set_clicked_callback #:rtray_set_icon
   #:rtray_set_menu #:rtray_set_tooltip #:rtrayclickedcallback
   #:rtree_item_destroy #:rtree_item_get_child #:rtree_item_get_child_count
   #:rtree_item_get_parent #:rtree_item_get_text
   #:rtree_item_get_user_handle #:rtree_item_is_expanded
   #:rtree_item_is_selected #:rtree_item_is_valid #:rtree_item_set_expanded
   #:rtree_item_set_icon #:rtree_item_set_selected #:rtree_item_set_text
   #:rtree_item_set_text_color #:rtree_item_set_user_handle
   #:rtree_view_add_item #:rtree_view_clear_items
   #:rtree_view_clear_selection #:rtree_view_get_item
   #:rtree_view_get_item_at #:rtree_view_get_item_count
   #:rtree_view_get_selected_item #:rtree_view_get_selection
   #:rtree_view_get_selection_count #:rtree_view_scroll_to_item
   #:rtree_view_set_activated_callback #:rtree_view_set_context_callback
   #:rtree_view_set_drag_type #:rtree_view_set_drop_highlight
   #:rtree_view_set_multi_select #:rtree_view_set_selected_item
   #:rtree_view_set_selection_changed_callback #:rtreecontextcallback
   #:rtreeeventcallback #:ruint #:runiform_grid_set_columns
   #:runiform_grid_set_min_cell_size #:rvalign #:rviewport_get_native_handle
   #:rviewport_get_pixel_size #:rviewport_set_draw_callback
   #:rviewport_set_flip_y #:rviewport_set_native #:rviewport_set_realtime
   #:rviewport_set_resize_callback #:rviewport_set_stretch
   #:rviewport_set_texture #:rviewportdrawcallback #:rviewportdrawinfo
   #:rviewportresizecallback #:rvisibility #:rvisualpreset #:rwait_events
   #:rwait_frame #:rwake_up #:rwidget_add_child #:rwidget_add_class
   #:rwidget_clear_children #:rwidget_clear_color #:rwidget_clear_metric
   #:rwidget_create #:rwidget_create_from_xml #:rwidget_create_from_xml_file
   #:rwidget_destroy #:rwidget_find #:rwidget_focus
   #:rwidget_get_accessible_name #:rwidget_get_accessible_role
   #:rwidget_get_action #:rwidget_get_child #:rwidget_get_child_count
   #:rwidget_get_class #:rwidget_get_color #:rwidget_get_desired_size
   #:rwidget_get_direction #:rwidget_get_font #:rwidget_get_material
   #:rwidget_get_metric #:rwidget_get_name #:rwidget_get_parent
   #:rwidget_get_pen_mouse #:rwidget_get_rect #:rwidget_get_theme
   #:rwidget_get_tooltip #:rwidget_get_touch_gestures
   #:rwidget_get_touch_mode #:rwidget_get_type #:rwidget_get_user_handle
   #:rwidget_get_visibility #:rwidget_get_window #:rwidget_get_xml_node
   #:rwidget_has_class #:rwidget_hit_test #:rwidget_insert_child
   #:rwidget_invalidate #:rwidget_is_enabled #:rwidget_is_focused
   #:rwidget_is_hovered #:rwidget_is_valid #:rwidget_pick
   #:rwidget_play_transition #:rwidget_remove_child #:rwidget_remove_class
   #:rwidget_scroll_into_view #:rwidget_set_accessible_description
   #:rwidget_set_accessible_hidden #:rwidget_set_accessible_labelled_by
   #:rwidget_set_accessible_name #:rwidget_set_accessible_role
   #:rwidget_set_action #:rwidget_set_attribute #:rwidget_set_class
   #:rwidget_set_clipping #:rwidget_set_color #:rwidget_set_context_menu
   #:rwidget_set_cursor #:rwidget_set_destroy_callback
   #:rwidget_set_direction #:rwidget_set_drop_callback #:rwidget_set_enabled
   #:rwidget_set_event_callback #:rwidget_set_focusable #:rwidget_set_font
   #:rwidget_set_gesture_callback #:rwidget_set_hit_testable
   #:rwidget_set_material #:rwidget_set_max_size #:rwidget_set_metric
   #:rwidget_set_min_size #:rwidget_set_name #:rwidget_set_opacity
   #:rwidget_set_pen_callback #:rwidget_set_pen_mouse #:rwidget_set_size
   #:rwidget_set_text_key #:rwidget_set_theme #:rwidget_set_tooltip
   #:rwidget_set_touch_callback #:rwidget_set_touch_gestures
   #:rwidget_set_touch_mode #:rwidget_set_transition
   #:rwidget_set_user_handle #:rwidget_set_visibility
   #:rwidget_set_window_drag #:rwidgetdestroycallback #:rwidgeteventcallback
   #:rwidgettype #:rwindow_advance_touch #:rwindow_begin_move
   #:rwindow_begin_resize #:rwindow_capture #:rwindow_center #:rwindow_close
   #:rwindow_close_popups #:rwindow_create #:rwindow_create_from_xml
   #:rwindow_create_from_xml_file #:rwindow_destroy #:rwindow_get_backdrop
   #:rwindow_get_content #:rwindow_get_focused_widget
   #:rwindow_get_frame_stats #:rwindow_get_framebuffer_size
   #:rwindow_get_hovered_widget #:rwindow_get_inspector #:rwindow_get_island
   #:rwindow_get_modifiers #:rwindow_get_mouse_position
   #:rwindow_get_native_handle #:rwindow_get_opacity #:rwindow_get_popup
   #:rwindow_get_popup_count #:rwindow_get_position #:rwindow_get_scale
   #:rwindow_get_size #:rwindow_get_text_input_rect #:rwindow_get_theme
   #:rwindow_get_title #:rwindow_get_touch_count
   #:rwindow_get_touch_settings #:rwindow_get_user_handle
   #:rwindow_has_dialog #:rwindow_has_own_theme #:rwindow_has_popup
   #:rwindow_hide #:rwindow_inject_drag #:rwindow_inject_drop
   #:rwindow_inject_key #:rwindow_inject_mouse_button
   #:rwindow_inject_mouse_move #:rwindow_inject_mouse_wheel
   #:rwindow_inject_pen #:rwindow_inject_text #:rwindow_inject_touch
   #:rwindow_inject_trackpad_gesture #:rwindow_inject_trackpad_scroll
   #:rwindow_inject_trackpad_scroll_end #:rwindow_is_active
   #:rwindow_is_inspector_shown #:rwindow_is_key_down #:rwindow_is_maximized
   #:rwindow_is_minimized #:rwindow_is_mouse_button_down
   #:rwindow_is_mouse_inside #:rwindow_is_pen_in_range
   #:rwindow_is_picture_in_picture #:rwindow_is_splash_screen
   #:rwindow_is_touch_active #:rwindow_is_valid #:rwindow_maximize
   #:rwindow_minimize #:rwindow_register_shortcut
   #:rwindow_request_attention #:rwindow_request_redraw #:rwindow_restore
   #:rwindow_set_backdrop #:rwindow_set_background #:rwindow_set_clear_color
   #:rwindow_set_close_callback #:rwindow_set_content
   #:rwindow_set_continuous_redraw #:rwindow_set_drop_callback
   #:rwindow_set_event_hook #:rwindow_set_icon #:rwindow_set_inspector
   #:rwindow_set_island #:rwindow_set_min_size #:rwindow_set_opacity
   #:rwindow_set_picture_in_picture #:rwindow_set_picture_in_picture_layout
   #:rwindow_set_position #:rwindow_set_resize_callback #:rwindow_set_size
   #:rwindow_set_tab_navigation #:rwindow_set_taskbar_progress
   #:rwindow_set_theme #:rwindow_set_title #:rwindow_set_topmost
   #:rwindow_set_touch_settings #:rwindow_set_user_handle #:rwindow_show
   #:rwindow_unregister_shortcut #:rwindow_wants_text_input
   #:rwindowclosecallback #:rwindowedge #:rwindoweventhook #:rwindowflags
   #:rwindowresizecallback #:rwindowsystem #:rxml_check_files
   #:rxml_document_create #:rxml_document_create_widget
   #:rxml_document_create_window #:rxml_document_destroy
   #:rxml_document_get_root #:rxml_document_is_valid #:rxml_document_load
   #:rxml_document_parse #:rxml_document_save #:rxml_document_to_string
   #:rxml_get_attribute_count #:rxml_get_attribute_info #:rxml_get_auto_load
   #:rxml_get_live_reload #:rxml_get_registered_widget_count
   #:rxml_get_registered_widget_name #:rxml_get_tag_children
   #:rxml_get_tag_count #:rxml_get_tag_description #:rxml_get_tag_name
   #:rxml_is_tag_registered #:rxml_is_widget_registered
   #:rxml_node_add_child #:rxml_node_add_comment #:rxml_node_add_xml
   #:rxml_node_duplicate #:rxml_node_get_attribute
   #:rxml_node_get_attribute_count #:rxml_node_get_attribute_name
   #:rxml_node_get_attribute_value #:rxml_node_get_child
   #:rxml_node_get_child_count #:rxml_node_get_document
   #:rxml_node_get_index #:rxml_node_get_line #:rxml_node_get_parent
   #:rxml_node_get_tag #:rxml_node_get_text #:rxml_node_get_widget
   #:rxml_node_is_comment #:rxml_node_is_valid #:rxml_node_move
   #:rxml_node_remove #:rxml_node_set_attribute #:rxml_node_set_tag
   #:rxml_node_set_text #:rxml_node_to_string #:rxml_register_tag
   #:rxml_register_widgets #:rxml_register_widgets_from_file
   #:rxml_resolve_path #:rxml_set_auto_load #:rxml_set_base_path
   #:rxml_set_live_reload #:rxml_set_reload_callback #:rxml_unregister_tag
   #:rxml_unregister_widget #:rxmlattributeinfo #:rxmlerror
   #:rxmlreloadcallback #:rxmltagattributecallback #:rxmltagcreatecallback
   #:rxmlvaluetype #:scale #:scale_delta #:screen_reader #:script_language
   #:set_cursor #:slop #:started #:string_quotes #:swipe_distance
   #:swipe_navigation #:system #:target #:text #:text_color #:text_scale
   #:texture #:tilt_x #:tilt_y #:tint #:title #:total_allocations #:total_x
   #:total_y #:trackpad_gestures #:transparent #:type #:types #:ui_scale
   #:used_bytes #:user_data #:uv #:value #:velocity #:viewport #:visual
   #:wake #:wheel_precise #:wheel_x #:wheel_y #:widget_count #:width
   #:window #:worker_threads #:x #:y))
