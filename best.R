        ###########################################
        ## Finding the best hospital in a state: ##
        ###########################################

best <- function(state, outcome) {
                outcomes <- c('heart attack', 'heart failure', 'pneumonia')
## Reading and filtering outcome data:
                data_csv <- read.csv("outcome-of-care-measures.csv",
                                     na.strings = "Not Available")
                candidatos <- data.frame(hospital = data_csv[,2],
                                         state = data_csv[,7],
                                         attack = data_csv[,11],
                                         failure = data_csv[,17],
                                         pneumonia = data_csv[,23])
## If "state" and "outcome" are valid, find the best:
                if (any(state == data_csv$State)) {
                        if (any(outcome == outcomes)) {
                                print("best hospital goes here")
                        } else {
                                stop ("invalid outcome")
                        }
                } else {
                        stop ("invalid state")
                } 

## Return hospital name in that state with lowest 30-day death rate:
                str(candidatos)
}
