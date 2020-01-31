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

**Outcome Variable:** sstunted

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

agecat      studyid                 country                        perdiar6    sstunted   n_cell     n  outcome_variable 
----------  ----------------------  -----------------------------  ---------  ---------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                 0       69   231  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                 1        3   231  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       87   231  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1        3   231  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                0       66   231  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                1        3   231  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                 0       54    65  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                 1        3    65  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0        6    65  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        0    65  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%                0        2    65  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%                1        0    65  sstunted         
Birth       ki0047075b-MAL-ED       INDIA                          0%                 0       11    47  sstunted         
Birth       ki0047075b-MAL-ED       INDIA                          0%                 1        1    47  sstunted         
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0       23    47  sstunted         
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1        1    47  sstunted         
Birth       ki0047075b-MAL-ED       INDIA                          >5%                0       11    47  sstunted         
Birth       ki0047075b-MAL-ED       INDIA                          >5%                1        0    47  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL                          0%                 0        8    27  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL                          0%                 1        0    27  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       10    27  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        0    27  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                0        8    27  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                1        1    27  sstunted         
Birth       ki0047075b-MAL-ED       PERU                           0%                 0       66   233  sstunted         
Birth       ki0047075b-MAL-ED       PERU                           0%                 1        1   233  sstunted         
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       70   233  sstunted         
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        2   233  sstunted         
Birth       ki0047075b-MAL-ED       PERU                           >5%                0       93   233  sstunted         
Birth       ki0047075b-MAL-ED       PERU                           >5%                1        1   233  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0       85   113  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1        1   113  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       23   113  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        0   113  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        4   113  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        0   113  sstunted         
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       51   125  sstunted         
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        8   125  sstunted         
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       44   125  sstunted         
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        1   125  sstunted         
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       20   125  sstunted         
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   125  sstunted         
Birth       ki1000109-EE            PAKISTAN                       0%                 0      179   240  sstunted         
Birth       ki1000109-EE            PAKISTAN                       0%                 1       44   240  sstunted         
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]           0       11   240  sstunted         
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]           1        4   240  sstunted         
Birth       ki1000109-EE            PAKISTAN                       >5%                0        2   240  sstunted         
Birth       ki1000109-EE            PAKISTAN                       >5%                1        0   240  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                 0      155   605  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                 1        5   605  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0      174   605  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1        3   605  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                0      257   605  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                1       11   605  sstunted         
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                 0      161   539  sstunted         
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                 1        0   539  sstunted         
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           0      207   539  sstunted         
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           1        2   539  sstunted         
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                0      167   539  sstunted         
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                1        2   539  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0      352   732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1        8   732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0      162   732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1        1   732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0      208   732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        1   732  sstunted         
Birth       ki1114097-CMIN          BANGLADESH                     0%                 0       10    26  sstunted         
Birth       ki1114097-CMIN          BANGLADESH                     0%                 1        6    26  sstunted         
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0        4    26  sstunted         
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1        0    26  sstunted         
Birth       ki1114097-CMIN          BANGLADESH                     >5%                0        6    26  sstunted         
Birth       ki1114097-CMIN          BANGLADESH                     >5%                1        0    26  sstunted         
Birth       ki1114097-CONTENT       PERU                           0%                 0        0     2  sstunted         
Birth       ki1114097-CONTENT       PERU                           0%                 1        0     2  sstunted         
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]           0        1     2  sstunted         
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]           1        0     2  sstunted         
Birth       ki1114097-CONTENT       PERU                           >5%                0        1     2  sstunted         
Birth       ki1114097-CONTENT       PERU                           >5%                1        0     2  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                 0       69   241  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                 1        2   241  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       90   241  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1        2   241  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                0       74   241  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                1        4   241  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                 0      192   209  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                 1        0   209  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0       15   209  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        0   209  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                0        2   209  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                1        0   209  sstunted         
6 months    ki0047075b-MAL-ED       INDIA                          0%                 0       48   236  sstunted         
6 months    ki0047075b-MAL-ED       INDIA                          0%                 1        2   236  sstunted         
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0      122   236  sstunted         
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1        5   236  sstunted         
6 months    ki0047075b-MAL-ED       INDIA                          >5%                0       57   236  sstunted         
6 months    ki0047075b-MAL-ED       INDIA                          >5%                1        2   236  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL                          0%                 0       79   236  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL                          0%                 1        1   236  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       76   236  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        0   236  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                0       80   236  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                1        0   236  sstunted         
6 months    ki0047075b-MAL-ED       PERU                           0%                 0       63   273  sstunted         
6 months    ki0047075b-MAL-ED       PERU                           0%                 1        5   273  sstunted         
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       88   273  sstunted         
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        1   273  sstunted         
6 months    ki0047075b-MAL-ED       PERU                           >5%                0      112   273  sstunted         
6 months    ki0047075b-MAL-ED       PERU                           >5%                1        4   273  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0      185   254  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1        5   254  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       54   254  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        1   254  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        9   254  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        0   254  sstunted         
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       98   247  sstunted         
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        7   247  sstunted         
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       90   247  sstunted         
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        6   247  sstunted         
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       45   247  sstunted         
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   247  sstunted         
6 months    ki1000109-EE            PAKISTAN                       0%                 0      266   373  sstunted         
6 months    ki1000109-EE            PAKISTAN                       0%                 1       70   373  sstunted         
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]           0       25   373  sstunted         
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]           1       10   373  sstunted         
6 months    ki1000109-EE            PAKISTAN                       >5%                0        1   373  sstunted         
6 months    ki1000109-EE            PAKISTAN                       >5%                1        1   373  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                 0      120   537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                 1        9   537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0      159   537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1       10   537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                0      223   537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                1       16   537  sstunted         
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                 0      154   604  sstunted         
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                 1        4   604  sstunted         
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           0      240   604  sstunted         
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           1        6   604  sstunted         
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                0      196   604  sstunted         
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                1        4   604  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0      335   715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1        6   715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0      156   715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0      201   715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        6   715  sstunted         
6 months    ki1114097-CMIN          BANGLADESH                     0%                 0       71   243  sstunted         
6 months    ki1114097-CMIN          BANGLADESH                     0%                 1       10   243  sstunted         
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0       49   243  sstunted         
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1       10   243  sstunted         
6 months    ki1114097-CMIN          BANGLADESH                     >5%                0       95   243  sstunted         
6 months    ki1114097-CMIN          BANGLADESH                     >5%                1        8   243  sstunted         
6 months    ki1114097-CONTENT       PERU                           0%                 0      112   215  sstunted         
6 months    ki1114097-CONTENT       PERU                           0%                 1        3   215  sstunted         
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]           0       42   215  sstunted         
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]           1        1   215  sstunted         
6 months    ki1114097-CONTENT       PERU                           >5%                0       57   215  sstunted         
6 months    ki1114097-CONTENT       PERU                           >5%                1        0   215  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                 0       53   212  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                 1       11   212  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       72   212  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1       11   212  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                0       59   212  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                1        6   212  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                 0      153   169  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                 1        1   169  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0       13   169  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        0   169  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                0        2   169  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                1        0   169  sstunted         
24 months   ki0047075b-MAL-ED       INDIA                          0%                 0       42   227  sstunted         
24 months   ki0047075b-MAL-ED       INDIA                          0%                 1        6   227  sstunted         
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0      108   227  sstunted         
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1       14   227  sstunted         
24 months   ki0047075b-MAL-ED       INDIA                          >5%                0       47   227  sstunted         
24 months   ki0047075b-MAL-ED       INDIA                          >5%                1       10   227  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL                          0%                 0       75   228  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL                          0%                 1        2   228  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       72   228  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        3   228  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                0       74   228  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                1        2   228  sstunted         
24 months   ki0047075b-MAL-ED       PERU                           0%                 0       46   201  sstunted         
24 months   ki0047075b-MAL-ED       PERU                           0%                 1        7   201  sstunted         
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       58   201  sstunted         
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        6   201  sstunted         
24 months   ki0047075b-MAL-ED       PERU                           >5%                0       82   201  sstunted         
24 months   ki0047075b-MAL-ED       PERU                           >5%                1        2   201  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0      161   238  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1       16   238  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       42   238  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1       10   238  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        8   238  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        1   238  sstunted         
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       61   214  sstunted         
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1       31   214  sstunted         
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       56   214  sstunted         
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       27   214  sstunted         
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       27   214  sstunted         
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1       12   214  sstunted         
24 months   ki1000109-EE            PAKISTAN                       0%                 0      100   167  sstunted         
24 months   ki1000109-EE            PAKISTAN                       0%                 1       52   167  sstunted         
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]           0        7   167  sstunted         
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]           1        7   167  sstunted         
24 months   ki1000109-EE            PAKISTAN                       >5%                0        1   167  sstunted         
24 months   ki1000109-EE            PAKISTAN                       >5%                1        0   167  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                 0       83   429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                 1       24   429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0      102   429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1       26   429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                0      149   429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                1       45   429  sstunted         
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                 0      137   578  sstunted         
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                 1       15   578  sstunted         
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           0      213   578  sstunted         
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           1       19   578  sstunted         
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                0      176   578  sstunted         
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                1       18   578  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0      261   514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1       16   514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0       95   514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0      122   514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        9   514  sstunted         
24 months   ki1114097-CMIN          BANGLADESH                     0%                 0       65   242  sstunted         
24 months   ki1114097-CMIN          BANGLADESH                     0%                 1       20   242  sstunted         
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0       34   242  sstunted         
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1       24   242  sstunted         
24 months   ki1114097-CMIN          BANGLADESH                     >5%                0       75   242  sstunted         
24 months   ki1114097-CMIN          BANGLADESH                     >5%                1       24   242  sstunted         
24 months   ki1114097-CONTENT       PERU                           0%                 0       81   164  sstunted         
24 months   ki1114097-CONTENT       PERU                           0%                 1        3   164  sstunted         
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]           0       36   164  sstunted         
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]           1        0   164  sstunted         
24 months   ki1114097-CONTENT       PERU                           >5%                0       44   164  sstunted         
24 months   ki1114097-CONTENT       PERU                           >5%                1        0   164  sstunted         


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a97f6b3f-ae41-4230-8166-d51636367e6b/0b33685a-aa9e-4c94-9dff-354055ffa908/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a97f6b3f-ae41-4230-8166-d51636367e6b/0b33685a-aa9e-4c94-9dff-354055ffa908/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a97f6b3f-ae41-4230-8166-d51636367e6b/0b33685a-aa9e-4c94-9dff-354055ffa908/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a97f6b3f-ae41-4230-8166-d51636367e6b/0b33685a-aa9e-4c94-9dff-354055ffa908/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.0697674   0.0257647   0.1137702
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.0591716   0.0235657   0.0947774
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.0669456   0.0352303   0.0986609
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.0175953   0.0036310   0.0315596
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.0658683   0.0282208   0.1035157
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.0289855   0.0061153   0.0518557
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1234568   0.0516699   0.1952437
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1694915   0.0735595   0.2654235
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.0776699   0.0258741   0.1294657
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1718750   0.0792263   0.2645237
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1325301   0.0594128   0.2056474
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.0923077   0.0217724   0.1628430
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1250000   0.0312340   0.2187660
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1147541   0.0580724   0.1714358
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1754386   0.0764823   0.2743949
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3369565   0.2401445   0.4337685
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3253012   0.2242774   0.4263251
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3076923   0.1625009   0.4528837
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2242991   0.1451722   0.3034259
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2031250   0.1333457   0.2729043
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2319588   0.1724951   0.2914224
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.0986842   0.0512311   0.1461373
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.0818966   0.0465816   0.1172115
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.0927835   0.0519220   0.1336450
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.0577617   0.0302618   0.0852617
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1037736   0.0456610   0.1618862
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.0687023   0.0253447   0.1120599
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.2352941   0.1449311   0.3256571
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4137931   0.2867795   0.5408067
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2424242   0.1578320   0.3270165


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1152263   0.0749980   0.1554547
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401


