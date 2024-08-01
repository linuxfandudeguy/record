#!bin/bash

record() {
    # Generate a timestamp
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    
    # Define the log file with the timestamp
    LOGFILE="history_${TIMESTAMP}.log"
    
    # Inform the user of the log file name
    echo "Recording terminal activity. Output will be saved to: $LOGFILE"
    
    # Start recording the terminal session
    echo "Press Ctrl+D or type 'exit' to stop recording."
    script -f "$LOGFILE"
}
