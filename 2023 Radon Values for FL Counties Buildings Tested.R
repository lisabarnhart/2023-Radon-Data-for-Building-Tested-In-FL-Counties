> View(Radon_2023_)
> data<-read.csv(file.choose(Radon_2023_), stringsAsFactors = FALSE, header = TRUE
+ colnames(data)
Error: unexpected symbol in:
"data<-read.csv(file.choose(Radon_2023_), stringsAsFactors = FALSE, header = TRUE
colnames"
> data <- read.csv(file.choose(), stringsAsFactors = FALSE, header = TRUE)
Error in make.names(col.names, unique = TRUE) : 
  invalid multibyte string at '<d0><cf><e0><a1><b1><1a><e1>'
In addition: Warning messages:
1: In read.table(file = file, header = header, sep = sep, quote = quote,  :
  line 1 appears to contain embedded nulls
2: In read.table(file = file, header = header, sep = sep, quote = quote,  :
  line 2 appears to contain embedded nulls
3: In read.table(file = file, header = header, sep = sep, quote = quote,  :
  line 3 appears to contain embedded nulls
4: In read.table(file = file, header = header, sep = sep, quote = quote,  :
  line 4 appears to contain embedded nulls
5: In read.table(file = file, header = header, sep = sep, quote = quote,  :
  line 5 appears to contain embedded nulls
> data <- read.csv(file.choose(), stringsAsFactors = FALSE, header = TRUE)
> colnames(data)
[1] "StateFIPS"    "State"        "CountyFIPS"   "County"       "Year"        
[6] "Value"        "Data.Comment"
> data$Value <- as.numeric(gsub(",","", data$Value))
> summary(data$Value)
   Min. 1st Qu.  Median    Mean 
      1       9      82     321 
3rd Qu.    Max. 
    229    1934 
> top_5_counties <- data[order(-data$Value), ][1:5]
> print(top_5_counties)
   StateFIPS   State CountyFIPS
5         12 Florida      12011
10        12 Florida      12021
37        12 Florida      12099
31        12 Florida      12086
24        12 Florida      12071
35        12 Florida      12095
25        12 Florida      12073
19        12 Florida      12057
13        12 Florida      12031
1         12 Florida      12001
39        12 Florida      12103
42        12 Florida      12115
28        12 Florida      12081
29        12 Florida      12083
4         12 Florida      12009
43        12 Florida      12117
47        12 Florida      12127
38        12 Florida      12101
23        12 Florida      12069
40        12 Florida      12105
7         12 Florida      12015
3         12 Florida      12005
44        12 Florida      12109
16        12 Florida      12039
33        12 Florida      12089
36        12 Florida      12097
2         12 Florida      12003
14        12 Florida      12033
9         12 Florida      12019
48        12 Florida      12129
30        12 Florida      12085
20        12 Florida      12061
46        12 Florida      12119
22        12 Florida      12065
45        12 Florida      12111
34        12 Florida      12091
41        12 Florida      12107
26        12 Florida      12075
32        12 Florida      12087
18        12 Florida      12053
11        12 Florida      12023
8         12 Florida      12017
17        12 Florida      12051
27        12 Florida      12079
15        12 Florida      12035
21        12 Florida      12063
6         12 Florida      12013
12        12 Florida      12027
49        12 Florida      12133
         County Year
5       Broward 2023
10      Collier 2023
37   Palm Beach 2023
31   Miami-Dade 2023
24          Lee 2023
35       Orange 2023
25         Leon 2023
19 Hillsborough 2023
13        Duval 2023
1       Alachua 2023
39     Pinellas 2023
42     Sarasota 2023
28      Manatee 2023
29       Marion 2023
4       Brevard 2023
43     Seminole 2023
47      Volusia 2023
38        Pasco 2023
23         Lake 2023
40         Polk 2023
7     Charlotte 2023
3           Bay 2023
44    St. Johns 2023
16      Gadsden 2023
33       Nassau 2023
36      Osceola 2023
2         Baker 2023
14     Escambia 2023
9          Clay 2023
48      Wakulla 2023
30       Martin 2023
20 Indian River 2023
46       Sumter 2023
22    Jefferson 2023
45    St. Lucie 2023
34     Okaloosa 2023
41       Putnam 2023
26         Levy 2023
32       Monroe 2023
18     Hernando 2023
11     Columbia 2023
8        Citrus 2023
17       Hendry 2023
27      Madison 2023
15      Flagler 2023
21      Jackson 2023
6       Calhoun 2023
12       DeSoto 2023
49   Washington 2023
> top_5_counties <- data[order(-data$Value), c("County","Year","Value")][1:5,]
> print(top_5_counties)
       County Year Value
5     Broward 2023  1934
10    Collier 2023  1743
37 Palm Beach 2023  1730
31 Miami-Dade 2023  1597
24        Lee 2023  1292
> barplot(
+ top_5_counties$Value
+ names.arg = top_5_counties$County
Error: unexpected symbol in:
"top_5_counties$Value
names.arg"
> + names.arg = top_5_counties$County,
Error: unexpected ',' in "+ names.arg = top_5_counties$County,"
> names.arg=top_5_counties$County,
Error: unexpected ',' in "names.arg=top_5_counties$County,"
> + names.arg = top_5_counties$County, main ="Top 5 Counties by Value", col= "skyblue",las = 2, ylab = "Value")
Error: unexpected ',' in "+ names.arg = top_5_counties$County,"
> barplot(
+     top_5_counties$Value,
+     names.arg = top_5_counties$County,
+     main = "Top 5 Counties by Value",
+     col = "skyblue",
+     las = 2,  # Rotate labels for readability
+     ylab = "Value"
+ )
> 
> main = "Top 5 Counties with Highest Radon Number of Buildings Tested",
Error: unexpected ',' in "main = "Top 5 Counties with Highest Radon Number of Buildings Tested","
> > barplot(
Error: unexpected '>' in ">"
> barplot(
+     top_5_counties$Value,
+     names.arg = top_5_counties$County,
+     main = "Top 5 Counties with Highest Radon Number of Buildings Tested",
+     col = "skyblue",
+     las = 2,  # Rotate labels for readability
+     ylab = "Value"
+ )
> 
> hist(
+ data$Value
+ main = "Distribution of Radon Values for Buidlings Tested Across Counties"
Error: unexpected symbol in:
"data$Value
main"
> hist(
+     data$Value,
+     main = "Distribution of Radon Values For Buildings Tested Across Counties",
+     xlab = "Radon Values",
+     col = "lightgreen",
+     border = "black",
+     breaks = 10
+ )
> 
> # Calculate percentages for the top 5 counties
> top_5_percentages <- round(100 * top_5_counties$Value / sum(top_5_counties$Value), 1)
> 
> # Create labels for the pie chart
> labels <- paste(top_5_counties$County, "(", top_5_percentages, "%)", sep = "")
> 
> # Draw the pie chart
> pie(
+     top_5_counties$Value,
+     labels = labels,
+     main = "Proportion of Radon Values in Top 5 Counties",
+     col = rainbow(length(top_5_counties$County))
+ )
> 
> boxplot(
+     data$Value,
+     main = "Boxplot of Radon Values Across Counties",
+     ylab = "Radon Values",
+     col = "lightblue",
+     border = "darkblue",
+     horizontal = FALSE
+ )
> 
> png("top_5_counties_bar.png")
> barplot(
+     top_5_counties$Value,
+     names.arg = top_5_counties$County,
+     main = "Top 5 Counties by Value",
+     col = "skyblue",
+     las = 2,
+     ylab = "Value"
+ )
> dev.off()
RStudioGD 
        2 
> 
> png("radon_histogram.png")
> hist(
+     data$Value,
+     main = "Distribution of Radon Values For Buildings Tested Across Counties",
+     xlab = "Radon Values",
+     col = "lightgreen",
+     border = "black",
+     breaks = 10
+ )
> dev.off()
RStudioGD 
        2 
> 
> png("top_5_counties_pie.png")
> pie(
+     top_5_counties$Value,
+     labels = labels,
+     main = "Proportion of Radon Values in Top 5 Counties",
+     col = rainbow(length(top_5_counties$County))
+ )
> dev.off()
RStudioGD 
        2 
> 
> png("radon_boxplot.png")
> boxplot(
+     data$Value,
+     main = "Boxplot of Radon Values Across Counties",
+     ylab = "Radon Values",
+     col = "lightblue",
+     border = "darkblue",
+     horizontal = FALSE
+ )
> dev.off()
RStudioGD 
        2 
> 
> getwd()
[1] "/Users/lisabarnhart/Downloads