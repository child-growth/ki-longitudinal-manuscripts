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

**Outcome Variable:** swasted

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

agecat      studyid                 country                        perdiar6    swasted   n_cell     n  outcome_variable 
----------  ----------------------  -----------------------------  ---------  --------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                0       64   215  swasted          
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                1        1   215  swasted          
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       82   215  swasted          
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        4   215  swasted          
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               0       61   215  swasted          
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               1        3   215  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                0       54    62  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                1        0    62  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0        6    62  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0    62  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               0        2    62  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               1        0    62  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          0%                0       11    45  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          0%                1        0    45  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       23    45  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        0    45  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          >5%               0       11    45  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          >5%               1        0    45  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          0%                0        8    26  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          0%                1        0    26  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0        9    26  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        1    26  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               0        8    26  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               1        0    26  swasted          
Birth       ki0047075b-MAL-ED       PERU                           0%                0       67   228  swasted          
Birth       ki0047075b-MAL-ED       PERU                           0%                1        0   228  swasted          
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       69   228  swasted          
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        0   228  swasted          
Birth       ki0047075b-MAL-ED       PERU                           >5%               0       92   228  swasted          
Birth       ki0047075b-MAL-ED       PERU                           >5%               1        0   228  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0       85   112  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        0   112  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       23   112  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        0   112  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        4   112  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   112  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       51   115  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   115  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       44   115  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0   115  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       20   115  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   115  swasted          
Birth       ki1000109-EE            PAKISTAN                       0%                0      158   177  swasted          
Birth       ki1000109-EE            PAKISTAN                       0%                1        6   177  swasted          
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]          0       11   177  swasted          
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]          1        0   177  swasted          
Birth       ki1000109-EE            PAKISTAN                       >5%               0        2   177  swasted          
Birth       ki1000109-EE            PAKISTAN                       >5%               1        0   177  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                0      147   572  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                1        3   572  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      156   572  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       15   572  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               0      231   572  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               1       20   572  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                0      155   532  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                1        5   532  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      202   532  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1        4   532  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%               0      162   532  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%               1        4   532  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      320   707  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       25   707  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      152   707  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        8   707  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      188   707  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       14   707  swasted          
Birth       ki1114097-CMIN          BANGLADESH                     0%                0        9    19  swasted          
Birth       ki1114097-CMIN          BANGLADESH                     0%                1        1    19  swasted          
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0        3    19  swasted          
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        0    19  swasted          
Birth       ki1114097-CMIN          BANGLADESH                     >5%               0        6    19  swasted          
Birth       ki1114097-CMIN          BANGLADESH                     >5%               1        0    19  swasted          
Birth       ki1114097-CONTENT       PERU                           0%                0        0     2  swasted          
Birth       ki1114097-CONTENT       PERU                           0%                1        0     2  swasted          
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          0        1     2  swasted          
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          1        0     2  swasted          
Birth       ki1114097-CONTENT       PERU                           >5%               0        1     2  swasted          
Birth       ki1114097-CONTENT       PERU                           >5%               1        0     2  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       71   241  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1        0   241  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       90   241  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        2   241  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       78   241  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1        0   241  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      192   209  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        0   209  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   209  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   209  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   209  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   209  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          0%                0       49   236  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          0%                1        1   236  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      124   236  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        3   236  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       57   236  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          >5%               1        2   236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       80   236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        0   236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       76   236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        0   236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               0       80   236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               1        0   236  swasted          
6 months    ki0047075b-MAL-ED       PERU                           0%                0       68   273  swasted          
6 months    ki0047075b-MAL-ED       PERU                           0%                1        0   273  swasted          
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       89   273  swasted          
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        0   273  swasted          
6 months    ki0047075b-MAL-ED       PERU                           >5%               0      116   273  swasted          
6 months    ki0047075b-MAL-ED       PERU                           >5%               1        0   273  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      188   254  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        2   254  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       54   254  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        1   254  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        9   254  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   254  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      105   247  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   247  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       96   247  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0   247  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       46   247  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   247  swasted          
6 months    ki1000109-EE            PAKISTAN                       0%                0      327   375  swasted          
6 months    ki1000109-EE            PAKISTAN                       0%                1       11   375  swasted          
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]          0       33   375  swasted          
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]          1        2   375  swasted          
6 months    ki1000109-EE            PAKISTAN                       >5%               0        2   375  swasted          
6 months    ki1000109-EE            PAKISTAN                       >5%               1        0   375  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0      127   537  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1        2   537  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      167   537  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1        2   537  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      237   537  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1        2   537  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      155   603  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1        2   603  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      245   603  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1        1   603  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      198   603  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1        2   603  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      341   715  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        0   715  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      167   715  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0   715  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      207   715  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        0   715  swasted          
6 months    ki1114097-CMIN          BANGLADESH                     0%                0       81   243  swasted          
6 months    ki1114097-CMIN          BANGLADESH                     0%                1        0   243  swasted          
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       56   243  swasted          
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        2   243  swasted          
6 months    ki1114097-CMIN          BANGLADESH                     >5%               0      101   243  swasted          
6 months    ki1114097-CMIN          BANGLADESH                     >5%               1        3   243  swasted          
6 months    ki1114097-CONTENT       PERU                           0%                0      115   215  swasted          
6 months    ki1114097-CONTENT       PERU                           0%                1        0   215  swasted          
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       43   215  swasted          
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        0   215  swasted          
6 months    ki1114097-CONTENT       PERU                           >5%               0       57   215  swasted          
6 months    ki1114097-CONTENT       PERU                           >5%               1        0   215  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       64   212  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1        0   212  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       83   212  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        0   212  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       65   212  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1        0   212  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      153   169  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        1   169  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       13   169  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   169  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   169  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   169  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          0%                0       47   227  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          0%                1        1   227  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      122   227  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        0   227  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       56   227  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          >5%               1        1   227  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       77   228  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          0%                1        0   228  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       75   228  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        0   228  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       76   228  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1        0   228  swasted          
24 months   ki0047075b-MAL-ED       PERU                           0%                0       51   201  swasted          
24 months   ki0047075b-MAL-ED       PERU                           0%                1        2   201  swasted          
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       64   201  swasted          
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        0   201  swasted          
24 months   ki0047075b-MAL-ED       PERU                           >5%               0       84   201  swasted          
24 months   ki0047075b-MAL-ED       PERU                           >5%               1        0   201  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      177   238  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        0   238  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       52   238  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        0   238  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        9   238  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   238  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       92   214  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   214  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       83   214  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0   214  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   214  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   214  swasted          
24 months   ki1000109-EE            PAKISTAN                       0%                0      149   168  swasted          
24 months   ki1000109-EE            PAKISTAN                       0%                1        4   168  swasted          
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          0       14   168  swasted          
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          1        0   168  swasted          
24 months   ki1000109-EE            PAKISTAN                       >5%               0        1   168  swasted          
24 months   ki1000109-EE            PAKISTAN                       >5%               1        0   168  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0      104   428  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1        3   428  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      124   428  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1        3   428  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0      190   428  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1        4   428  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      152   579  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1        1   579  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      227   579  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1        5   579  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      191   579  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1        3   579  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      274   514  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        3   514  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      106   514  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0   514  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      130   514  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        1   514  swasted          
24 months   ki1114097-CMIN          BANGLADESH                     0%                0       84   243  swasted          
24 months   ki1114097-CMIN          BANGLADESH                     0%                1        1   243  swasted          
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       58   243  swasted          
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        0   243  swasted          
24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       99   243  swasted          
24 months   ki1114097-CMIN          BANGLADESH                     >5%               1        1   243  swasted          
24 months   ki1114097-CONTENT       PERU                           0%                0       84   164  swasted          
24 months   ki1114097-CONTENT       PERU                           0%                1        0   164  swasted          
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       36   164  swasted          
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        0   164  swasted          
24 months   ki1114097-CONTENT       PERU                           >5%               0       44   164  swasted          
24 months   ki1114097-CONTENT       PERU                           >5%               1        0   164  swasted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/b00be4d1-09b7-4d7b-8f6b-d2eb10cc74e7/acd29cd4-2bd1-4a18-b5de-5901fe81e549/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b00be4d1-09b7-4d7b-8f6b-d2eb10cc74e7/acd29cd4-2bd1-4a18-b5de-5901fe81e549/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b00be4d1-09b7-4d7b-8f6b-d2eb10cc74e7/acd29cd4-2bd1-4a18-b5de-5901fe81e549/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b00be4d1-09b7-4d7b-8f6b-d2eb10cc74e7/acd29cd4-2bd1-4a18-b5de-5901fe81e549/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0724638   0.0450877   0.0998399
Birth    ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0500000   0.0162058   0.0837942
Birth    ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0693069   0.0342583   0.1043556


### Parameter: E(Y)


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539


### Parameter: RR


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth    ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.6900000   0.3181073   1.496665
Birth    ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.9564356   0.5087601   1.798036


### Parameter: PAR


agecat   studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0059857   -0.0248455   0.0128741


### Parameter: PAF


agecat   studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0900401   -0.4128831   0.1590335
