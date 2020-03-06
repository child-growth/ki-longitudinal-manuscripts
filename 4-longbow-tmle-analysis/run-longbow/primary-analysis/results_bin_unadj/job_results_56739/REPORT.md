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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        perdiar24    stunted   n_cell     n
----------  --------------  -----------------------------  ----------  --------  -------  ----
Birth       CMIN            BANGLADESH                     0%                 0        6    26
Birth       CMIN            BANGLADESH                     0%                 1        6    26
Birth       CMIN            BANGLADESH                     (0%, 5%]           0        3    26
Birth       CMIN            BANGLADESH                     (0%, 5%]           1        1    26
Birth       CMIN            BANGLADESH                     >5%                0        8    26
Birth       CMIN            BANGLADESH                     >5%                1        2    26
Birth       CONTENT         PERU                           0%                 0        0     2
Birth       CONTENT         PERU                           0%                 1        0     2
Birth       CONTENT         PERU                           (0%, 5%]           0        1     2
Birth       CONTENT         PERU                           (0%, 5%]           1        0     2
Birth       CONTENT         PERU                           >5%                0        1     2
Birth       CONTENT         PERU                           >5%                1        0     2
Birth       EE              PAKISTAN                       0%                 0       88   240
Birth       EE              PAKISTAN                       0%                 1       73   240
Birth       EE              PAKISTAN                       (0%, 5%]           0       52   240
Birth       EE              PAKISTAN                       (0%, 5%]           1       27   240
Birth       EE              PAKISTAN                       >5%                0        0   240
Birth       EE              PAKISTAN                       >5%                1        0   240
Birth       MAL-ED          BANGLADESH                     0%                 0       13   231
Birth       MAL-ED          BANGLADESH                     0%                 1        5   231
Birth       MAL-ED          BANGLADESH                     (0%, 5%]           0      112   231
Birth       MAL-ED          BANGLADESH                     (0%, 5%]           1       19   231
Birth       MAL-ED          BANGLADESH                     >5%                0       62   231
Birth       MAL-ED          BANGLADESH                     >5%                1       20   231
Birth       MAL-ED          BRAZIL                         0%                 0       31    65
Birth       MAL-ED          BRAZIL                         0%                 1        3    65
Birth       MAL-ED          BRAZIL                         (0%, 5%]           0       23    65
Birth       MAL-ED          BRAZIL                         (0%, 5%]           1        6    65
Birth       MAL-ED          BRAZIL                         >5%                0        2    65
Birth       MAL-ED          BRAZIL                         >5%                1        0    65
Birth       MAL-ED          INDIA                          0%                 0        4    47
Birth       MAL-ED          INDIA                          0%                 1        1    47
Birth       MAL-ED          INDIA                          (0%, 5%]           0       27    47
Birth       MAL-ED          INDIA                          (0%, 5%]           1        6    47
Birth       MAL-ED          INDIA                          >5%                0        6    47
Birth       MAL-ED          INDIA                          >5%                1        3    47
Birth       MAL-ED          NEPAL                          0%                 0        2    27
Birth       MAL-ED          NEPAL                          0%                 1        0    27
Birth       MAL-ED          NEPAL                          (0%, 5%]           0       19    27
Birth       MAL-ED          NEPAL                          (0%, 5%]           1        0    27
Birth       MAL-ED          NEPAL                          >5%                0        4    27
Birth       MAL-ED          NEPAL                          >5%                1        2    27
Birth       MAL-ED          PERU                           0%                 0       21   233
Birth       MAL-ED          PERU                           0%                 1        0   233
Birth       MAL-ED          PERU                           (0%, 5%]           0       78   233
Birth       MAL-ED          PERU                           (0%, 5%]           1       11   233
Birth       MAL-ED          PERU                           >5%                0      108   233
Birth       MAL-ED          PERU                           >5%                1       15   233
Birth       MAL-ED          SOUTH AFRICA                   0%                 0       39   113
Birth       MAL-ED          SOUTH AFRICA                   0%                 1        3   113
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]           0       64   113
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        6   113
Birth       MAL-ED          SOUTH AFRICA                   >5%                0        1   113
Birth       MAL-ED          SOUTH AFRICA                   >5%                1        0   113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        7   125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        2   125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       66   125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       19   125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       29   125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        2   125
Birth       NIH-Birth       BANGLADESH                     0%                 0       41   605
Birth       NIH-Birth       BANGLADESH                     0%                 1       10   605
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]           0      286   605
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]           1       59   605
Birth       NIH-Birth       BANGLADESH                     >5%                0      182   605
Birth       NIH-Birth       BANGLADESH                     >5%                1       27   605
Birth       NIH-Crypto      BANGLADESH                     0%                 0      129   732
Birth       NIH-Crypto      BANGLADESH                     0%                 1       22   732
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]           0      338   732
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]           1       48   732
Birth       NIH-Crypto      BANGLADESH                     >5%                0      164   732
Birth       NIH-Crypto      BANGLADESH                     >5%                1       31   732
Birth       PROVIDE         BANGLADESH                     0%                 0       51   539
Birth       PROVIDE         BANGLADESH                     0%                 1        4   539
Birth       PROVIDE         BANGLADESH                     (0%, 5%]           0      302   539
Birth       PROVIDE         BANGLADESH                     (0%, 5%]           1       25   539
Birth       PROVIDE         BANGLADESH                     >5%                0      138   539
Birth       PROVIDE         BANGLADESH                     >5%                1       19   539
6 months    CMIN            BANGLADESH                     0%                 0        2   243
6 months    CMIN            BANGLADESH                     0%                 1        0   243
6 months    CMIN            BANGLADESH                     (0%, 5%]           0       66   243
6 months    CMIN            BANGLADESH                     (0%, 5%]           1       46   243
6 months    CMIN            BANGLADESH                     >5%                0       82   243
6 months    CMIN            BANGLADESH                     >5%                1       47   243
6 months    CONTENT         PERU                           0%                 0        5   215
6 months    CONTENT         PERU                           0%                 1        1   215
6 months    CONTENT         PERU                           (0%, 5%]           0      135   215
6 months    CONTENT         PERU                           (0%, 5%]           1        7   215
6 months    CONTENT         PERU                           >5%                0       66   215
6 months    CONTENT         PERU                           >5%                1        1   215
6 months    EE              PAKISTAN                       0%                 0      130   373
6 months    EE              PAKISTAN                       0%                 1      126   373
6 months    EE              PAKISTAN                       (0%, 5%]           0       60   373
6 months    EE              PAKISTAN                       (0%, 5%]           1       57   373
6 months    EE              PAKISTAN                       >5%                0        0   373
6 months    EE              PAKISTAN                       >5%                1        0   373
6 months    Guatemala BSC   GUATEMALA                      0%                 0       21   299
6 months    Guatemala BSC   GUATEMALA                      0%                 1        8   299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           0       51   299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           1       19   299
6 months    Guatemala BSC   GUATEMALA                      >5%                0      137   299
6 months    Guatemala BSC   GUATEMALA                      >5%                1       63   299
6 months    MAL-ED          BANGLADESH                     0%                 0        5   241
6 months    MAL-ED          BANGLADESH                     0%                 1        1   241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]           0      119   241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]           1       23   241
6 months    MAL-ED          BANGLADESH                     >5%                0       73   241
6 months    MAL-ED          BANGLADESH                     >5%                1       20   241
6 months    MAL-ED          BRAZIL                         0%                 0      103   209
6 months    MAL-ED          BRAZIL                         0%                 1        3   209
6 months    MAL-ED          BRAZIL                         (0%, 5%]           0       98   209
6 months    MAL-ED          BRAZIL                         (0%, 5%]           1        3   209
6 months    MAL-ED          BRAZIL                         >5%                0        2   209
6 months    MAL-ED          BRAZIL                         >5%                1        0   209
6 months    MAL-ED          INDIA                          0%                 0        3   236
6 months    MAL-ED          INDIA                          0%                 1        0   236
6 months    MAL-ED          INDIA                          (0%, 5%]           0      156   236
6 months    MAL-ED          INDIA                          (0%, 5%]           1       35   236
6 months    MAL-ED          INDIA                          >5%                0       32   236
6 months    MAL-ED          INDIA                          >5%                1       10   236
6 months    MAL-ED          NEPAL                          0%                 0       13   236
6 months    MAL-ED          NEPAL                          0%                 1        1   236
6 months    MAL-ED          NEPAL                          (0%, 5%]           0      137   236
6 months    MAL-ED          NEPAL                          (0%, 5%]           1        6   236
6 months    MAL-ED          NEPAL                          >5%                0       74   236
6 months    MAL-ED          NEPAL                          >5%                1        5   236
6 months    MAL-ED          PERU                           0%                 0        5   273
6 months    MAL-ED          PERU                           0%                 1        2   273
6 months    MAL-ED          PERU                           (0%, 5%]           0       88   273
6 months    MAL-ED          PERU                           (0%, 5%]           1       21   273
6 months    MAL-ED          PERU                           >5%                0      120   273
6 months    MAL-ED          PERU                           >5%                1       37   273
6 months    MAL-ED          SOUTH AFRICA                   0%                 0       60   254
6 months    MAL-ED          SOUTH AFRICA                   0%                 1       18   254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      142   254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       32   254
6 months    MAL-ED          SOUTH AFRICA                   >5%                0        2   254
6 months    MAL-ED          SOUTH AFRICA                   >5%                1        0   254
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5   247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        4   247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      131   247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       46   247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52   247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        9   247
6 months    NIH-Birth       BANGLADESH                     0%                 0       10   537
6 months    NIH-Birth       BANGLADESH                     0%                 1        5   537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           0      247   537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           1       92   537
6 months    NIH-Birth       BANGLADESH                     >5%                0      136   537
6 months    NIH-Birth       BANGLADESH                     >5%                1       47   537
6 months    NIH-Crypto      BANGLADESH                     0%                 0      108   715
6 months    NIH-Crypto      BANGLADESH                     0%                 1       26   715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           0      306   715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           1       80   715
6 months    NIH-Crypto      BANGLADESH                     >5%                0      151   715
6 months    NIH-Crypto      BANGLADESH                     >5%                1       44   715
6 months    PROVIDE         BANGLADESH                     0%                 0        9   604
6 months    PROVIDE         BANGLADESH                     0%                 1        3   604
6 months    PROVIDE         BANGLADESH                     (0%, 5%]           0      348   604
6 months    PROVIDE         BANGLADESH                     (0%, 5%]           1       61   604
6 months    PROVIDE         BANGLADESH                     >5%                0      151   604
6 months    PROVIDE         BANGLADESH                     >5%                1       32   604
6 months    SAS-FoodSuppl   INDIA                          0%                 0       38   380
6 months    SAS-FoodSuppl   INDIA                          0%                 1       35   380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           0       28   380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           1       18   380
6 months    SAS-FoodSuppl   INDIA                          >5%                0      151   380
6 months    SAS-FoodSuppl   INDIA                          >5%                1      110   380
24 months   CMIN            BANGLADESH                     0%                 0        2   242
24 months   CMIN            BANGLADESH                     0%                 1        1   242
24 months   CMIN            BANGLADESH                     (0%, 5%]           0       38   242
24 months   CMIN            BANGLADESH                     (0%, 5%]           1       76   242
24 months   CMIN            BANGLADESH                     >5%                0       37   242
24 months   CMIN            BANGLADESH                     >5%                1       88   242
24 months   CONTENT         PERU                           0%                 0        3   164
24 months   CONTENT         PERU                           0%                 1        1   164
24 months   CONTENT         PERU                           (0%, 5%]           0      100   164
24 months   CONTENT         PERU                           (0%, 5%]           1        8   164
24 months   CONTENT         PERU                           >5%                0       48   164
24 months   CONTENT         PERU                           >5%                1        4   164
24 months   EE              PAKISTAN                       0%                 0       36   167
24 months   EE              PAKISTAN                       0%                 1       79   167
24 months   EE              PAKISTAN                       (0%, 5%]           0       13   167
24 months   EE              PAKISTAN                       (0%, 5%]           1       39   167
24 months   EE              PAKISTAN                       >5%                0        0   167
24 months   EE              PAKISTAN                       >5%                1        0   167
24 months   MAL-ED          BANGLADESH                     0%                 0        3   212
24 months   MAL-ED          BANGLADESH                     0%                 1        3   212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]           0       74   212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]           1       56   212
24 months   MAL-ED          BANGLADESH                     >5%                0       34   212
24 months   MAL-ED          BANGLADESH                     >5%                1       42   212
24 months   MAL-ED          BRAZIL                         0%                 0       74   169
24 months   MAL-ED          BRAZIL                         0%                 1        2   169
24 months   MAL-ED          BRAZIL                         (0%, 5%]           0       86   169
24 months   MAL-ED          BRAZIL                         (0%, 5%]           1        5   169
24 months   MAL-ED          BRAZIL                         >5%                0        2   169
24 months   MAL-ED          BRAZIL                         >5%                1        0   169
24 months   MAL-ED          INDIA                          0%                 0        2   227
24 months   MAL-ED          INDIA                          0%                 1        1   227
24 months   MAL-ED          INDIA                          (0%, 5%]           0      103   227
24 months   MAL-ED          INDIA                          (0%, 5%]           1       80   227
24 months   MAL-ED          INDIA                          >5%                0       25   227
24 months   MAL-ED          INDIA                          >5%                1       16   227
24 months   MAL-ED          NEPAL                          0%                 0       10   228
24 months   MAL-ED          NEPAL                          0%                 1        2   228
24 months   MAL-ED          NEPAL                          (0%, 5%]           0      111   228
24 months   MAL-ED          NEPAL                          (0%, 5%]           1       29   228
24 months   MAL-ED          NEPAL                          >5%                0       57   228
24 months   MAL-ED          NEPAL                          >5%                1       19   228
24 months   MAL-ED          PERU                           0%                 0        1   201
24 months   MAL-ED          PERU                           0%                 1        0   201
24 months   MAL-ED          PERU                           (0%, 5%]           0       49   201
24 months   MAL-ED          PERU                           (0%, 5%]           1       35   201
24 months   MAL-ED          PERU                           >5%                0       77   201
24 months   MAL-ED          PERU                           >5%                1       39   201
24 months   MAL-ED          SOUTH AFRICA                   0%                 0       48   238
24 months   MAL-ED          SOUTH AFRICA                   0%                 1       23   238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      105   238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       61   238
24 months   MAL-ED          SOUTH AFRICA                   >5%                0        1   238
24 months   MAL-ED          SOUTH AFRICA                   >5%                1        0   238
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        1   214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        5   214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       43   214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1      113   214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       15   214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1       37   214
24 months   NIH-Birth       BANGLADESH                     0%                 0        4   429
24 months   NIH-Birth       BANGLADESH                     0%                 1        1   429
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           0      123   429
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           1      156   429
24 months   NIH-Birth       BANGLADESH                     >5%                0       58   429
24 months   NIH-Birth       BANGLADESH                     >5%                1       87   429
24 months   NIH-Crypto      BANGLADESH                     0%                 0       95   514
24 months   NIH-Crypto      BANGLADESH                     0%                 1       28   514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           0      206   514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           1       70   514
24 months   NIH-Crypto      BANGLADESH                     >5%                0       81   514
24 months   NIH-Crypto      BANGLADESH                     >5%                1       34   514
24 months   PROVIDE         BANGLADESH                     0%                 0        5   578
24 months   PROVIDE         BANGLADESH                     0%                 1        4   578
24 months   PROVIDE         BANGLADESH                     (0%, 5%]           0      269   578
24 months   PROVIDE         BANGLADESH                     (0%, 5%]           1      126   578
24 months   PROVIDE         BANGLADESH                     >5%                0      114   578
24 months   PROVIDE         BANGLADESH                     >5%                1       60   578


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/e1a62f55-4546-4eb3-9da7-54a6e1c9824b/46671971-8ec3-44f8-89a5-587a48b905d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e1a62f55-4546-4eb3-9da7-54a6e1c9824b/46671971-8ec3-44f8-89a5-587a48b905d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e1a62f55-4546-4eb3-9da7-54a6e1c9824b/46671971-8ec3-44f8-89a5-587a48b905d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e1a62f55-4546-4eb3-9da7-54a6e1c9824b/46671971-8ec3-44f8-89a5-587a48b905d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED          BANGLADESH   0%                   NA                0.2777778   0.0704115   0.4851440
Birth       MAL-ED          BANGLADESH   (0%, 5%]             NA                0.1450382   0.0846059   0.2054705
Birth       MAL-ED          BANGLADESH   >5%                  NA                0.2439024   0.1507530   0.3370519
Birth       NIH-Birth       BANGLADESH   0%                   NA                0.1960784   0.0870238   0.3051330
Birth       NIH-Birth       BANGLADESH   (0%, 5%]             NA                0.1710145   0.1312507   0.2107783
Birth       NIH-Birth       BANGLADESH   >5%                  NA                0.1291866   0.0836767   0.1746965
Birth       NIH-Crypto      BANGLADESH   0%                   NA                0.1456954   0.0893853   0.2020054
Birth       NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.1243523   0.0914109   0.1572938
Birth       NIH-Crypto      BANGLADESH   >5%                  NA                0.1589744   0.1076178   0.2103309
6 months    Guatemala BSC   GUATEMALA    0%                   NA                0.2758621   0.1129200   0.4388041
6 months    Guatemala BSC   GUATEMALA    (0%, 5%]             NA                0.2714286   0.1670791   0.3757781
6 months    Guatemala BSC   GUATEMALA    >5%                  NA                0.3150000   0.2505146   0.3794854
6 months    NIH-Birth       BANGLADESH   0%                   NA                0.3333333   0.0945517   0.5721150
6 months    NIH-Birth       BANGLADESH   (0%, 5%]             NA                0.2713864   0.2240064   0.3187665
6 months    NIH-Birth       BANGLADESH   >5%                  NA                0.2568306   0.1934736   0.3201876
6 months    NIH-Crypto      BANGLADESH   0%                   NA                0.1940299   0.1270270   0.2610327
6 months    NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.2072539   0.1667891   0.2477186
6 months    NIH-Crypto      BANGLADESH   >5%                  NA                0.2256410   0.1669306   0.2843514
6 months    SAS-FoodSuppl   INDIA        0%                   NA                0.4794521   0.3646996   0.5942045
6 months    SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.3913043   0.2500835   0.5325252
6 months    SAS-FoodSuppl   INDIA        >5%                  NA                0.4214559   0.3614707   0.4814412
24 months   NIH-Crypto      BANGLADESH   0%                   NA                0.2276423   0.1534679   0.3018167
24 months   NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.2536232   0.2022437   0.3050027
24 months   NIH-Crypto      BANGLADESH   >5%                  NA                0.2956522   0.2121676   0.3791367


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED          BANGLADESH   NA                   NA                0.1904762   0.1397281   0.2412242
Birth       NIH-Birth       BANGLADESH   NA                   NA                0.1586777   0.1295391   0.1878163
Birth       NIH-Crypto      BANGLADESH   NA                   NA                0.1379781   0.1129774   0.1629789
6 months    Guatemala BSC   GUATEMALA    NA                   NA                0.3010033   0.2489243   0.3530824
6 months    NIH-Birth       BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140


