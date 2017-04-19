sysinfo = ->
  exec.quiet
    os:   'uname -s'
    node: 'node --version'
    npm:  'npm --version'
    yarn: 'yarn --version'
    sake: 'sake --version'

export default (opts = {}) ->
  task 'sysinfo', 'show system information', ->
    console.log "#{k}: #{v}" for k,v of yield sysinfo()
