#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#profit
profit <- revenue - expenses
profit

#profit tax
tax <- round(profit * 0.3, 2)
tax

#profit after tax
profit.after.tax <- profit - tax
profit.after.tax


#profit margin for each month
profit.margin <- round(profit.after.tax / revenue, 2) * 100
profit.margin

#good month 
mean_pat <- mean(profit.after.tax)
mean_pat

good.months <- profit.after.tax > mean_pat
good.months

bad.months <- !good.months
bad.months

#best month
best.month <- profit.after.tax == max(profit.after.tax)
best.month

rep(best.month, 12)

#worst month
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

#units of thousands
revenue.1000 <- round(revenue / 1000)
expenses.1000 <- round(expenses / 1000)
profit.1000 <- round(expenses / 1000)
profit.after.tax.1000 <- round(profit.after.tax / 1000)

#output
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month

#matrices
m <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

m
