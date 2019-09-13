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

**Intervention Variable:** predexfd6

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

agecat        studyid                    country                        predexfd6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       24     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       98     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       15     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       36     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      174     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      165     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       50     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       25     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        4     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      189     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       17     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0      113     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      148     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      223     248
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    19205   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1548   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4906   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      818   26477
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3155    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      550    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      804    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      213    4722
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      122     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        3     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      107     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       36     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      176     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      199     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       16     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       28     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      200     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0      114     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      155     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      241     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      242     248
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20146   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      593   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5256   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      455   26450
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3623    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      964    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       44    4709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       23     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       97     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       12     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       35     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      170     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      168     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       45     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       26     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      192     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       13     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0      111     267
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      147     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      219     242
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12526   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1049   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3109   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      443   17127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3197    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      501    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      819    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      194    4711


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
![](/tmp/2ffc8fd6-5876-4ef5-99f8-7da28a3d5975/8ea03ca8-0126-4bb8-b26b-c66f283a3ac1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2ffc8fd6-5876-4ef5-99f8-7da28a3d5975/8ea03ca8-0126-4bb8-b26b-c66f283a3ac1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2ffc8fd6-5876-4ef5-99f8-7da28a3d5975/8ea03ca8-0126-4bb8-b26b-c66f283a3ac1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2ffc8fd6-5876-4ef5-99f8-7da28a3d5975/8ea03ca8-0126-4bb8-b26b-c66f283a3ac1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1852875   0.1172777   0.2532972
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1376933   0.0744630   0.2009236
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3688973   0.3059208   0.4318739
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3912233   0.3153023   0.4671444
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0903106   0.0509252   0.1296961
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1474373   0.1158645   0.1790100
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1334125   0.1107918   0.1560331
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1817384   0.1619136   0.2015632
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3265216   0.2816405   0.3714026
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3367630   0.2586977   0.4148283
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0794907   0.0753779   0.0836035
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1202444   0.1114142   0.1290746
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1517308   0.1385419   0.1649196
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1924173   0.1682870   0.2165476
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.1124656   0.0710521   0.1538791
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.1782853   0.1177808   0.2387899
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0230840   0.0128418   0.0333262
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0351744   0.0255751   0.0447738
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0286026   0.0126297   0.0445755
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0742347   0.0310145   0.1174549
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0322639   0.0297657   0.0347620
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0618191   0.0557081   0.0679302
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0209613   0.0151752   0.0267475
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0446029   0.0313087   0.0578972
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1913241   0.1217358   0.2609124
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1143849   0.0548090   0.1739607
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3521654   0.2889581   0.4153727
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3558685   0.2802487   0.4314883
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1126750   0.0621710   0.1631789
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1249266   0.0946957   0.1551574
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1357491   0.1115656   0.1599326
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1759830   0.1559996   0.1959665
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3278176   0.2826821   0.3729530
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3304416   0.2523340   0.4085492
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0804224   0.0754354   0.0854093
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1111777   0.1002784   0.1220769
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1389605   0.1265519   0.1513692
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1734724   0.1499640   0.1969809


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


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7431335   0.4149621   1.330838
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0605209   0.8212914   1.369434
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.6325571   1.0059659   2.649437
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.3622295   1.1174649   1.660606
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0313654   0.7878592   1.350133
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.5126856   1.3901671   1.646002
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2681496   1.0948496   1.468881
0-6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE              PAKISTAN     0                    1                 1.5852434   0.9616335   2.613258
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.5237598   0.9050030   2.565565
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 2.5953819   1.1572713   5.820595
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.9160490   1.7045764   2.153757
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 2.1278699   1.4264591   3.174175
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.5978591   0.3162622   1.130187
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0105152   0.7661719   1.332783
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1087339   0.6670528   1.842869
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2963842   1.0527452   1.596409
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0080046   0.7670895   1.324582
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.3824218   1.2346894   1.547831
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2483578   1.0635660   1.465257


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0214219   -0.0649279   0.0220841
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0110499   -0.0294129   0.0515127
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0382608    0.0029464   0.0735752
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0325831    0.0137385   0.0514276
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0026820   -0.0204538   0.0258178
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0098699    0.0077130   0.0120268
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0098533    0.0039101   0.0157965
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0273761   -0.0027999   0.0575522
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0077885   -0.0011115   0.0166885
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0121053    0.0001564   0.0240543
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0073581    0.0058084   0.0089077
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0049465    0.0019101   0.0079829
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0411095   -0.0847059   0.0024869
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0017220   -0.0389485   0.0423926
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0094749   -0.0344403   0.0533900
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0278873    0.0076404   0.0481341
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0007282   -0.0222783   0.0237347
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0066915    0.0041147   0.0092684
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0085665    0.0027096   0.0144235


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1307287   -0.4274115    0.1042896
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0290827   -0.0834778    0.1299495
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627    0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2975840   -0.0322761    0.5220385
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1962887    0.0756161    0.3012083
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0081469   -0.0646736    0.0759866
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1104502    0.0864125    0.1338555
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0609795    0.0233169    0.0971898
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1957650   -0.0462869    0.3818196
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.2522797   -0.0907835    0.4874458
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2973705   -0.0315294    0.5214017
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1857071    0.1476197    0.2220925
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.1909277    0.0642465    0.3004589
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.2736719   -0.5930256   -0.0183390
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0048660   -0.1169567    0.1134019
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691    0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0775676   -0.3620994    0.3753162
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1704221    0.0380024    0.2846141
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0022165   -0.0703224    0.0698392
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0768136    0.0471115    0.1055898
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0580676    0.0174090    0.0970438
