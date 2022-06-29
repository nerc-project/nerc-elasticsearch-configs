for f in nerc-journal-template nerc-container-template
do 
  curl -k -K ~/nerc-elk/eck-key -XPUT "https://elastic-nerc-eck.apps.nerc-shift-0.rc.fas.harvard.edu/_index_template/$f" -H 'Content-Type: application/json' -d  @$f
done
