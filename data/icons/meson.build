application_id = 'ua.inf.multiapps.multiElement'
circle_id = 'circle'
piramid_id = 'piramid_source'
short_id = 'short_periodic'
adomah_vert_id = 'adomah_vert'
adomah_horiz_id = 'adomah_horiz'
extended_id = 'extended_periodic'
ok_id = 'ok128'
cancel_id = 'cancel128'
no_connect_id = 'no_connect128'

scalable_dir = join_paths('hicolor', 'scalable', 'apps')
install_data(
  join_paths(scalable_dir, ('@0@.svg').format(application_id)),
  join_paths(scalable_dir, ('@0@.svg').format(circle_id)),
  join_paths(scalable_dir, ('@0@.svg').format(piramid_id)),
  join_paths(scalable_dir, ('@0@.svg').format(adomah_vert_id)),
  join_paths(scalable_dir, ('@0@.svg').format(adomah_horiz_id)),
  join_paths(scalable_dir, ('@0@.svg').format(short_id)),
  join_paths(scalable_dir, ('@0@.svg').format(extended_id)),
  join_paths(scalable_dir, ('@0@.svg').format(ok_id)),
  join_paths(scalable_dir, ('@0@.svg').format(cancel_id)),
  join_paths(scalable_dir, ('@0@.svg').format(no_connect_id)),
  install_dir: join_paths(get_option('datadir'), 'icons', scalable_dir)
)

symbolic_dir = join_paths('hicolor', 'symbolic', 'apps')
install_data(
  join_paths(symbolic_dir, ('@0@-symbolic.svg').format(application_id)),
  install_dir: join_paths(get_option('datadir'), 'icons', symbolic_dir)
)
