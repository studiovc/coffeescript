sleep = (ms) ->
  new Promise (resolve) ->
    window.setTimeout resolve, ms

say = (text) ->
  window.speechSynthesis.cancel() # cancel any prior utterances
  window.speechSynthesis.speak new SpeechSynthesisUtterance text

countdown = (seconds) ->
  for i in [seconds..1]
    say "#{i}"
    await sleep 1000 # wait one second
  say "Blastoff!"

countdown(3)
