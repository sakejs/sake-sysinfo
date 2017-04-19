sysinfo = ->
  exec.quiet
    os:   'uname -mnrs'
    node: 'node --version'
    npm:  'npm --version'
    yarn: 'yarn --version'
    sake: 'sake --version'

export default (opts = {}) ->
  task 'sysinfo', 'show system information', ->
    table = []
    for k, v of yield sysinfo()
      if v.stdout
        padding = Array(6 - k.length).join ' '
        console.log "#{k}:#{padding}#{v.stdout.trim()}"
    process.exit 0