### Parameter: RR


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.8481262   0.3547163   2.027869
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                0.9595537   0.4360054   2.111770
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                3.7435128   1.4077570   9.954764
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.6473429   0.5379715   5.044391
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.3728814   0.6098466   3.090619
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                0.6291262   0.2597075   1.524022
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.7710843   0.3565481   1.667576
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                0.5370630   0.2108158   1.368193
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.9180328   0.3739364   2.253817
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.4035088   0.5490542   3.587691
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9654100   0.6323716   1.473843
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                0.9131514   0.5255481   1.586620
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.9055990   0.5534618   1.481782
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0341495   0.6686450   1.599452
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                0.8298851   0.4350235   1.583154
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                0.9402062   0.4898240   1.804705
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.7965802   0.8614509   3.746818
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.1894084   0.5395188   2.622137
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.7586207   1.0756153   2.875328
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.0303030   0.6132147   1.731081


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0045905   -0.0425728   0.0333917
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0145725    0.0012871   0.0278579
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0082305   -0.0659895   0.0495286
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0397995   -0.1138812   0.0342822
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0071586   -0.0766467   0.0909639
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0098537   -0.0825417   0.0628342
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0028538   -0.0713027   0.0655950
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0087188   -0.0488752   0.0314375
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0122772   -0.0084323   0.0329866
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0456976   -0.0294673   0.1208626


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0704319   -0.8443502   0.3787381
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.4530154   -0.0802446   0.7230330
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0714286   -0.7098807   0.3286320
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.3013393   -0.9935093   0.1505012
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0541667   -0.8488415   0.5161290
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0301242   -0.2781306   0.1697594
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0128874   -0.3743340   0.2534997
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0969130   -0.6469275   0.2694165
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.1752908   -0.1738390   0.4205805
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.1626298   -0.1515733   0.3911035
