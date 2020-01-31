---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_wasted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       59     213  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       19     213  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       46     213  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       24     213  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       44     213  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       21     213  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0       55     232  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        8     232  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       81     232  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        9     232  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       38     220  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       25     220  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       34     220  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       42     220  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       44     220  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       37     220  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       39     225  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       14     225  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       66     225  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       30     225  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       50     225  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       26     225  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0       87     301  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3     301  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       92     301  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       12     301  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       95     301  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       12     301  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       79     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       16     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      116     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       32     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       53     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       16     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        7     216  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4     216  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     216  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       10     216  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      124     216  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       17     216  ever_wasted      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       69     373  ever_wasted      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       89     373  ever_wasted      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       38     373  ever_wasted      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       68     373  ever_wasted      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       38     373  ever_wasted      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       71     373  ever_wasted      
0-24 months   ki1000108-IRC              INDIA                          High                  0       41     410  ever_wasted      
0-24 months   ki1000108-IRC              INDIA                          High                  1       83     410  ever_wasted      
0-24 months   ki1000108-IRC              INDIA                          Low                   0       50     410  ever_wasted      
0-24 months   ki1000108-IRC              INDIA                          Low                   1       97     410  ever_wasted      
0-24 months   ki1000108-IRC              INDIA                          Medium                0       50     410  ever_wasted      
0-24 months   ki1000108-IRC              INDIA                          Medium                1       89     410  ever_wasted      
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        7     377  ever_wasted      
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        8     377  ever_wasted      
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      129     377  ever_wasted      
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1      200     377  ever_wasted      
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       18     377  ever_wasted      
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1       15     377  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      209    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1      113    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      360    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      322    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      316    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      193    1513  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       27     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       14     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      172     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1      160     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       22     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       23     418  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      106     624  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       72     624  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      106     624  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1      122     624  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      114     624  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1      104     624  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      166     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       69     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      131     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       83     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      157     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       94     700  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      167     758  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       87     758  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      164     758  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       78     758  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      177     758  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       85     758  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      474    2386  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      147    2386  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       63    2386  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       19    2386  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1284    2386  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      399    2386  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0      105     282  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1       13     282  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       65     282  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1       11     282  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       82     282  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        6     282  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       39     683  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       45     683  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      194     683  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      286     683  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       47     683  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       72     683  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2156   16898  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      685   16898  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     4521   16898  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1579   16898  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     5885   16898  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     2072   16898  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5828   13926  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1727   13926  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2223   13926  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      703   13926  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2580   13926  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      865   13926  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      218    1322  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       62    1322  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      465    1322  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1      162    1322  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      300    1322  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1      115    1322  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      596    5844  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          High                  1      197    5844  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0     1175    5844  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      776    5844  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0     2127    5844  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      973    5844  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      727    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      441    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      496    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      405    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      593    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      383    3045  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      287     814  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       11     814  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      235     814  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       26     814  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      227     814  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       28     814  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     6819   26922  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     2165   26922  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7049   26922  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2685   26922  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6107   26922  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2097   26922  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0     1387    5420  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      514    5420  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1160    5420  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      626    5420  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1190    5420  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      543    5420  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       64     213  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14     213  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       53     213  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       17     213  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       48     213  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17     213  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0       58     232  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        5     232  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0       83     232  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        7     232  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       45     220  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       18     220  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       47     220  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       29     220  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       58     220  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       23     220  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       41     225  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       12     225  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       80     225  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       16     225  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       59     225  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       17     225  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0       88     301  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     301  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0      100     301  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4     301  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0      102     301  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5     301  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       85     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       10     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      133     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       15     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       59     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       10     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0       11     216  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0     216  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       61     216  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        3     216  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      132     216  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        9     216  ever_wasted      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       78     368  ever_wasted      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       79     368  ever_wasted      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       51     368  ever_wasted      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       53     368  ever_wasted      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       49     368  ever_wasted      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       58     368  ever_wasted      
0-6 months    ki1000108-IRC              INDIA                          High                  0       52     410  ever_wasted      
0-6 months    ki1000108-IRC              INDIA                          High                  1       72     410  ever_wasted      
0-6 months    ki1000108-IRC              INDIA                          Low                   0       69     410  ever_wasted      
0-6 months    ki1000108-IRC              INDIA                          Low                   1       78     410  ever_wasted      
0-6 months    ki1000108-IRC              INDIA                          Medium                0       66     410  ever_wasted      
0-6 months    ki1000108-IRC              INDIA                          Medium                1       73     410  ever_wasted      
0-6 months    ki1000109-EE               PAKISTAN                       High                  0       12     377  ever_wasted      
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        3     377  ever_wasted      
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0      216     377  ever_wasted      
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1      113     377  ever_wasted      
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0       25     377  ever_wasted      
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        8     377  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0      260    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       62    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0      505    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1      174    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0      409    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       95    1505  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       38     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        3     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      264     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       68     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       38     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        7     418  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  0      120     622  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  1       57     622  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   0      141     622  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   1       87     622  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                0      139     622  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                1       78     622  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0      184     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       51     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0      157     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       57     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0      178     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       73     700  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      184     758  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       70     758  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      184     758  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       58     758  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      195     758  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       67     758  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      530    2386  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       91    2386  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       74    2386  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        8    2386  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1449    2386  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      234    2386  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  0      107     265  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  1        5     265  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       73     265  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        1     265  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       76     265  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     265  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       48     683  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       36     683  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      308     683  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      172     683  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       70     683  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       49     683  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0     2163   16895  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      678   16895  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     4570   16895  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1528   16895  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     5942   16895  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     2014   16895  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     6132   13833  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1375   13833  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2399   13833  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      508   13833  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2798   13833  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      621   13833  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0      179    1051  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       36    1051  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0      405    1051  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1      100    1051  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0      256    1051  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       75    1051  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      582    5626  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          High                  1      168    5626  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0     1385    5626  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      508    5626  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0     2246    5626  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      737    5626  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0      857    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      311    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0      700    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      200    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0      770    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      206    3044  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0       87     267  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0     267  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0       90     267  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        2     267  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0       86     267  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        2     267  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     7459   26825  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1486   26825  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7835   26825  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1865   26825  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6804   26825  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1376   26825  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0     1591    5077  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1      191    5077  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1475    5077  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      191    5077  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1463    5077  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      166    5077  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       63     195  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        8     195  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       54     195  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       11     195  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       51     195  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        8     195  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0       71     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        0     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0       52     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        3     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       77     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        3     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       48     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       10     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       50     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       22     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       54     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       23     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       47     220  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        5     220  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       77     220  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       16     220  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       62     220  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       13     220  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0       80     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        1     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       83     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       10     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       88     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       66     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        8     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      108     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       21     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       48     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        5     202  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4     202  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     202  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      120     202  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       11     202  ever_wasted      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0      129     373  ever_wasted      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       29     373  ever_wasted      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       70     373  ever_wasted      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       36     373  ever_wasted      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       75     373  ever_wasted      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       34     373  ever_wasted      
6-24 months   ki1000108-IRC              INDIA                          High                  0       86     410  ever_wasted      
6-24 months   ki1000108-IRC              INDIA                          High                  1       38     410  ever_wasted      
6-24 months   ki1000108-IRC              INDIA                          Low                   0      103     410  ever_wasted      
6-24 months   ki1000108-IRC              INDIA                          Low                   1       44     410  ever_wasted      
6-24 months   ki1000108-IRC              INDIA                          Medium                0       94     410  ever_wasted      
6-24 months   ki1000108-IRC              INDIA                          Medium                1       45     410  ever_wasted      
6-24 months   ki1000109-EE               PAKISTAN                       High                  0       10     371  ever_wasted      
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        5     371  ever_wasted      
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0      180     371  ever_wasted      
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1      143     371  ever_wasted      
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0       23     371  ever_wasted      
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1       10     371  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      233    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       69    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      398    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      216    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      333    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      140    1389  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       27     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       13     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      209     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1      111     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       23     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       19     402  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      126     542  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       31     542  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      117     542  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       80     542  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      140     542  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       48     542  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      181     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       30     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      145     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       40     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      190     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       29     615  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      222     730  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       24     730  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      199     730  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       35     730  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      213     730  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       37     730  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      438    2011  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       76    2011  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       58    2011  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       14    2011  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1192    2011  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      233    2011  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0      101     266  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1       10     266  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       61     266  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1       10     266  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       81     266  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     266  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       45     587  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       26     587  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      201     587  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      213     587  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       63     587  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       39     587  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2760   16598  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1       15   16598  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     5904   16598  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       68   16598  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     7767   16598  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       84   16598  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5359   10800  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      466   10800  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2026   10800  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      252   10800  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2379   10800  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      318   10800  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      213    1198  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       29    1198  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      495    1198  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       74    1198  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      337    1198  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       50    1198  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          High                  0      713    5479  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          High                  1       37    5479  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0     1447    5479  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1      349    5479  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0     2625    5479  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1      308    5479  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      852    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      202    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      551    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      296    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      657    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      251    2809  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      282     803  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       11     803  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      235     803  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     803  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      224     803  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       27     803  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     5215   17280  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      879   17280  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     4739   17280  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1057   17280  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     4494   17280  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      896   17280  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0     1517    5416  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      381    5416  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1273    5416  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      513    5416  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1285    5416  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      447    5416  ever_wasted      


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/58f3ce70-f178-46ff-a032-64c409270f0d/1686e142-f71c-4906-82e0-32fa0ca8f082/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/58f3ce70-f178-46ff-a032-64c409270f0d/1686e142-f71c-4906-82e0-32fa0ca8f082/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/58f3ce70-f178-46ff-a032-64c409270f0d/1686e142-f71c-4906-82e0-32fa0ca8f082/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/58f3ce70-f178-46ff-a032-64c409270f0d/1686e142-f71c-4906-82e0-32fa0ca8f082/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2435897   0.1481057   0.3390738
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3428571   0.2314001   0.4543142
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3230769   0.2091213   0.4370326
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3968254   0.2757410   0.5179098
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5526316   0.4405895   0.6646736
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4567901   0.3480632   0.5655170
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2641509   0.1451918   0.3831101
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3125000   0.2195732   0.4054268
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3421053   0.2352080   0.4490025
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1684211   0.0930450   0.2437971
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2162162   0.1497874   0.2826450
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2318841   0.1321440   0.3316241
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5632911   0.4858512   0.6407311
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6415094   0.5500942   0.7329247
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6513761   0.5617959   0.7409564
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6693548   0.5864506   0.7522591
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6598639   0.5831855   0.7365424
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6402878   0.5604081   0.7201674
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.5333333   0.2805305   0.7861362
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.6079027   0.5550776   0.6607279
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.4545455   0.2844331   0.6246578
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3509317   0.2921897   0.4096736
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4721408   0.3963949   0.5478866
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3791749   0.3230808   0.4352689
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3414634   0.1961391   0.4867877
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4819277   0.4281149   0.5357405
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5111111   0.3648851   0.6573371
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4044944   0.3323362   0.4766526
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.5350877   0.4702949   0.5998805
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.4770642   0.4107081   0.5434203
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2936170   0.2353483   0.3518857
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3878505   0.3225205   0.4531805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3745020   0.3145834   0.4344206
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3425197   0.2841211   0.4009182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3223140   0.2633916   0.3812365
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3244275   0.2677019   0.3811531
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2367150   0.2032763   0.2701537
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2317073   0.1403664   0.3230482
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2370766   0.2167539   0.2573994
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1101695   0.0535765   0.1667625
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.1447368   0.0654954   0.2239782
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.0681818   0.0154251   0.1209386
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5357143   0.4289844   0.6424441
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5958333   0.5519006   0.6397661
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6050420   0.5171477   0.6929364
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2411123   0.1802186   0.3020060
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2588525   0.1967465   0.3209584
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2603996   0.2029486   0.3178507
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2285903   0.2191210   0.2380596
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2402597   0.2247787   0.2557408
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2510885   0.2366076   0.2655695
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2214286   0.1727767   0.2700804
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2583732   0.2240968   0.2926496
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2771084   0.2340310   0.3201859
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2484237   0.2183469   0.2785005
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3977447   0.3760253   0.4194642
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3138710   0.2975336   0.3302084
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3775685   0.3497623   0.4053747
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4495006   0.4170142   0.4819869
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3924180   0.3617793   0.4230568
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0369128   0.0154923   0.0583332
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0996169   0.0632610   0.1359728
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1098039   0.0714070   0.1482009
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2409840   0.2308036   0.2511643
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2758373   0.2657492   0.2859253
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2556070   0.2448979   0.2663162
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2703840   0.2458365   0.2949315
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3505039   0.3260664   0.3749415
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3133295   0.2893396   0.3373193
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1794872   0.0941217   0.2648526
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2428571   0.1421674   0.3435469
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2615385   0.1544494   0.3686275
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2857143   0.1739073   0.3975213
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3815789   0.2721166   0.4910413
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2839506   0.1855296   0.3823716
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2264151   0.1134917   0.3393385
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1666667   0.0919507   0.2413826
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2236842   0.1297886   0.3175798
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434517   0.1670747
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1013514   0.0526519   0.1500508
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1449275   0.0617325   0.2281226
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5031847   0.4248687   0.5815007
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5096154   0.4134072   0.6058236
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5420561   0.4475248   0.6365873
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.5806452   0.4936863   0.6676040
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.5306122   0.4498378   0.6113867
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5251799   0.4420629   0.6082968
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1925466   0.1614318   0.2236614
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2562592   0.1962736   0.3162448
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1884921   0.1453936   0.2315905
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3220339   0.2531424   0.3909254
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3815789   0.3184739   0.4446840
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3594470   0.2955526   0.4233414
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2170213   0.1642800   0.2697626
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2663551   0.2070865   0.3256238
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2908367   0.2346130   0.3470603
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2755906   0.2206058   0.3305753
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2396694   0.1858505   0.2934883
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2557252   0.2028639   0.3085865
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1465378   0.1187176   0.1743580
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0975610   0.0333249   0.1617971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1390374   0.1225043   0.1555706
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4285714   0.3226658   0.5344771
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3583333   0.3154050   0.4012617
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4117647   0.3232750   0.5002544
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2386484   0.1777317   0.2995650
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2505740   0.1871663   0.3139816
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2531423   0.1949776   0.3113070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1831624   0.1744122   0.1919126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1747506   0.1609454   0.1885558
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1816321   0.1687084   0.1945557
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1674419   0.1175103   0.2173734
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1980198   0.1632466   0.2327930
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2265861   0.1814667   0.2717055
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2240000   0.1941592   0.2538408
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2683571   0.2483945   0.2883197
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2470667   0.2315876   0.2625458
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2662671   0.2409143   0.2916199
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2222222   0.1950566   0.2493878
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2110656   0.1854606   0.2366705
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1661263   0.1572971   0.1749556
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1922680   0.1832371   0.2012990
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1682152   0.1593012   0.1771291
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1071829   0.0887371   0.1256288
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1146459   0.0971763   0.1321154
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1019030   0.0860074   0.1177986
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389379   0.1864142
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1692308   0.0778431   0.2606185
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1355932   0.0480109   0.2231756
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1724138   0.0749646   0.2698630
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3055556   0.1988966   0.4122145
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2987013   0.1962248   0.4011778
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0961538   0.0158445   0.1764632
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1720430   0.0951621   0.2489239
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1733333   0.0874690   0.2591977
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1081081   0.0372226   0.1789936
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1627907   0.0989607   0.2266207
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1428571   0.0510299   0.2346844
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1835443   0.1231022   0.2439864
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3396226   0.2493466   0.4298987
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.3119266   0.2248380   0.3990152
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3064516   0.2252084   0.3876948
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2993197   0.2251977   0.3734418
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3237410   0.2458609   0.4016211
6-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.3333333   0.0944520   0.5722147
6-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.4427245   0.3884826   0.4969663
6-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3030303   0.1460203   0.4600403
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2284768   0.1563701   0.3005835
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3517915   0.3012162   0.4023669
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2959831   0.2459568   0.3460093
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3250000   0.1796709   0.4703291
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3468750   0.2946596   0.3990904
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4523810   0.3016662   0.6030957
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1974522   0.1351267   0.2597777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4060914   0.3374497   0.4747330
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2553191   0.1929317   0.3177066
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1421801   0.0950197   0.1893405
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2162162   0.1568475   0.2755850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1324201   0.0874927   0.1773475
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0975610   0.0604566   0.1346654
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1495726   0.1038446   0.1953007
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1480000   0.1039520   0.1920480
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1478599   0.1171658   0.1785540
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1944444   0.1030046   0.2858843
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1635088   0.1443022   0.1827153
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3661972   0.2540409   0.4783535
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5144928   0.4663084   0.5626771
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3823529   0.2879641   0.4767418
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0054054   0.0028193   0.0079915
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0113865   0.0076947   0.0150783
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0106993   0.0071353   0.0142632
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0800000   0.0730328   0.0869672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1106234   0.0977421   0.1235046
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1179088   0.1057369   0.1300807
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1198347   0.0788997   0.1607697
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1300527   0.1024037   0.1577017
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1291990   0.0957669   0.1626310
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0493333   0.0338330   0.0648337
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1943207   0.1760197   0.2126217
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1050119   0.0939161   0.1161078
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1916509   0.1678846   0.2154171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3494687   0.3173527   0.3815848
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2764317   0.2473369   0.3055266
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0375427   0.0157637   0.0593217
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0926641   0.0573288   0.1279994
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1075697   0.0692154   0.1459240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1442402   0.1345402   0.1539403
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1823671   0.1720995   0.1926348
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1662338   0.1556997   0.1767679
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2007376   0.1790945   0.2223808
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2872340   0.2640918   0.3103763
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2580831   0.2356638   0.2805024


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3004695   0.2387555   0.3621835
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4727273   0.4066048   0.5388497
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3111111   0.2504855   0.3717368
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.5915119   0.5418269   0.6411970
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367980   0.2197367   0.2538593
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1063830   0.0703329   0.1424331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5900439   0.5531320   0.6269559
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2366078   0.2295489   0.2436667
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2564297   0.2328823   0.2799770
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3329911   0.3209071   0.3450751
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0798526   0.0612199   0.0984853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580418   0.2515722   0.2645113
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3105166   0.2961054   0.3249278
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2253521   0.1691098   0.2815944
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3181818   0.2564942   0.3798694
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2000000   0.1476178   0.2523822
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1121795   0.0771053   0.1472536
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395641   0.1256566   0.1534717
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3762811   0.3399226   0.4126397
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1810164   0.1745999   0.1874330
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2007612   0.1765324   0.2249900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2511554   0.2398221   0.2624886
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762162   0.1705869   0.1818456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1079378   0.0980978   0.1177778
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1384615   0.0898601   0.1870630
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2657005   0.2053824   0.3260185
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1545455   0.1066715   0.2024194
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4258760   0.3754921   0.4762599
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606166   0.1445647   0.1766685
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4735945   0.4331684   0.5140207
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0959259   0.0903717   0.1014802
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1277129   0.1088047   0.1466210
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1266654   0.1178579   0.1354730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0772105   0.0587369   0.0956840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638889   0.1577625   0.1700152
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2475997   0.2340658   0.2611337


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.4075188   0.8458452   2.3421652
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3263158   0.7827719   2.2472876
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.3926316   0.9654581   2.0088108
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.1511111   0.7817170   1.6950594
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.1830357   0.6896436   2.0294157
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.2951128   0.7486128   2.2405670
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.2837838   0.7459916   2.2092752
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.3768116   0.7401066   2.5612665
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1388594   0.9342803   1.3882353
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1563756   0.9520238   1.4045916
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9858208   0.8318400   1.1683049
0-24 months   ki1000108-IRC              INDIA                          Medium               High              0.9565745   0.8023635   1.1404243
0-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.1398176   0.7039580   1.8455421
0-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.8522727   0.4658985   1.5590708
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.3453923   1.0848985   1.6684328
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0804806   0.8889771   1.3132378
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.4113597   0.9089697   2.1914220
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4968254   0.8963104   2.4996766
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.3228558   1.0662922   1.6411518
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1794088   0.9406400   1.4787858
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3209400   1.0182088   1.7136785
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2754778   0.9884731   1.6458147
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9410088   0.7328746   1.2082526
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9471791   0.7419434   1.2091869
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9788452   0.6439490   1.4879097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0015279   0.8489884   1.1814745
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.3137652   0.6201163   2.7833150
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.6188811   0.2444853   1.5666127
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1122222   0.8993568   1.3754699
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1294118   0.8826111   1.4452242
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0735764   0.9282757   1.2416206
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0799933   0.9547857   1.2216201
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0510494   0.9735437   1.1347255
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0984215   1.0231294   1.1792543
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1668467   0.9027073   1.5082754
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2514574   0.9561492   1.6379721
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.6010740   1.4019430   1.8284895
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.2634501   1.1074506   1.4414243
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1905139   1.0737973   1.3199171
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0393294   0.9335564   1.1570866
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              2.6987113   1.3596842   5.3564220
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              2.9746881   1.5107766   5.8570996
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1446291   1.0844412   1.2081576
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0606806   1.0043410   1.1201806
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2963190   1.1579146   1.4512667
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1588314   1.0260137   1.3088424
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3530612   0.7199441   2.5429402
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.4571429   0.7779416   2.7293375
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.3355263   0.8221082   2.1695814
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.9938272   0.5892236   1.6762609
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              0.7361111   0.3764452   1.4394116
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              0.9879386   0.5147785   1.8960051
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.9628378   0.4508518   2.0562340
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.3768116   0.6056738   3.1297544
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0127799   0.7929680   1.2935241
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0772507   0.8527116   1.3609162
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              0.9138322   0.7381151   1.1313809
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.9044764   0.7273922   1.1246719
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.3308946   1.0770895   1.6445063
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9789427   0.8106640   1.1821527
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.1849030   0.9041716   1.5527974
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1161775   0.8451590   1.4741041
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.2273227   0.8827871   1.7063243
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.3401297   0.9823884   1.8281442
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.8696576   0.6440099   1.1743676
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9279171   0.6962100   1.2367392
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6657733   0.3355278   1.3210652
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9488159   0.7583912   1.1870544
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.8361111   0.6353271   1.1003494
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9607843   0.6924678   1.3330677
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0499714   0.9027541   1.2211963
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0607334   0.9368153   1.2010427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9540747   0.8699372   1.0463498
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9916450   0.9101982   1.0803798
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1826183   0.8366620   1.6716260
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.3532226   0.9454576   1.9368519
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.1980228   1.0284909   1.3954996
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.1029764   0.9519882   1.2779117
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8345838   0.7147850   0.9744610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.7926836   0.6793982   0.9248585
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1573605   1.0812987   1.2387726
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0125738   0.9456045   1.0842858
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0696278   0.8464163   1.3517034
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9507391   0.7495053   1.2060018
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.5019231   0.6429304   3.5085805
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2033898   0.4798121   3.0181545
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.7722222   0.9120387   3.4436823
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.7324675   0.8943738   3.3559164
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.7892473   0.6938814   4.6137653
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.8026666   0.6826280   4.7604357
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.5058139   0.7014183   3.2327009
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.3214286   0.5275576   3.3099202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.8503578   1.2118875   2.8251997
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.6994622   1.1036030   2.6170386
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9767275   0.6795510   1.4038632
6-24 months   ki1000108-IRC              INDIA                          Medium               High              1.0564180   0.7385243   1.5111474
6-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.3281734   0.6419550   2.7479255
6-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.9090909   0.3754460   2.2012389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5397253   1.0922242   2.1705744
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2954622   0.9396794   1.7859520
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0673077   0.6658545   1.7108027
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3919414   0.7969751   2.4310681
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              2.0566563   1.4376705   2.9421451
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2930679   0.8674842   1.9274412
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.5207207   0.9886497   2.3391414
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9313546   0.5794964   1.4968539
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.5331196   0.9411420   2.4974509
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5170000   0.9359475   2.4587799
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3150585   0.7865010   2.1988259
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1058356   0.8711703   1.4037122
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4049610   1.0199335   1.9353374
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0441176   0.7045446   1.5473566
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              2.1064959   1.3076211   3.3934332
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.9793646   1.1803730   3.3191918
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3827919   1.1956578   1.5992146
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.4738598   1.2876566   1.6869892
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0852676   0.7257688   1.6228387
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0781431   0.7023666   1.6549656
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              3.9389333   2.8374401   5.4680259
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.1286203   1.5280412   2.9652500
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8234655   1.5626611   2.1277974
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4423714   1.2258520   1.6971342
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              2.4682345   1.2327936   4.9417692
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              2.8652662   1.4502473   5.6609313
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2643292   1.1584892   1.3798388
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1524785   1.0515151   1.2631361
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.4308929   1.2536626   1.6331784
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2856740   1.1181006   1.4783622


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0568797   -0.0221673    0.1359268
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0759019   -0.0272321    0.1790358
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0469602   -0.0586804    0.1526007
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0367072   -0.0283745    0.1017888
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0479689   -0.0100847    0.1060225
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0132573   -0.0827910    0.0562765
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0581786   -0.1893941    0.3057514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0641377    0.0014335    0.1268420
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1298285   -0.0089938    0.2686507
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0730697    0.0116314    0.1345080
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0578116    0.0091476    0.1064755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0127044   -0.0601013    0.0346926
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0000830   -0.0286781    0.0288441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0037865   -0.0464720    0.0388989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0543296   -0.0454291    0.1540884
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0154861   -0.0085700    0.0395422
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0080174    0.0015209    0.0145140
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0350011   -0.0088032    0.0788054
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0845674    0.0561925    0.1129423
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0260440    0.0040486    0.0480394
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0429398    0.0212590    0.0646207
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0170578    0.0092382    0.0248773
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0401326    0.0202264    0.0600388
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0458649   -0.0256425    0.1173723
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0324675   -0.0631704    0.1281055
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0264151   -0.1238221    0.0709920
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0069163   -0.0452773    0.0591099
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0131196   -0.0461596    0.0723988
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0367427   -0.1096661    0.0361807
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0273870   -0.0081075    0.0628815
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0348793   -0.0239828    0.0937414
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0415502   -0.0028069    0.0859072
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0183346   -0.0626828    0.0260136
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0069737   -0.0307331    0.0167856
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0522903   -0.1511797    0.0465991
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0111297   -0.0132722    0.0355316
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0021460   -0.0080312    0.0037392
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0333193   -0.0120696    0.0787083
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0271554   -0.0008000    0.0551107
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0307218   -0.0501334   -0.0113102
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0100899    0.0033768    0.0168030
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0007548   -0.0139210    0.0154307
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0257855   -0.0361817    0.0877527
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0932867    0.0048956    0.1816778
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0583916   -0.0170578    0.1338410
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0347490   -0.0283117    0.0978098
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0818712    0.0311600    0.1325825
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0033045   -0.0646376    0.0712466
6-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0925427   -0.1419536    0.3270389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0774987    0.0127837    0.1422137
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0307214   -0.1075282    0.1689710
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0959057    0.0401741    0.1516374
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0187955   -0.0204853    0.0580763
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0339459    0.0015314    0.0663603
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0127567   -0.0140423    0.0395557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1073974    0.0017075    0.2130872
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0046560    0.0018460    0.0074661
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0159259    0.0107269    0.0211249
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0078781   -0.0289486    0.0447049
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0773321    0.0614558    0.0932084
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0749921    0.0547814    0.0952027
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0396678    0.0180010    0.0613346
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0196487    0.0116698    0.0276275
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0468621    0.0290458    0.0646784


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1893029   -0.1202708    0.4133295
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1605617   -0.0893379    0.3531330
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1509434   -0.2661054    0.4306184
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1789474   -0.2062972    0.4411597
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0784755   -0.0220119    0.1690826
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0202063   -0.1319179    0.0804803
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0983558   -0.4344899    0.4332743
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1545229    0.0008746    0.2845427
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2754736   -0.0885530    0.5177648
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1530051    0.0136800    0.2726494
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1645044    0.0140038    0.2920329
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0385197   -0.1926464    0.0956891
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0003506   -0.1287945    0.1147202
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0355932   -0.5254587    0.2969634
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0920773   -0.0939495    0.2464701
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0603516   -0.0385040    0.1497971
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0338850    0.0060418    0.0609482
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1364939   -0.0521715    0.2913296
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2539629    0.1638362    0.3343753
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0645272    0.0083921    0.1174845
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5377388    0.2173819    0.7269608
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0661047    0.0352468    0.0959757
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1292446    0.0624330    0.1912952
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2035256   -0.1830425    0.4637797
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1020408   -0.2548107    0.3574085
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1320755   -0.7398448    0.2633855
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0616541   -0.5401469    0.4283059
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0254107   -0.0964739    0.1337465
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0675539   -0.2106462    0.0586256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1245238   -0.0323145    0.2575339
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0977248   -0.0832298    0.2484508
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1606912   -0.0290410    0.3154410
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0712699   -0.2582395    0.0879167
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0499678   -0.2347294    0.1071465
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1389661   -0.4347283    0.0958262
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0445583   -0.0579116    0.1371029
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0118551   -0.0448934    0.0201385
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1659650   -0.0930525    0.3636038
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1081217   -0.0103802    0.2127252
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1304283   -0.2157800   -0.0510687
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0572586    0.0183069    0.0946648
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0069931   -0.1387937    0.1341165
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1862285   -0.4042934    0.5284290
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3510972   -0.0750115    0.6083067
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3778280   -0.3397954    0.7110768
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2432432   -0.3480406    0.5751754
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.3084644    0.0931235    0.4726718
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0106680   -0.2348875    0.2073952
6-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.2172996   -0.5818690    0.6127240
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2532840    0.0114829    0.4359381
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0863636   -0.3980277    0.4029221
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3269238    0.1102495    0.4908331
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1167600   -0.1635016    0.3295129
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2581301   -0.0291302    0.4652076
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0794232   -0.1033578    0.2319249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2267707   -0.0323725    0.4208645
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.4627607    0.1743600    0.6504214
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1660232    0.1107788    0.2178354
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0616864   -0.2757446    0.3098678
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.6105226    0.4716226    0.7129085
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2812453    0.2023550    0.3523331
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5137620    0.1790225    0.7120172
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1198901    0.0699602    0.1671394
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1892655    0.1139611    0.2581698
