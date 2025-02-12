multielement_sources = [
  'main.vala',
  'window.vala',
  'application.vala',
]

multielement_deps = [
  dependency('libadwaita-1', version: '>= 1.0'),
]

gnome = import('gnome')

multielement_sources += gnome.compile_resources('multielement-resources',
  'multielement.gresource.xml',
  c_name: 'multielement'
)

executable('multielement', multielement_sources,
  vala_args: '--target-glib=2.50',  dependencies: multielement_deps,
  install: true,
)
