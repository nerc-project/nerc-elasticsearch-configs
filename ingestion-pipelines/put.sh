#for f in nerc-osp-container-logs nerc-osp-container-logs-redis nerc-osp-container-logs-catchall
for f in nerc-osp-container-logs
do 
  curl -k -K ~augustin/nerc-elk/eck-key -XPUT "https://elastic-nerc-eck.apps.nerc-shift-0.rc.fas.harvard.edu/_ingest/pipeline/$f" -H 'Content-Type: application/json' -d  @$f
done
