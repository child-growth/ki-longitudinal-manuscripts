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

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid                    country                        predexfd6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       71     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      129     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        5      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       52      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        2      60
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        4      39
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       33      39
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        2      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        3      24
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       20      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1      24
Birth       ki0047075b-MAL-ED          PERU                           1                   0       73     213
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     213
Birth       ki0047075b-MAL-ED          PERU                           0                   0      136     213
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       89      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      105     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        8     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       7
Birth       ki1000108-IRC              INDIA                          1                   0        0      14
Birth       ki1000108-IRC              INDIA                          1                   1        0      14
Birth       ki1000108-IRC              INDIA                          0                   0       14      14
Birth       ki1000108-IRC              INDIA                          0                   1        0      14
Birth       ki1000109-EE               PAKISTAN                       1                   0       30      42
Birth       ki1000109-EE               PAKISTAN                       1                   1        8      42
Birth       ki1000109-EE               PAKISTAN                       0                   0        4      42
Birth       ki1000109-EE               PAKISTAN                       0                   1        0      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   0      323     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   1       23     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   0       15     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   0      158     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   0      377     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   1        3     539
Birth       ki1101329-Keneba           GAMBIA                         1                   0      475    1403
Birth       ki1101329-Keneba           GAMBIA                         1                   1       10    1403
Birth       ki1101329-Keneba           GAMBIA                         0                   0      899    1403
Birth       ki1101329-Keneba           GAMBIA                         0                   1       19    1403
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      404     563
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       15     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0      138     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1        6     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9314   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1152   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2626   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      331   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1948    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      155    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      462    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       67    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       82     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      142     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        5     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        9     218
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        2     218
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      200     218
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        7     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       12     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      212     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1     225
6 months    ki0047075b-MAL-ED          PERU                           1                   0       90     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        2     271
6 months    ki0047075b-MAL-ED          PERU                           0                   0      171     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1        8     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      226     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      217     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       17      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
6 months    ki1000108-IRC              INDIA                          1                   0        0      14
6 months    ki1000108-IRC              INDIA                          1                   1        0      14
6 months    ki1000108-IRC              INDIA                          0                   0       13      14
6 months    ki1000108-IRC              INDIA                          0                   1        1      14
6 months    ki1000109-EE               PAKISTAN                       1                   0       31      48
6 months    ki1000109-EE               PAKISTAN                       1                   1       12      48
6 months    ki1000109-EE               PAKISTAN                       0                   0        5      48
6 months    ki1000109-EE               PAKISTAN                       0                   1        0      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      342     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       37     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       16     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       28     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      139     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      451     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       12     604
6 months    ki1101329-Keneba           GAMBIA                         1                   0      564    1908
6 months    ki1101329-Keneba           GAMBIA                         1                   1       22    1908
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1280    1908
6 months    ki1101329-Keneba           GAMBIA                         0                   1       42    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      394     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      132     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     547
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7180    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      464    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2112    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      145    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3184    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      144    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      854    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       90    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       62     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       14     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      117     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       12     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      143     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        8     209
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        3     209
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      174     209
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       24     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       11     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      201     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        6     219
24 months   ki0047075b-MAL-ED          PERU                           1                   0       63     201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        5     201
24 months   ki0047075b-MAL-ED          PERU                           0                   0      123     201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      189     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       24     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      133     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       14      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
24 months   ki1000108-IRC              INDIA                          1                   0        0      14
24 months   ki1000108-IRC              INDIA                          1                   1        0      14
24 months   ki1000108-IRC              INDIA                          0                   0       13      14
24 months   ki1000108-IRC              INDIA                          0                   1        1      14
24 months   ki1000109-EE               PAKISTAN                       1                   0       12      23
24 months   ki1000109-EE               PAKISTAN                       1                   1        8      23
24 months   ki1000109-EE               PAKISTAN                       0                   0        3      23
24 months   ki1000109-EE               PAKISTAN                       0                   1        0      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      125     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      401     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       40     578
24 months   ki1101329-Keneba           GAMBIA                         1                   0      478    1513
24 months   ki1101329-Keneba           GAMBIA                         1                   1       37    1513
24 months   ki1101329-Keneba           GAMBIA                         0                   0      907    1513
24 months   ki1101329-Keneba           GAMBIA                         0                   1       91    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      320     470
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       36     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       98     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       16     470
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3325    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      601    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      995    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      167    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3008    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      284    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      791    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      116    4199


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/fed75ba0-ce10-47d9-bebc-e8d1a3278538/bcf9e0e0-b59b-4c34-a5fe-937734ceea94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fed75ba0-ce10-47d9-bebc-e8d1a3278538/bcf9e0e0-b59b-4c34-a5fe-937734ceea94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fed75ba0-ce10-47d9-bebc-e8d1a3278538/bcf9e0e0-b59b-4c34-a5fe-937734ceea94/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fed75ba0-ce10-47d9-bebc-e8d1a3278538/bcf9e0e0-b59b-4c34-a5fe-937734ceea94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0202424   0.0078403   0.0326444
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0207769   0.0115082   0.0300455
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0357995   0.0179942   0.0536048
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0416667   0.0089999   0.0743334
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1101696   0.1043585   0.1159807
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1114870   0.1052545   0.1177196
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0839995   0.0714915   0.0965076
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0852325   0.0715761   0.0988889
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0383185   0.0228401   0.0537968
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0315069   0.0220537   0.0409601
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0295567   0.0130676   0.0460457
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0638298   0.0234443   0.1042152
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0605257   0.0549041   0.0661473
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0635174   0.0532504   0.0737844
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0457942   0.0385468   0.0530416
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0837106   0.0661063   0.1013149
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1655846   0.0804548   0.2507144
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0970681   0.0443864   0.1497498
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.0735294   0.0113391   0.1357198
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.0751880   0.0302611   0.1201148
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0811364   0.0335994   0.1286734
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0898568   0.0629839   0.1167296
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0725473   0.0501419   0.0949527
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0905350   0.0726938   0.1083761
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1009920   0.0696504   0.1323337
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1400695   0.0758906   0.2042484
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1523121   0.1397700   0.1648541
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1465313   0.1197651   0.1732974
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0882533   0.0767531   0.0997535
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1206406   0.0978556   0.1434256


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0206700   0.0132225   0.0281175
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0373002   0.0216334   0.0529670
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1104820   0.1047181   0.1162459
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0843465   0.0720577   0.0966353
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0335430   0.0254620   0.0416240
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0383912   0.0222749   0.0545076
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0615089   0.0563485   0.0666694
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0547753   0.0477475   0.0618030
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1268293   0.0811633   0.1724952
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.0746269   0.0382069   0.1110468
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0846001   0.0705732   0.0986271
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1106383   0.0822491   0.1390275
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1509434   0.1390224   0.1628644
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0952608   0.0849096   0.1056119


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.0264056   0.4809186   2.190617
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1638889   0.4599272   2.945330
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0119580   0.9839040   1.040812
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0146784   0.9201349   1.118936
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.8222393   0.4974856   1.358989
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.1595745   0.9290246   5.020063
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0494283   0.8793237   1.252440
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8279739   1.4199074   2.353315
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.5862146   0.2791969   1.230843
24 months   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 1.0225564   0.3630333   2.880236
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.1074777   0.5731703   2.139864
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2479439   0.8653937   1.799602
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3869359   0.7966939   2.414467
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9620462   0.7930758   1.167017
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3669811   1.0942882   1.707628


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0004276   -0.0096220   0.0104772
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0015007   -0.0080175   0.0110188
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003124   -0.0003737   0.0009985
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0003470   -0.0013683   0.0020623
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0047755   -0.0173709   0.0078199
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0088346   -0.0024799   0.0201491
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0009832   -0.0015608   0.0035272
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0089811    0.0048207   0.0131415
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0387553   -0.1017166   0.0242059
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0010975   -0.0496681   0.0518630
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0088290   -0.0329790   0.0506370
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0120528   -0.0068505   0.0309561
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0096463   -0.0077641   0.0270566
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0013687   -0.0078534   0.0051161
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0070075    0.0016744   0.0123405


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0206889   -0.6087883   0.4038680
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0402318   -0.2514084   0.2639055
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0028275   -0.0034050   0.0090213
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0041139   -0.0164771   0.0242878
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.1423688   -0.5854556   0.1768886
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2301196   -0.1068011   0.4644785
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0159848   -0.0261991   0.0564347
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1639620    0.0868768   0.2345397
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3055709   -0.8937783   0.0999393
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0147059   -0.9651411   0.5059874
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0981377   -0.5102569   0.4614455
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1424682   -0.1113948   0.3383442
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0871873   -0.0830298   0.2306518
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0090675   -0.0530924   0.0331170
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0735610    0.0155023   0.1281958
