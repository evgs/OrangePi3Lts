# Request via moonraker

## check klipper state

### webhooks-ready
```
$  curl http://moonrakerhost:7125/printer/objects/query?webhooks

{"result": {"eventtime": 17562.158839967, "status": {"webhooks": {"state": "ready", "state_message": "Printer is ready"}}}}
```

### webhooks-error
```
$  curl http://moonrakerhost:7125/printer/objects/query?webhooks

{"result": {"eventtime": 17603.304694952, "status": {"webhooks": {"state": "shutdown", "state_message": "Shutdown due to webhooks request\nOnce the underlying issue is corrected, use the\n\"FIRMWARE_RESTART\" command to reset the firmware, reload the\nconfig, and restart the host software.\nPrinter is shutdown\n"}}}}
```

## check if printing

### on printing
```
$  curl http://moonrakerhost:7125/printer/objects/query?print_stats

{"result": {"eventtime": 16986.581155864, "status": {"print_stats": {"filename": "filename.gcode", "total_duration": 707.7990099900017, "print_duration": 542.9120558860013, "filament_used": 697.0802000000003, "state": "printing", "message": "", "info": {"total_layer": null, "current_layer": null}}}}}
```

### cancelled
```
$  curl http://moonrakerhost:7125/printer/objects/query?print_stats

{"result": {"eventtime": 16986.581155864, "status": {"print_stats": {"filename": "filename.gcode", "total_duration": 707.7990099900017, "print_duration": 542.9120558860013, "filament_used": 697.0802000000003, "state": "printing", "message": "", "info": {"total_layer": null, "current_layer": null}}}}}
```

### standby
```
$  curl http://moonrakerhost:7125/printer/objects/query?print_stats

{"result": {"eventtime": 17168.346634597, "status": {"print_stats": {"filename": "", "total_duration": 0.0, "print_duration": 0.0, "filament_used": 0.0, "state": "standby", "message": "", "info": {"total_layer": null, "current_layer": null}}}}}
```

## check hotend is cool
```
$ curl http://moonrakerhost:7125/printer/objects/query?extruder

{"result": {"eventtime": 18195.063673945, "status": {"extruder": {"temperature": 40.82, "target": 0.0, "power": 0.0, "can_extrude": false, "pressure_advance": 0.04, "smooth_time": 0.04, "motion_queue": null}}}}
```

