for f in nerc-journal-ilm nerc-container-ilm
do 
  curl -k -K ~/nerc-elk/eck-key -XPUT "https://elastic-nerc-eck.apps.nerc-shift-0.rc.fas.harvard.edu/_ilm/policy/$f" -H 'Content-Type: application/json' -d  @$f
done
