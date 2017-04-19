exec = require 'executive'

describe 'sake-sysinfo', ->
  it 'should add sysinfo task', ->
    {stdout} = yield exec 'sake', cwd: __dirname
    stdout.should.contain 'sysinfo'
