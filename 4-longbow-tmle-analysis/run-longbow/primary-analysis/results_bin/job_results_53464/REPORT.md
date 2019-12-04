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

agecat      studyid                 country                        perdiar6    sstunted   n_cell     n
----------  ----------------------  -----------------------------  ---------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                 0       69   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                 1        3   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       87   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1        3   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                0       66   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                1        3   231
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                 0       54    65
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                 1        3    65
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0        6    65
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        0    65
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%                0        2    65
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%                1        0    65
Birth       ki0047075b-MAL-ED       INDIA                          0%                 0       11    47
Birth       ki0047075b-MAL-ED       INDIA                          0%                 1        1    47
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0       23    47
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1        1    47
Birth       ki0047075b-MAL-ED       INDIA                          >5%                0       11    47
Birth       ki0047075b-MAL-ED       INDIA                          >5%                1        0    47
Birth       ki0047075b-MAL-ED       NEPAL                          0%                 0        8    27
Birth       ki0047075b-MAL-ED       NEPAL                          0%                 1        0    27
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       10    27
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        0    27
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                0        8    27
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                1        1    27
Birth       ki0047075b-MAL-ED       PERU                           0%                 0       66   233
Birth       ki0047075b-MAL-ED       PERU                           0%                 1        1   233
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       70   233
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        2   233
Birth       ki0047075b-MAL-ED       PERU                           >5%                0       93   233
Birth       ki0047075b-MAL-ED       PERU                           >5%                1        1   233
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0       85   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1        1   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       23   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        0   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        4   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        0   113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       51   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        8   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       44   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        1   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       20   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   125
Birth       ki1000109-EE            PAKISTAN                       0%                 0      179   240
Birth       ki1000109-EE            PAKISTAN                       0%                 1       44   240
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]           0       11   240
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]           1        4   240
Birth       ki1000109-EE            PAKISTAN                       >5%                0        2   240
Birth       ki1000109-EE            PAKISTAN                       >5%                1        0   240
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                 0      155   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                 1        5   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0      174   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1        3   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                0      257   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                1       11   605
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                 0      161   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                 1        0   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           0      207   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           1        2   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                0      167   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                1        2   539
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0      352   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1        8   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0      162   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1        1   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0      208   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        1   732
Birth       ki1114097-CMIN          BANGLADESH                     0%                 0       10    26
Birth       ki1114097-CMIN          BANGLADESH                     0%                 1        6    26
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0        4    26
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1        0    26
Birth       ki1114097-CMIN          BANGLADESH                     >5%                0        6    26
Birth       ki1114097-CMIN          BANGLADESH                     >5%                1        0    26
Birth       ki1114097-CONTENT       PERU                           0%                 0        0     2
Birth       ki1114097-CONTENT       PERU                           0%                 1        0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]           0        1     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]           1        0     2
Birth       ki1114097-CONTENT       PERU                           >5%                0        1     2
Birth       ki1114097-CONTENT       PERU                           >5%                1        0     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                 0       69   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                 1        2   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       90   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1        2   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                0       74   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                1        4   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                 0      192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                 1        0   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0       15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        0   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                0        2   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                1        0   209
6 months    ki0047075b-MAL-ED       INDIA                          0%                 0       48   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                 1        2   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0      122   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1        5   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%                0       57   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%                1        2   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                 0       79   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                 1        1   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       76   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        0   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                0       80   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                1        0   236
6 months    ki0047075b-MAL-ED       PERU                           0%                 0       63   273
6 months    ki0047075b-MAL-ED       PERU                           0%                 1        5   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       88   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        1   273
6 months    ki0047075b-MAL-ED       PERU                           >5%                0      112   273
6 months    ki0047075b-MAL-ED       PERU                           >5%                1        4   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0      185   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1        5   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       54   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        1   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        9   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        0   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       98   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        7   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       90   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        6   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       45   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   247
6 months    ki1000109-EE            PAKISTAN                       0%                 0      266   373
6 months    ki1000109-EE            PAKISTAN                       0%                 1       70   373
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]           0       25   373
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]           1       10   373
6 months    ki1000109-EE            PAKISTAN                       >5%                0        1   373
6 months    ki1000109-EE            PAKISTAN                       >5%                1        1   373
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                 0      120   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                 1        9   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0      159   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1       10   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                0      223   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                1       16   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                 0      154   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                 1        4   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           0      240   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           1        6   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                0      196   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                1        4   604
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0      335   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1        6   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0      156   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0      201   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        6   715
6 months    ki1114097-CMIN          BANGLADESH                     0%                 0       71   243
6 months    ki1114097-CMIN          BANGLADESH                     0%                 1       10   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0       49   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1       10   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%                0       95   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%                1        8   243
6 months    ki1114097-CONTENT       PERU                           0%                 0      112   215
6 months    ki1114097-CONTENT       PERU                           0%                 1        3   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]           0       42   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]           1        1   215
6 months    ki1114097-CONTENT       PERU                           >5%                0       57   215
6 months    ki1114097-CONTENT       PERU                           >5%                1        0   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                 0       53   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                 1       11   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       72   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1       11   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                0       59   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                1        6   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                 0      153   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                 1        1   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0       13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        0   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                0        2   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                1        0   169
24 months   ki0047075b-MAL-ED       INDIA                          0%                 0       42   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                 1        6   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0      108   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1       14   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%                0       47   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%                1       10   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%                 0       75   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                 1        2   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       72   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        3   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                0       74   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                1        2   228
24 months   ki0047075b-MAL-ED       PERU                           0%                 0       46   201
24 months   ki0047075b-MAL-ED       PERU                           0%                 1        7   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       58   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        6   201
24 months   ki0047075b-MAL-ED       PERU                           >5%                0       82   201
24 months   ki0047075b-MAL-ED       PERU                           >5%                1        2   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0      161   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1       16   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       42   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1       10   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        8   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        1   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       61   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1       31   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       56   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       27   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       27   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1       12   214
24 months   ki1000109-EE            PAKISTAN                       0%                 0      100   167
24 months   ki1000109-EE            PAKISTAN                       0%                 1       52   167
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]           0        7   167
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]           1        7   167
24 months   ki1000109-EE            PAKISTAN                       >5%                0        1   167
24 months   ki1000109-EE            PAKISTAN                       >5%                1        0   167
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                 0       83   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                 1       24   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0      102   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1       26   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                0      149   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                1       45   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                 0      137   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                 1       15   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           0      213   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           1       19   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                0      176   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                1       18   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0      261   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1       16   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0       95   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0      122   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        9   514
24 months   ki1114097-CMIN          BANGLADESH                     0%                 0       65   242
24 months   ki1114097-CMIN          BANGLADESH                     0%                 1       20   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0       34   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1       24   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%                0       75   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%                1       24   242
24 months   ki1114097-CONTENT       PERU                           0%                 0       81   164
24 months   ki1114097-CONTENT       PERU                           0%                 1        3   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]           0       36   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]           1        0   164
24 months   ki1114097-CONTENT       PERU                           >5%                0       44   164
24 months   ki1114097-CONTENT       PERU                           >5%                1        0   164


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




