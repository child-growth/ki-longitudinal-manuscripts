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

agecat        studyid                    country                        exclfeed6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       44     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       14     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      155     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       25     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       17     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      193     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        6     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      176     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       52     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       14     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      200     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       20     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       11     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      250     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      227     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      224     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       15      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        4      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-24 months   ki1000108-IRC              INDIA                          1                  0        0      14
0-24 months   ki1000108-IRC              INDIA                          1                  1        0      14
0-24 months   ki1000108-IRC              INDIA                          0                  0       12      14
0-24 months   ki1000108-IRC              INDIA                          0                  1        2      14
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      141     379
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       82     379
0-24 months   ki1000109-EE               PAKISTAN                       0                  0       94     379
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       62     379
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      318     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      104     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     444
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       73     184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      200     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       19     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      410     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       71     700
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      718    2235
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1      108    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0     1146    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1      263    2235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      283     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      136     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       96     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       50     565
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    19172   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1546   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4939   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      820   26477
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3141    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      549    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      818    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      214    4722
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       56     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      173     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       17     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      195     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0        6     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      211     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       17     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       15     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      213     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        7     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       11     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      258     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      244     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      243     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       17      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-6 months    ki1000108-IRC              INDIA                          1                  0        0      14
0-6 months    ki1000108-IRC              INDIA                          1                  1        0      14
0-6 months    ki1000108-IRC              INDIA                          0                  0       12      14
0-6 months    ki1000108-IRC              INDIA                          0                  1        2      14
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      198     379
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       25     379
0-6 months    ki1000109-EE               PAKISTAN                       0                  0      128     379
0-6 months    ki1000109-EE               PAKISTAN                       0                  1       28     379
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      394     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       28     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       20     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        2     444
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       26     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      217     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      453     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       28     700
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      807    2235
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1       19    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0     1359    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       50    2235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      407     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       12     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      135     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       11     565
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20112   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      592   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5290   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      456   26450
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3609    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      978    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       44    4709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       44     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       13     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      154     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       22     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      189     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        6     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      179     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       46     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       14     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      204     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       15     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       11     267
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      227     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      220     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     242
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       16      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6-24 months   ki1000108-IRC              INDIA                          1                  0        0      14
6-24 months   ki1000108-IRC              INDIA                          1                  1        0      14
6-24 months   ki1000108-IRC              INDIA                          0                  0       13      14
6-24 months   ki1000108-IRC              INDIA                          0                  1        1      14
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      142     373
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       76     373
6-24 months   ki1000109-EE               PAKISTAN                       0                  0       99     373
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       56     373
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      298     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      100     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     417
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       65     176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      138     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      401     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       57     614
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      624    2090
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       97    2090
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0     1124    2090
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1      245    2090
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      279     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      135     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       95     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12503   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1048   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3132   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      444   17127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3184    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      500    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      832    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      195    4711


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
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/ca3269d1-6dd4-42fd-9003-7540523f51b4/ad00e43e-9d91-4472-97f3-baf91d51641d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca3269d1-6dd4-42fd-9003-7540523f51b4/ad00e43e-9d91-4472-97f3-baf91d51641d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ca3269d1-6dd4-42fd-9003-7540523f51b4/ad00e43e-9d91-4472-97f3-baf91d51641d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca3269d1-6dd4-42fd-9003-7540523f51b4/ad00e43e-9d91-4472-97f3-baf91d51641d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2349183   0.1243321   0.3455046
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1413378   0.0906956   0.1919799
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3722725   0.3096219   0.4349231
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3918729   0.3153902   0.4683557
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0916075   0.0507970   0.1324180
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1478278   0.1162350   0.1794206
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1344767   0.1116368   0.1573166
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1811888   0.1613939   0.2009837
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3257973   0.2809532   0.3706414
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3373370   0.2598536   0.4148205
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0791744   0.0750587   0.0832900
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1206083   0.1119797   0.1292368
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1530806   0.1397639   0.1663972
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1873229   0.1639641   0.2106817
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.1122365   0.0705662   0.1539068
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.1787259   0.1181176   0.2393341
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0226837   0.0125470   0.0328204
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0351829   0.0255690   0.0447968
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0287323   0.0127498   0.0447148
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0756059   0.0324680   0.1187438
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0322535   0.0297779   0.0347291
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0610263   0.0549574   0.0670953
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0211385   0.0153396   0.0269375
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0447986   0.0311619   0.0584352
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2344245   0.1244590   0.3443900
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1253658   0.0763559   0.1743757
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3530520   0.2898781   0.4162260
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3568874   0.2810722   0.4327026
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1105214   0.0608550   0.1601877
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1256077   0.0953111   0.1559044
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1381704   0.1138311   0.1625097
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1757975   0.1558316   0.1957634
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3282691   0.2830532   0.3734851
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3279464   0.2500971   0.4057956
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0805031   0.0755129   0.0854934
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1114275   0.1005609   0.1222941
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1386439   0.1261874   0.1511004
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1733578   0.1502981   0.1964176


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1638655   0.1167401   0.2109910
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1659955   0.1505665   0.1814246
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3292035   0.2904210   0.3679861
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0893606   0.0854348   0.0932864
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1615841   0.1496375   0.1735306
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0308725   0.0236998   0.0380452
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0407080   0.0243991   0.0570168
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0396219   0.0371297   0.0421141
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0259078   0.0204779   0.0313377
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1502146   0.1042403   0.1961889
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1636364   0.1477722   0.1795005
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3285458   0.2895051   0.3675864
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0871139   0.0824317   0.0917961
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1475271   0.1364035   0.1586506


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.6016463   0.3347453   1.0813545
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0526508   0.8171289   1.3560575
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.7549084
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.6137080   0.9858069   2.6415452
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.3473620   1.1046073   1.6434658
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0354200   0.7922433   1.3532391
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.5233246   1.4019772   1.6551753
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2236881   1.0565666   1.4172439
0-6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     0                    1                 1.5924047   0.9635667   2.6316317
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.5510227   0.9186097   2.6188176
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 2.6313912   1.1854794   5.8408603
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.8920854   1.6835931   2.1263970
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 2.1192863   1.4195160   3.1640183
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.5347812   0.2901397   0.9857006
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0108635   0.7670316   1.3322072
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.5141768
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1365020   0.6833552   1.8901396
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2723237   1.0352687   1.5636593
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9990167   0.7598943   1.3133857
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.3841386   1.2371163   1.5486335
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2503821   1.0682641   1.4635475


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0710528   -0.1630644   0.0209588
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0076747   -0.0322171   0.0475666
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0369639    0.0003782   0.0735496
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0315188    0.0124835   0.0505542
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0034062   -0.0197468   0.0265592
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0101862    0.0080282   0.0123443
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0085035    0.0024761   0.0145309
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0276052   -0.0027878   0.0579982
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0081888   -0.0006338   0.0170114
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0119757    0.0000358   0.0239156
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0073685    0.0058369   0.0089000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0047693    0.0017275   0.0078111
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0842099   -0.1756628   0.0072429
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0008354   -0.0400118   0.0416825
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0116285   -0.0316260   0.0548830
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0254659    0.0051266   0.0458053
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0002766   -0.0227550   0.0233083
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0066108    0.0040364   0.0091851
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0088832    0.0030395   0.0147269


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.4336042   -1.1085722    0.0253021
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0201995   -0.0906166    0.1197557
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627    0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2874970   -0.0571553    0.5197863
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1898776    0.0678559    0.2959262
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0103469   -0.0625329    0.0782278
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1139901    0.0899287    0.1374153
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0526259    0.0144171    0.0893534
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1974034   -0.0470464    0.3847825
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.2652455   -0.0747461    0.4976822
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2941851   -0.0342904    0.5183415
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1859691    0.1484799    0.2218077
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.1840882    0.0573820    0.2937627
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.5605975   -1.2922154   -0.0624938
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0023606   -0.1200027    0.1113553
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691    0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0951984   -0.3380409    0.3881608
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1556252    0.0226328    0.2705211
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0008420   -0.0717771    0.0685407
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0758865    0.0462061    0.1046433
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0602139    0.0195842    0.0991598
