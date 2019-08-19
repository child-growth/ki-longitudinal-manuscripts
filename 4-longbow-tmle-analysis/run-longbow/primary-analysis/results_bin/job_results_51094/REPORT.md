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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       46     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       10     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      146     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       29     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       10     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        2     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      148     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       15     175
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        2     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        3     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      157     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       28     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       11     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      141     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       18     170
Birth       ki0047075b-MAL-ED          PERU                           1                  0        8     256
Birth       ki0047075b-MAL-ED          PERU                           1                  1        2     256
Birth       ki0047075b-MAL-ED          PERU                           0                  0      219     256
Birth       ki0047075b-MAL-ED          PERU                           0                  1       27     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      189     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       22     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      102     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       ki1000108-IRC              INDIA                          1                  0        0      14
Birth       ki1000108-IRC              INDIA                          1                  1        0      14
Birth       ki1000108-IRC              INDIA                          0                  0       13      14
Birth       ki1000108-IRC              INDIA                          0                  1        1      14
Birth       ki1000109-EE               PAKISTAN                       1                  0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       42      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        6      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      50
Birth       ki1101329-Keneba           GAMBIA                         1                  0      459    1401
Birth       ki1101329-Keneba           GAMBIA                         1                  1       25    1401
Birth       ki1101329-Keneba           GAMBIA                         0                  0      864    1401
Birth       ki1101329-Keneba           GAMBIA                         0                  1       53    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10546   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     4522   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2494   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1520   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      437     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      180     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0       93     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       57     767
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       47     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       10     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      145     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       33     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      187     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        4     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        2     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      183     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       43     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      208     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       12     235
6 months    ki0047075b-MAL-ED          PERU                           1                  0        8     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1        3     269
6 months    ki0047075b-MAL-ED          PERU                           0                  0      203     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1       55     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      194     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       48     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      186     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       57     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    ki1000108-IRC              INDIA                          1                  0        0      14
6 months    ki1000108-IRC              INDIA                          1                  1        0      14
6 months    ki1000108-IRC              INDIA                          0                  0       11      14
6 months    ki1000108-IRC              INDIA                          0                  1        3      14
6 months    ki1000109-EE               PAKISTAN                       1                  0       92     372
6 months    ki1000109-EE               PAKISTAN                       1                  1      126     372
6 months    ki1000109-EE               PAKISTAN                       0                  0       87     372
6 months    ki1000109-EE               PAKISTAN                       0                  1       67     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      118     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      371     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       76     583
6 months    ki1101329-Keneba           GAMBIA                         1                  0      502    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1       84    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1124    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1      198    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      327     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       77     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      104     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       38     546
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10134   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3065   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2364   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1119   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2531    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      788    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      644    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      296    4259
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       26     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       27     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       86     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       70     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        1     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      129     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       90     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       13     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      165     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       47     227
24 months   ki0047075b-MAL-ED          PERU                           1                  0        3     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1        5     198
24 months   ki0047075b-MAL-ED          PERU                           0                  0      124     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       66     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      148     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       79     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       60     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      151     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       12      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   ki1000108-IRC              INDIA                          1                  0        0      14
24 months   ki1000108-IRC              INDIA                          1                  1        0      14
24 months   ki1000108-IRC              INDIA                          0                  0        5      14
24 months   ki1000108-IRC              INDIA                          0                  1        9      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       93     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       51     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      294     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      139     577
24 months   ki1101329-Keneba           GAMBIA                         1                  0      367    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  1      148    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  0      640    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  1      358    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      202     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      158     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       61     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       59     480
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3416    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3249    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      934    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      943    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2006    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1270    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      502    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      396    4174


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/671a7796-31e0-407c-80a4-45ba7d5d411e/66d6cb7d-9f9d-4dc5-b3dc-bc13bdd6b48b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/671a7796-31e0-407c-80a4-45ba7d5d411e/66d6cb7d-9f9d-4dc5-b3dc-bc13bdd6b48b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/671a7796-31e0-407c-80a4-45ba7d5d411e/66d6cb7d-9f9d-4dc5-b3dc-bc13bdd6b48b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/671a7796-31e0-407c-80a4-45ba7d5d411e/66d6cb7d-9f9d-4dc5-b3dc-bc13bdd6b48b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1696216   0.0664010   0.2728422
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1706141   0.1145202   0.2267080
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0492382   0.0299973   0.0684790
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0603240   0.0452612   0.0753869
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3164921   0.3088811   0.3241031
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3170420   0.3094335   0.3246505
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3107671   0.2736195   0.3479146
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2997278   0.2587281   0.3407275
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1714210   0.0742140   0.2686279
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1875879   0.1305571   0.2446187
6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5773138   0.5136987   0.6409289
6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4348717   0.3611998   0.5085436
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1287450   0.0711624   0.1863276
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1704036   0.1356393   0.2051678
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1464794   0.1189256   0.1740331
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1488861   0.1299859   0.1677862
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1915511   0.1529903   0.2301119
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2645386   0.1912298   0.3378475
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3747523   0.2332165   0.5162880
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3578513   0.2950269   0.4206758
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2420764   0.2333129   0.2508400
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2827231   0.2679783   0.2974678
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2426727   0.2266052   0.2587403
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2950066   0.2625508   0.3274623
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4713903   0.3355064   0.6072743
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4596253   0.3833302   0.5359204
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3371886   0.2620936   0.4122836
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3244271   0.2811864   0.3676678
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2933332   0.2551950   0.3314714
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3558792   0.3266824   0.3850759
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4403210   0.3890093   0.4916328
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4875345   0.3972893   0.5777797
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5255146   0.3486714   0.7023577
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4821429   0.4036093   0.5606766
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4929254   0.4786872   0.5071636
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4814316   0.4572753   0.5055879
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3912975   0.3716710   0.4109241
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4268201   0.3885920   0.4650483


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1688312   0.1204189   0.2172434
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.0556745   0.0436637   0.0676854
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3166335   0.3090239   0.3242430
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3089961   0.2722361   0.3457561
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2106227   0.1763897   0.2448557
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2508093   0.2426385   0.2589801
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2545198   0.2394884   0.2695513
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4641148   0.3963405   0.5318891
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.3344349   0.3106543   0.3582155
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4520833   0.4075129   0.4966538
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4907516   0.4775997   0.5039035
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3991375   0.3806098   0.4176653


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0058511   0.5027095   2.0125670
Birth       ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 1.2251482   0.7752206   1.9362077
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0017375   1.0008651   1.0026106
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9644775   0.8904075   1.0447091
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0943114   0.5772384   2.0745629
6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                 0.7532674   0.6210309   0.9136612
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0057497   0.4866253   2.0786680
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.3235747   0.8104140   2.1616729
6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.0164303   0.8148312   1.2679074
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.3810343   0.9805103   1.9451664
6 months    ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 0.9549010   0.6303914   1.4464599
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1679083   1.1033642   1.2362282
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2156560   1.0754604   1.3741272
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9750418   0.7053023   1.3479418
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9621532   0.7471290   1.2390616
24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2132251   1.0441593   1.4096653
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1072251   0.8901353   1.3772596
24 months   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                 0.9174683   0.6318634   1.3321677
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9766824   0.9262373   1.0298749
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0907815   0.9919384   1.1994740


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0007904   -0.0910670    0.0894862
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0064364   -0.0093906    0.0222633
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0001414    0.0000742    0.0002086
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0017710   -0.0064608    0.0029189
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0115578   -0.0736694    0.0967850
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0584966   -0.0977563   -0.0192369
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0000862   -0.0108674    0.0110398
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0324900   -0.0190616    0.0840416
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0013194   -0.0213157    0.0239545
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0190716   -0.0027406    0.0408838
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0181346   -0.1468352    0.1105659
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0087328    0.0054083    0.0120574
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0118471    0.0042256    0.0194686
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0072755   -0.1228552    0.1083042
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0078992   -0.0713967    0.0555984
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0411017    0.0100691    0.0721343
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0117623   -0.0142282    0.0377527
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0387421   -0.1986086    0.1211244
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0021738   -0.0077453    0.0033976
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0078400   -0.0006388    0.0163187


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0046818   -0.7106467    0.4099392
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.1156068   -0.2189613    0.3583461
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0004465    0.0002338    0.0006591
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0057314   -0.0210263    0.0093344
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0631646   -0.5398534    0.4300363
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.1127499   -0.1921454   -0.0386421
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0002744   -0.0352245    0.0345560
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2015073   -0.1907196    0.4645334
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0089268   -0.1566809    0.1508237
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0905487   -0.0185339    0.1879489
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0508517   -0.4814223    0.2545749
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0348185    0.0214441    0.0480102
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0465469    0.0163177    0.0758472
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0156761   -0.2978125    0.2051256
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0239885   -0.2361040    0.1517280
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1228990    0.0250515    0.2109263
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0260180   -0.0332295    0.0818681
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0795897   -0.4632988    0.2035024
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0044296   -0.0158486    0.0068611
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0196423   -0.0017632    0.0405904