# Results Detail

## Results Plots
![](/tmp/e0eaf1b5-44c6-42d4-8b0f-c33906d67cf8/b85f94f3-8f1c-40d8-b3a0-3906672e1422/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e0eaf1b5-44c6-42d4-8b0f-c33906d67cf8/b85f94f3-8f1c-40d8-b3a0-3906672e1422/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e0eaf1b5-44c6-42d4-8b0f-c33906d67cf8/b85f94f3-8f1c-40d8-b3a0-3906672e1422/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e0eaf1b5-44c6-42d4-8b0f-c33906d67cf8/b85f94f3-8f1c-40d8-b3a0-3906672e1422/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3407244   0.2433310   0.4381178
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3147208   0.2125774   0.4168642
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3071655   0.1524302   0.4619009
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2198720   0.1425320   0.2972120
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2310508   0.1633369   0.2987646
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2157556   0.1577319   0.2737794
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1070725   0.0596072   0.1545378
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.0852402   0.0503703   0.1201100
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1029495   0.0616051   0.1442940
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.0577617   0.0302618   0.0852617
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1037736   0.0456610   0.1618862
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.0687023   0.0253447   0.1120599
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.2376745   0.1455158   0.3298333
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4088599   0.2791751   0.5385447
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2473001   0.1621622   0.3324379


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
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9236815   0.6005612   1.420650
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                0.9015073   0.5045577   1.610748
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                1.0508422   0.6688006   1.651119
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                0.9812784   0.6342881   1.518091
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                0.7960975   0.4352197   1.456210
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                0.9614933   0.5286626   1.748695
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.7965802   0.8614509   3.746818
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.1894084   0.5395188   2.622137
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.7202513   1.0405227   2.844017
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.0404988   0.6197831   1.746801


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0045905   -0.0425728   0.0333917
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0145725    0.0012871   0.0278579
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0082305   -0.0659895   0.0495286
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0397995   -0.1138812   0.0342822
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0071586   -0.0766467   0.0909639
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0136216   -0.0869722   0.0597291
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0015732   -0.0647957   0.0679422
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0171071   -0.0573574   0.0231432
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0122772   -0.0084323   0.0329866
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0433172   -0.0333073   0.1199417


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0704319   -0.8443502   0.3787381
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.4530154   -0.0802446   0.7230330
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0714286   -0.7098807   0.3286320
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.3013393   -0.9935093   0.1505012
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0541667   -0.8488415   0.5161290
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0416431   -0.2918855   0.1601265
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0071044   -0.3427673   0.2658135
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.1901523   -0.7338548   0.1830559
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.1752908   -0.1738390   0.4205805
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.1541583   -0.1671181   0.3869959
