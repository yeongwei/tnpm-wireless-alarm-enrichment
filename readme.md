# TNPM Wireless Alarm Enrichment

##

### Introduction

Enrich SNMP Trap before forwarding to other SNMP Trap Consumer (E.g Omnibus).

### Artifact

1. TestForwarder.jar - Java program that consumes Wireless Alarm Trap pass in via Alarm Target. 
2. logging.properties - java.util.logging configurations.
3. alarm_enrichment.sh - Wrapper scripts which facilitates first level logging and pass Alarm Trap as arguement to com.psl.TestForwarder.

### Procedure

1. From PWEB, Select Alarm Tab and navigate to alarm exporter.
2. Select the Rule that needs to be amended.
3. Select Tools and click Targets. Target Manager window will open.
4. Select the appropriate Target. Click Edit to open the Target Editor window.
5. Select Type to Program.
6. In the Program text box, fill in the full path to the file `alarm_enrichment.sh`.
7. Click OK.
8. Monitor the file at /tmp/alarm_enrichment.log for calling of `alarm_enrichment.sh`.
9. Monitor the fiel at ~/java0.log(default) for the calling of the class `com.psl.TestForwarder`.
