project(
    'com.github.christophernugent.acacia', 'vala', 'c',
    version : '0.1.0',
    license: 'GPL-3.0'
)

gnome = import('gnome')
i18n = import('i18n')

vapi_dir = meson.current_source_dir() / 'vapi'
add_project_arguments(['--vapidir', vapi_dir], language: 'vala')

add_project_arguments(
    '-DGETTEXT_PACKAGE="@0@"'.format(meson.project_name()),
    language: 'c'
)

gresource = gnome.compile_resources(
    'as-resources',
    'data/' + meson.project_name() + '.gresource.xml',
    source_dir: 'data',
    c_name: 'as'
)

conf = configuration_data()
conf.set_quoted('GETTEXT_PACKAGE', meson.project_name())
configure_file(output: 'config.h', configuration: conf)
config_h_dir = include_directories('.')

c_args = [
  '-include', 'config.h'
]

sources = files()

subdir('data')
subdir('src')
subdir('tests')

dependencies = [
    dependency('gobject-2.0'),
    dependency('glib-2.0'),
    dependency('granite'),
    dependency('gtk+-3.0'),
    dependency('gee-0.8'),
    dependency('libgit2-glib-1.0'),
]

e = executable(
    meson.project_name(),
    sources,
    gresource,
    c_args: c_args,
    dependencies: dependencies,
    install : true
)

#test('tests', e, args : ['--run-tests'])

meson.add_install_script('meson/post_install.py')
