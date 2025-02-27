multielement_sources = [
  'application.vala',
  'main.vala',
  'windows/main_window/main_window.vala',
  'windows/language_window/language_window.vala',
  'windows/splash_window/splash_window.vala',
  'windows/no_connect_window/no_connect_window.vala',
  'windows/browser_window/browser_window.vala',
  'views/short_widget.vala',
  'views/extended_widget.vala',
  'views/circle_widget.vala',
  'views/piramid_widget.vala',
  'views/adomah_vert_widget.vala',
  'views/adomah_horiz_widget.vala',
  'widgets/items_widget/items_widget.vala',
  'widgets/theme_switcher/theme_switcher.vala',
  'widgets/circular-progress-bar/circular-progress-bar.vala',
  'widgets/progress_widget/progress_widget.vala',
  'widgets/mode_switcher/mode_switcher.vala',
  'services/element/element_service.vala',
  'services/element/element_provider.vala',
  'services/element/element_model.vala',
  'services/properties/properties_service.vala',
  'services/properties/properties_provider.vala',
  'services/properties/properties_model.vala',
  'services/settings/settings_service.vala',
  'services/settings/settings_model.vala',
  'services/settings/theme_model.vala',
  'services/settings/locale_model.vala',
  'services/translate/translate_service.vala',
  'services/translate/translate_provider.vala',
  'services/translate/translate_model.vala',
  'services/connect/connect_service.vala',
  'services/connect/connect_provider.vala',
  'services/connect/connect_model.vala',
  'services/appsload/appsload_service.vala',
  'services/appsload/appsload_provider.vala',
  'services/appsload/appsload_model.vala',
  'utils/text_trim.vala',
  'utils/color_operation.vala',
  'resources/define_color.vala',
  'utils/http.vala',
  'utils/info_linux.vala',
  'utils/info_linux.c',
  'utils/info_theme.vala',
]

multielement_deps = [
  dependency('libadwaita-1', version: '>= 1.0'),
  dependency('cairo'),
  dependency('gio-2.0'),
  dependency('gee-0.8'),
  dependency('json-glib-1.0'),
  dependency('webkitgtk-6.0')
]

gnome = import('gnome')

multielement_sources += gnome.compile_resources('multielement-resources',
  'multielement.gresource.xml',
  c_name: 'multielement'
)

executable('multielement', multielement_sources,
	link_args: '-lm',
  vala_args: '--target-glib=2.50',  dependencies: multielement_deps,
  install: true,
)