### Parameter: RR


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       MAL-ED          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       MAL-ED          BANGLADESH   (0%, 5%]             0%                0.5221374   0.2220726   1.227650
Birth       MAL-ED          BANGLADESH   >5%                  0%                0.8780488   0.3796172   2.030913
Birth       NIH-Birth       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Birth       BANGLADESH   (0%, 5%]             0%                0.8721739   0.4773086   1.593701
Birth       NIH-Birth       BANGLADESH   >5%                  0%                0.6588517   0.3410879   1.272650
Birth       NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Crypto      BANGLADESH   (0%, 5%]             0%                0.8535092   0.5342130   1.363647
Birth       NIH-Crypto      BANGLADESH   >5%                  0%                1.0911422   0.6593521   1.805699
6 months    Guatemala BSC   GUATEMALA    0%                   0%                1.0000000   1.0000000   1.000000
6 months    Guatemala BSC   GUATEMALA    (0%, 5%]             0%                0.9839286   0.4862853   1.990838
6 months    Guatemala BSC   GUATEMALA    >5%                  0%                1.1418750   0.6111193   2.133591
6 months    NIH-Birth       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    NIH-Birth       BANGLADESH   (0%, 5%]             0%                0.8141593   0.3894920   1.701846
6 months    NIH-Birth       BANGLADESH   >5%                  0%                0.7704918   0.3611877   1.643626
6 months    NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    NIH-Crypto      BANGLADESH   (0%, 5%]             0%                1.0681546   0.7183756   1.588242
6 months    NIH-Crypto      BANGLADESH   >5%                  0%                1.1629191   0.7546947   1.791958
6 months    SAS-FoodSuppl   INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA        (0%, 5%]             0%                0.8161491   0.5292963   1.258462
6 months    SAS-FoodSuppl   INDIA        >5%                  0%                0.8790367   0.6653838   1.161293
24 months   NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   NIH-Crypto      BANGLADESH   (0%, 5%]             0%                1.1141304   0.7591128   1.635181
24 months   NIH-Crypto      BANGLADESH   >5%                  0%                1.2987578   0.8438680   1.998857


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED          BANGLADESH   0%                   NA                -0.0873016   -0.2844683   0.1098651
Birth       NIH-Birth       BANGLADESH   0%                   NA                -0.0374007   -0.1410197   0.0662182
Birth       NIH-Crypto      BANGLADESH   0%                   NA                -0.0077172   -0.0575939   0.0421594
6 months    Guatemala BSC   GUATEMALA    0%                   NA                 0.0251413   -0.1301396   0.1804222
6 months    NIH-Birth       BANGLADESH   0%                   NA                -0.0651769   -0.3002043   0.1698505
6 months    NIH-Crypto      BANGLADESH   0%                   NA                 0.0157604   -0.0450555   0.0765762
6 months    SAS-FoodSuppl   INDIA        0%                   NA                -0.0505047   -0.1534200   0.0524106
24 months   NIH-Crypto      BANGLADESH   0%                   NA                 0.0291671   -0.0363910   0.0947251


### Parameter: PAF


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED          BANGLADESH   0%                   NA                -0.4583333   -1.9610478   0.2817623
Birth       NIH-Birth       BANGLADESH   0%                   NA                -0.2357026   -1.0948377   0.2710839
Birth       NIH-Crypto      BANGLADESH   0%                   NA                -0.0559308   -0.4868632   0.2501060
6 months    Guatemala BSC   GUATEMALA    0%                   NA                 0.0835249   -0.6090216   0.4779892
6 months    NIH-Birth       BANGLADESH   0%                   NA                -0.2430556   -1.5158419   0.3858171
6 months    NIH-Crypto      BANGLADESH   0%                   NA                 0.0751244   -0.2652010   0.3239059
6 months    SAS-FoodSuppl   INDIA        0%                   NA                -0.1177410   -0.3856902   0.0983952
24 months   NIH-Crypto      BANGLADESH   0%                   NA                 0.1135748   -0.1819779   0.3352247
