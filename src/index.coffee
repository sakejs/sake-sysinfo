sysinfo = ->
  exec.quiet
    os:   'uname -mnrs'
    node: 'node --version'
    npm:  'npm --version'
    yarn: 'yarn --version'
    sake: 'sake --version'

normalize = (v) ->
  return '' unless v.stdout
  v = v.stdout.trim()
  v.replace /^v/, ''

export default (opts = {}) ->
  task 'sysinfo', 'show system information', ->
    table = []
    for k, v of yield sysinfo()
      if v = normalize v
        padding = Array(8 - k.length).join ' '
        console.log "#{k}:#{padding}#{v}"
    process.exit 0
