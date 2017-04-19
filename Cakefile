use 'sake-outdated'
use 'sake-publish'
use 'sake-test'
use 'sake-version'

use 'sake-bundle',
  entry: 'src/index.coffee'
  compilers:
    coffee: version: 1

try
  use require './'
catch err

task 'build', 'build project', ['bundle']

task 'clean', 'clean project', ->
  exec 'rm -rf lib'
