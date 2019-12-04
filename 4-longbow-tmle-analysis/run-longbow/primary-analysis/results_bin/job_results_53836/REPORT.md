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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country                        perdiar6    ever_co   n_cell     n
------------  ----------------------  -----------------------------  ---------  --------  -------  ----
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       70   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       83   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       15   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       71   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1        9   263
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      213   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        3   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   233
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                0       46   251
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                1       15   251
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      105   251
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       24   251
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       46   251
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       15   251
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       72   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                1       11   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       73   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        4   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       73   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1        7   240
0-24 months   ki0047075b-MAL-ED       PERU                           0%                0       84   302
0-24 months   ki0047075b-MAL-ED       PERU                           0%                1        5   302
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       89   302
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        4   302
0-24 months   ki0047075b-MAL-ED       PERU                           >5%               0      117   302
0-24 months   ki0047075b-MAL-ED       PERU                           >5%               1        3   302
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      218   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       15   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       53   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        7   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        9   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   303
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      101   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       93   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        9   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       44   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   261
0-24 months   ki1000109-EE            PAKISTAN                       0%                0      188   379
0-24 months   ki1000109-EE            PAKISTAN                       0%                1      154   379
0-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          0       20   379
0-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          1       15   379
0-24 months   ki1000109-EE            PAKISTAN                       >5%               0        1   379
0-24 months   ki1000109-EE            PAKISTAN                       >5%               1        1   379
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0      134   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       31   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      151   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       35   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0      199   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1       71   621
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      201   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       21   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      219   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       42   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      190   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       27   700
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      330   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       34   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      157   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       17   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      200   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       20   758
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                0       62   271
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                1       32   271
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       44   271
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       19   271
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       73   271
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       41   271
0-24 months   ki1114097-CONTENT       PERU                           0%                0      112   215
0-24 months   ki1114097-CONTENT       PERU                           0%                1        3   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       42   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        1   215
0-24 months   ki1114097-CONTENT       PERU                           >5%               0       57   215
0-24 months   ki1114097-CONTENT       PERU                           >5%               1        0   215
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       85   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1        0   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       94   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        4   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       75   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1        5   263
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      215   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        1   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   233
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                0       54   251
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                1        7   251
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      123   251
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        6   251
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       55   251
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%               1        6   251
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       78   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        5   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       75   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        2   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%               0       79   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%               1        1   240
0-6 months    ki0047075b-MAL-ED       PERU                           0%                0       89   302
0-6 months    ki0047075b-MAL-ED       PERU                           0%                1        0   302
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       92   302
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        1   302
0-6 months    ki0047075b-MAL-ED       PERU                           >5%               0      119   302
0-6 months    ki0047075b-MAL-ED       PERU                           >5%               1        1   302
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      231   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        2   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       57   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        3   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0       10   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   303
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      112   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        1   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       99   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        3   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       46   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   261
0-6 months    ki1000109-EE            PAKISTAN                       0%                0      290   379
0-6 months    ki1000109-EE            PAKISTAN                       0%                1       52   379
0-6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]          0       31   379
0-6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]          1        4   379
0-6 months    ki1000109-EE            PAKISTAN                       >5%               0        1   379
0-6 months    ki1000109-EE            PAKISTAN                       >5%               1        1   379
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0      155   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1        9   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      171   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       14   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      248   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1       22   619
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      212   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1       10   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      252   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1        9   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      206   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1       11   700
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      356   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        8   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      171   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        3   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      214   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        6   758
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                0       91   271
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                1        3   271
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       57   271
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        6   271
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%               0      108   271
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%               1        6   271
0-6 months    ki1114097-CONTENT       PERU                           0%                0      115   215
0-6 months    ki1114097-CONTENT       PERU                           0%                1        0   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       43   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        0   215
0-6 months    ki1114097-CONTENT       PERU                           >5%               0       57   215
0-6 months    ki1114097-CONTENT       PERU                           >5%               1        0   215
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       56   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       78   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       14   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       70   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1        6   239
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      188   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        2   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   207
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                0       39   235
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                1       11   235
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      104   235
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       22   235
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       45   235
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       14   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                1        7   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        3   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1        6   235
6-24 months   ki0047075b-MAL-ED       PERU                           0%                0       62   270
6-24 months   ki0047075b-MAL-ED       PERU                           0%                1        5   270
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       84   270
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        3   270
6-24 months   ki0047075b-MAL-ED       PERU                           >5%               0      113   270
6-24 months   ki0047075b-MAL-ED       PERU                           >5%               1        3   270
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      181   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       13   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       50   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        6   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        8   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   259
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       92   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       89   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        7   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       43   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   245
6-24 months   ki1000109-EE            PAKISTAN                       0%                0      194   372
6-24 months   ki1000109-EE            PAKISTAN                       0%                1      141   372
6-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          0       21   372
6-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          1       14   372
6-24 months   ki1000109-EE            PAKISTAN                       >5%               0        1   372
6-24 months   ki1000109-EE            PAKISTAN                       >5%               1        1   372
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0      102   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       27   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      143   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       29   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0      183   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1       58   542
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      146   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       14   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      211   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       39   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      182   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       22   614
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      314   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       31   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      153   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       17   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      200   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       15   730
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                0       55   251
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                1       31   251
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       43   251
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       16   251
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       67   251
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       39   251
6-24 months   ki1114097-CONTENT       PERU                           0%                0      112   215
6-24 months   ki1114097-CONTENT       PERU                           0%                1        3   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       42   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        1   215
6-24 months   ki1114097-CONTENT       PERU                           >5%               0       57   215
6-24 months   ki1114097-CONTENT       PERU                           >5%               1        0   215


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/9bd9094e-76c1-48db-bb9c-448a7cb1c8ae/f909ae3f-cab6-42ae-b878-7c2e5e8a618f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9bd9094e-76c1-48db-bb9c-448a7cb1c8ae/f909ae3f-cab6-42ae-b878-7c2e5e8a618f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9bd9094e-76c1-48db-bb9c-448a7cb1c8ae/f909ae3f-cab6-42ae-b878-7c2e5e8a618f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9bd9094e-76c1-48db-bb9c-448a7cb1c8ae/f909ae3f-cab6-42ae-b878-7c2e5e8a618f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.1764706   0.0952733   0.2576679
0-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1530612   0.0816411   0.2244814
0-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.1125000   0.0431270   0.1818730
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.2330620   0.1249299   0.3411940
0-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.1903431   0.1224822   0.2582040
0-24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.2338301   0.1227950   0.3448653
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.1898143   0.1280383   0.2515904
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.1977473   0.1406396   0.2548549
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.2541083   0.2028907   0.3053260
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.1063855   0.0631723   0.1495987
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.1522521   0.1096644   0.1948398
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.1230852   0.0778904   0.1682801
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0943169   0.0642371   0.1243968
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0958716   0.0515584   0.1401847
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0912756   0.0532255   0.1293257
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.3408370   0.2433788   0.4382952
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.2960956   0.1799825   0.4122087
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.3616510   0.2728343   0.4504678
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                0.1147541   0.0346110   0.1948972
0-6 months    ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.0465116   0.0100985   0.0829248
0-6 months    ki0047075b-MAL-ED       INDIA        >5%                  NA                0.0983607   0.0234787   0.1732426
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0548780   0.0199945   0.0897616
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0756757   0.0375337   0.1138177
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.0814815   0.0488234   0.1141396
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0450450   0.0177429   0.0723472
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.0344828   0.0123304   0.0566351
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.0506912   0.0214834   0.0798990
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.2112676   0.1161172   0.3064180
6-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1521739   0.0786230   0.2257248
6-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.0789474   0.0181951   0.1396997
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.2211610   0.1089425   0.3333796
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.1774819   0.1102223   0.2447415
6-24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.2252788   0.1137950   0.3367626
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.2044065   0.1337220   0.2750910
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.1705561   0.1138988   0.2272133
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.2343874   0.1800599   0.2887149
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0857017   0.0412158   0.1301875
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.1534936   0.1081925   0.1987947
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.1070850   0.0639133   0.1502566
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0903127   0.0600418   0.1205836
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1008141   0.0553055   0.1463227
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0699870   0.0358779   0.1040960
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.3545236   0.2502970   0.4587502
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.2778636   0.1619257   0.3938014
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.3698682   0.2771246   0.4626117


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2206119   0.1879724   0.2532514
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.3394834   0.2830004   0.3959663
0-6 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.0756972   0.0429084   0.1084860
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0726979   0.0522275   0.0931683
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.3426295   0.2837999   0.4014590


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                0.8673469   0.4503955   1.6702892
0-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                0.6375000   0.2953502   1.3760149
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.8167061   0.4556514   1.4638578
0-24 months   ki0047075b-MAL-ED       INDIA        >5%                  0%                1.0032960   0.5176222   1.9446670
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                1.0417931   0.6754860   1.6067435
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.3387204   0.9156404   1.9572884
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.4311355   0.8745881   2.3418439
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1569737   0.6693431   1.9998536
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.0164830   0.5797410   1.7822403
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.9677541   0.5726806   1.6353758
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.8687308   0.5348464   1.4110469
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.0610675   0.7273182   1.5479666
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.4053156   0.1419600   1.1572328
0-6 months    ki0047075b-MAL-ED       INDIA        >5%                  0%                0.8571429   0.3050544   2.4084031
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                1.3789790   0.6126960   3.1036321
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.4847737   0.7003297   3.1478783
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                0.7655172   0.3165046   1.8515265
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1253456   0.4876348   2.5970311
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                0.7202899   0.3720423   1.3945120
6-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                0.3736842   0.1532046   0.9114602
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.8025009   0.4292667   1.5002507
6-24 months   ki0047075b-MAL-ED       INDIA        >5%                  0%                1.0186189   0.5038879   2.0591570
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.8343966   0.5170345   1.3465592
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.1466731   0.7569321   1.7370901
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.7910224   0.9855232   3.2548816
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.2495086   0.6480807   2.4090701
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.1162784   0.6361573   1.9587569
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.7749408   0.4288341   1.4003859
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.7837660   0.4699189   1.3072238
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.0432822   0.7080240   1.5372893


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.0281816   -0.0928591   0.0364958
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0179225   -0.1111602   0.0753152
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0307976   -0.0231397   0.0847349
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0221859   -0.0156498   0.0600217
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0006494   -0.0223581   0.0210593
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0013536   -0.0802507   0.0775436
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0390569   -0.1052092   0.0270954
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0178199   -0.0136619   0.0493016
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                -0.0021879   -0.0245047   0.0201289
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.0648241   -0.1402695   0.0106213
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0211610   -0.1199809   0.0776588
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0059256   -0.0558401   0.0676913
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0364482   -0.0040177   0.0769141
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0040113   -0.0256587   0.0176361
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0118941   -0.0966029   0.0728147


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.1900452   -0.7139097    0.1736976
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0833065   -0.6156087    0.2736156
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.1396007   -0.1430889    0.3523803
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.1725571   -0.1789807    0.4192765
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0069328   -0.2675390    0.2000926
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0039872   -0.2654841    0.2034746
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.5159620   -1.6595874    0.1359032
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.2451220   -0.3311018    0.5719029
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                -0.0510511   -0.7245378    0.3594178
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.4426559   -1.0488447   -0.0158194
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.1058051   -0.7290687    0.2927956
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0281726   -0.3147323    0.2816420
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.2983890   -0.1187043    0.5599749
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0464800   -0.3297263    0.1764317
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0347142   -0.3139011    0.1851491
