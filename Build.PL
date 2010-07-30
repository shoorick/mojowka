use strict;
use Module::Build;
#created by eumm-migrate.pl

my $build = Module::Build->new(
  'dist_abstract' => 'lightweight wiki based on top of Mojolicious::Lite',
  'license' => 'perl',
  'build_requires' => {
  },
  'dist_author' => 'Alexander Sapozhnikov <shoorick@cpan.org>',
  'module_name' => 'mojowka',
  'meta_merge' => {
    'keywords' => [
      'wiki',
    ],
    'resources' => {
      'repository' => 'http://github.com/shoorick/mojowka'
    }
  },
  'requires' => {
    'perl' => '5.008',
    'Mojolicious::Lite' => 0,
    'Mojo::ByteStream' => 0,
    'Text::Textile' => 0,
    'DBI' => 0,
    'DBD::SQLite' => 0,
  },
  'dist_version_from' => 'mojowka'
);

$build->create_build_script();
