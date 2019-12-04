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

agecat        studyid                    country                        predexfd6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       69     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       16     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      127     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      178     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     219
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      161     219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       47     219
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       10     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      195     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       18     225
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       90     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        2     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      170     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     237
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      211     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     235
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       15      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        4      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-24 months   ki1000108-IRC              INDIA                          1                  0        0      14
0-24 months   ki1000108-IRC              INDIA                          1                  1        0      14
0-24 months   ki1000108-IRC              INDIA                          0                  0       12      14
0-24 months   ki1000108-IRC              INDIA                          0                  1        2      14
0-24 months   ki1000109-EE               PAKISTAN                       1                  0       20      48
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       23      48
0-24 months   ki1000109-EE               PAKISTAN                       0                  0        5      48
0-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      48
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      318     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      104     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     444
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       73     184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      192     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      418     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       72     700
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      719    2235
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1      107    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0     1145    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1      264    2235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      279     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      141     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       93     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       52     565
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11280   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1121   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3166   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      335   15902
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3154    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      549    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      834    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      216    4753
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       83     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      141     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       29     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      180     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       11     219
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     219
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      192     219
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       16     219
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       12     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      207     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     225
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       92     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      178     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      231     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     237
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      230     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     235
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       17      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-6 months    ki1000108-IRC              INDIA                          1                  0        0      14
0-6 months    ki1000108-IRC              INDIA                          1                  1        0      14
0-6 months    ki1000108-IRC              INDIA                          0                  0       12      14
0-6 months    ki1000108-IRC              INDIA                          0                  1        2      14
0-6 months    ki1000109-EE               PAKISTAN                       1                  0       35      48
0-6 months    ki1000109-EE               PAKISTAN                       1                  1        8      48
0-6 months    ki1000109-EE               PAKISTAN                       0                  0        5      48
0-6 months    ki1000109-EE               PAKISTAN                       0                  1        0      48
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      394     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       28     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       20     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        2     444
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       26     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      208     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      462     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       28     700
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      808    2235
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1       18    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0     1358    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       51    2235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      399     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       21     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      133     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       12     565
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11859   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      519   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3351   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      144   15873
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3607    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      973    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       45    4703
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       68     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       16     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      128     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       17     229
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       30     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      175     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      164     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       42     217
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       10     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      198     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       14     224
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       89     269
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      169     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       18     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      209     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     231
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       16      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6-24 months   ki1000108-IRC              INDIA                          1                  0        0      14
6-24 months   ki1000108-IRC              INDIA                          1                  1        0      14
6-24 months   ki1000108-IRC              INDIA                          0                  0       13      14
6-24 months   ki1000108-IRC              INDIA                          0                  1        1      14
6-24 months   ki1000109-EE               PAKISTAN                       1                  0       23      47
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       19      47
6-24 months   ki1000109-EE               PAKISTAN                       0                  0        5      47
6-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      47
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      298     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      100     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     417
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       65     176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      131     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       17     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      408     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       58     614
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      624    2090
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       97    2090
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0     1124    2090
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1      245    2090
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      278     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      137     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       94     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7189   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      689   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2104   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      210   10192
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3195    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      500    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      850    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      196    4741


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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/23330987-e496-41e6-bf0c-589fafb70a0b/2784dd4c-0d16-4962-8d67-e401d23fddd3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/23330987-e496-41e6-bf0c-589fafb70a0b/2784dd4c-0d16-4962-8d67-e401d23fddd3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/23330987-e496-41e6-bf0c-589fafb70a0b/2784dd4c-0d16-4962-8d67-e401d23fddd3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/23330987-e496-41e6-bf0c-589fafb70a0b/2784dd4c-0d16-4962-8d67-e401d23fddd3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1855408   0.1017439   0.2693376
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1418888   0.0850150   0.1987627
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0861211   0.0475948   0.1246475
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1473479   0.1158752   0.1788205
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1303208   0.1078877   0.1527540
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1833001   0.1634307   0.2031694
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3387361   0.2943971   0.3830751
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3484513   0.2726221   0.4242804
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0906606   0.0852534   0.0960678
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0947236   0.0850375   0.1044097
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1521605   0.1392004   0.1651207
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1877957   0.1641871   0.2114042
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0216379   0.0117402   0.0315355
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0358661   0.0261746   0.0455577
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0494560   0.0285876   0.0703244
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0784208   0.0327299   0.1241116
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0419248   0.0381637   0.0456858
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0410737   0.0349847   0.0471627
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0211065   0.0152184   0.0269947
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0450330   0.0311885   0.0588775
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1910101   0.1053234   0.2766968
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1175726   0.0645608   0.1705845
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1237790   0.0729337   0.1746242
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1253579   0.0953393   0.1553766
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1335457   0.1092998   0.1577916
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1768939   0.1568874   0.1969004
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3343697   0.2894257   0.3793136
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3278298   0.2501175   0.4055421
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0873818   0.0807455   0.0940180
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0908167   0.0785688   0.1030646
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1384702   0.1262139   0.1507264
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1735933   0.1503666   0.1968200


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1587983   0.1117681   0.2058285
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1659955   0.1505665   0.1814246
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3415929   0.3024539   0.3807320
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0915608   0.0867079   0.0964137
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1609510   0.1491579   0.1727440
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0308725   0.0236998   0.0380452
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0584071   0.0390530   0.0777612
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0417690   0.0384207   0.0451174
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0261535   0.0207066   0.0316005
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1441048   0.0985189   0.1896907
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1636364   0.1477722   0.1795005
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3321364   0.2929882   0.3712847
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0882064   0.0821266   0.0942862
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1468045   0.1358635   0.1577455


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7647313   0.4175689   1.400521
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.7109373   1.0417461   2.810000
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.4065295   1.1513273   1.718300
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0286808   0.8033707   1.317180
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0448154   0.9315134   1.171899
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2341944   1.0661290   1.428754
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.6575641   0.9743071   2.819972
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.5856672   0.7714579   3.259206
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9796996   0.8305936   1.155573
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 2.1336044   1.4159314   3.215034
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.6155311   0.3253840   1.164404
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0127564   0.6300468   1.627936
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.3245942   1.0726051   1.635784
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9804412   0.7482882   1.284619
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0393095   0.8965354   1.204820
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2536511   1.0692593   1.469841


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0267425   -0.0917230   0.0382380
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0424503    0.0073213   0.0775793
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0356747    0.0168820   0.0544675
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0028569   -0.0188780   0.0245917
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0009002   -0.0014676   0.0032680
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0087905    0.0028179   0.0147630
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0092346    0.0004699   0.0179993
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0089511   -0.0038656   0.0217677
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0001557   -0.0016578   0.0013463
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0050470    0.0020201   0.0080739
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0469053   -0.1116826   0.0178720
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0016291   -0.0463287   0.0430705
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0300906    0.0097025   0.0504788
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0022332   -0.0248646   0.0203981
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0008247   -0.0021965   0.0038458
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0083343    0.0024021   0.0142665


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1684053   -0.6559196   0.1755814
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627   0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.3301689    0.0017755   0.5505282
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.2149136    0.0946034   0.3192369
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0083633   -0.0573350   0.0699794
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0098317   -0.0163770   0.0353645
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0546158    0.0167459   0.0910271
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.2991215   -0.0384233   0.5269457
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1532532   -0.0910970   0.3428813
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0037284   -0.0403220   0.0315781
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.1929757    0.0663445   0.3024320
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.3254941   -0.8509971   0.0508172
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691   0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0133370   -0.4542440   0.2938930
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1838872    0.0503484   0.2986479
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0067238   -0.0772382   0.0591748
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0093491   -0.0254697   0.0429857
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0567715    0.0154125   0.0963931
