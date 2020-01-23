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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                 country                        perdiar6    ever_swasted   n_cell     n  outcome_variable 
----------------------------  ----------------------  -----------------------------  ---------  -------------  -------  ----  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       80   263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                     1        5   263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       93   263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        5   263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       78   263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        2   263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                     0      212   233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                     1        4   233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                     0       53   246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                     1        6   246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      124   246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        4   246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                    0       56   246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                    1        3   246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                     0       81   239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                     1        2   239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       75   239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        1   239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                    0       80   239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                     0       88   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                     1        1   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       92   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        1   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                    0      118   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                    1        2   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      224   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        8   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       56   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        4   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0       10   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      111   261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        2   261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       97   261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        5   261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       45   261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        1   261  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       0%                     0      278   377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       0%                     1       62   377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       (0%, 5%]               0       31   377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       (0%, 5%]               1        4   377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       >5%                    0        2   377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       >5%                    1        0   377  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                     0      146   599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       11   599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      169   599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       13   599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      230   599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       30   599  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      209   687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                     1        4   687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      249   687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       10   687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      210   687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        5   687  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      352   754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       12   754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      170   754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        3   754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      212   754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        5   754  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                     0       83   268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                     1       10   268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       52   268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       10   268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                    0       96   268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                    1       17   268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                     0      115   215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                     1        0   215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                    0       57   215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                    1        0   215  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                     0       81   262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                     1        3   262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       95   262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        3   262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       79   262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        1   262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                     0      213   233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                     1        3   233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                     0       56   244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                     1        3   244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      125   244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        2   244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                    0       56   244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                    1        2   244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                     0       81   237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                     1        0   237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       75   237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        1   237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                    0       80   237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                     0       89   302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                     1        0   302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       93   302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        0   302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                    0      119   302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                    1        1   302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      229   301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        2   301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       59   301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        1   301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0       10   301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      112   261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        1   261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      100   261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        2   261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       46   261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        0   261  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       0%                     0      320   375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       0%                     1       18   375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       (0%, 5%]               0       33   375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       (0%, 5%]               1        2   375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       >5%                    0        2   375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       >5%                    1        0   375  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                     0      151   581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                     1        1   581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      172   581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1        3   581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      249   581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    1        5   581  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                     0      210   683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                     1        2   683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      256   683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1        2   683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      211   683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        2   683  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      361   749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1        1   749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      172   749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        0   749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      215   749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        0   749  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                     0       92   267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                     1        1   267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       57   267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1        4   267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                    0      109   267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                    1        4   267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                     0      115   215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                     1        0   215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                    0       57   215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                    1        0   215  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       69   240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                     1        2   240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       90   240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        2   240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       76   240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        1   240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                     0      189   207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                     1        1   207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                     0       47   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                     1        3   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      124   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        2   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                    0       58   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                    1        1   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                     0       78   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                     1        2   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       76   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        0   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                    0       79   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                     0       66   270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                     1        1   270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       86   270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        1   270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                    0      115   270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                    1        1   270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      187   259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        7   259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       53   259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        3   259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        9   259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      103   245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        1   245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       93   245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        3   245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       44   245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        1   245  ever_swasted     
6-24 months                   ki1000109-EE            PAKISTAN                       0%                     0      288   374  ever_swasted     
6-24 months                   ki1000109-EE            PAKISTAN                       0%                     1       49   374  ever_swasted     
6-24 months                   ki1000109-EE            PAKISTAN                       (0%, 5%]               0       33   374  ever_swasted     
6-24 months                   ki1000109-EE            PAKISTAN                       (0%, 5%]               1        2   374  ever_swasted     
6-24 months                   ki1000109-EE            PAKISTAN                       >5%                    0        2   374  ever_swasted     
6-24 months                   ki1000109-EE            PAKISTAN                       >5%                    1        0   374  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                     0      119   542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       10   542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      160   542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       12   542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      215   542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       26   542  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      159   615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                     1        2   615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      242   615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1        8   615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      201   615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        3   615  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      334   730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       11   730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      166   730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        4   730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      210   730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        5   730  ever_swasted     
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                     0       77   252  ever_swasted     
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                     1        9   252  ever_swasted     
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       52   252  ever_swasted     
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1        7   252  ever_swasted     
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                    0       94   252  ever_swasted     
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                    1       13   252  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           0%                     0      115   215  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           0%                     1        0   215  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           >5%                    0       57   215  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           >5%                    1        0   215  ever_swasted     


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/9a78e143-aa3a-4e47-be48-6c86d606e7b0/692030d0-32bc-4c3f-bd2c-df79b861a805/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a78e143-aa3a-4e47-be48-6c86d606e7b0/692030d0-32bc-4c3f-bd2c-df79b861a805/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a78e143-aa3a-4e47-be48-6c86d606e7b0/692030d0-32bc-4c3f-bd2c-df79b861a805/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a78e143-aa3a-4e47-be48-6c86d606e7b0/692030d0-32bc-4c3f-bd2c-df79b861a805/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0%                   NA                0.0700637   0.0301029   0.1100245
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   (0%, 5%]             NA                0.0714286   0.0339814   0.1088757
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   >5%                  NA                0.1153846   0.0765181   0.1542511
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   0%                   NA                0.1075269   0.0444494   0.1706044
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   (0%, 5%]             NA                0.1612903   0.0695682   0.2530124
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   >5%                  NA                0.1504425   0.0844032   0.2164817
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0%                   NA                0.0775194   0.0313304   0.1237083
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   (0%, 5%]             NA                0.0697674   0.0316602   0.1078746
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   >5%                  NA                0.1078838   0.0686799   0.1470877
6-24 months                   ki1114097-CMIN        BANGLADESH   0%                   NA                0.1046512   0.0398280   0.1694744
6-24 months                   ki1114097-CMIN        BANGLADESH   (0%, 5%]             NA                0.1186441   0.0359672   0.2013210
6-24 months                   ki1114097-CMIN        BANGLADESH   >5%                  NA                0.1214953   0.0594697   0.1835210


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0901503   0.0671959   0.1131046
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   NA                   NA                0.1380597   0.0966822   0.1794372
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months                   ki1114097-CMIN        BANGLADESH   NA                   NA                0.1150794   0.0756007   0.1545580


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0%                   0%                1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   (0%, 5%]             0%                1.019481   0.4698233   2.212195
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   >5%                  0%                1.646853   0.8491455   3.193947
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   0%                   0%                1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   (0%, 5%]             0%                1.500000   0.6626209   3.395607
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   >5%                  0%                1.399115   0.6724434   2.911059
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0%                   0%                1.000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   (0%, 5%]             0%                0.900000   0.4010507   2.019695
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   >5%                  0%                1.391701   0.6925462   2.796683
6-24 months                   ki1114097-CMIN        BANGLADESH   0%                   0%                1.000000   1.0000000   1.000000
6-24 months                   ki1114097-CMIN        BANGLADESH   (0%, 5%]             0%                1.133710   0.4462586   2.880165
6-24 months                   ki1114097-CMIN        BANGLADESH   >5%                  0%                1.160955   0.5202490   2.590716


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0%                   NA                0.0200866   -0.0157838   0.0559569
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   0%                   NA                0.0305328   -0.0235919   0.0846575
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0%                   NA                0.0110415   -0.0300806   0.0521636
6-24 months                   ki1114097-CMIN        BANGLADESH   0%                   NA                0.0104282   -0.0433542   0.0642106


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0%                   NA                0.2228120   -0.2910721   0.5321553
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH   0%                   NA                0.2211566   -0.2814419   0.5266294
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0%                   NA                0.1246770   -0.4860956   0.4844273
6-24 months                   ki1114097-CMIN        BANGLADESH   0%                   NA                0.0906175   -0.5190155   0.4555838
