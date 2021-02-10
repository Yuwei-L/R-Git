exp <- function(x,y){
          result = x^y
          return(result)
}

exp(2,3)

#How to update changes in Git: 1. Save 2. Commit (can be any customized message)~Use: git commit -m "first commit", but you need to do it for every single update version 3. Pull  

#Exercise 7: recency = difference between latest transaction and "today", frequency = number of transactions, monetary = average amount spent per transaction
rfm <- transactions[ ,list(recency = as.numeric(now - max(TransDate)),
                           frequency = .N, 
                           monetary = mean(PurchAmount)), 
                     by=Customer]
max(transactions[, TransDate]) #shows the latest date 