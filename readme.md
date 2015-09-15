# TNPM Wireless Alarm Enrichment

##

### Introduction

Enrich SNMP Trap before forwarding to other SNMP Trap Consumer (E.g Omnibus).

### Artifact

1. TestForwarder.jar - Java program that consumes Wireless Alarm Trap pass in via Alarm Target. 
2. logging.properties - java.util.logging configurations.
3. alarm_enrichment.sh - Wrapper scripts which facilitates first level logging and pass Alarm Trap as arguement to com.psl.TestForwarder.
