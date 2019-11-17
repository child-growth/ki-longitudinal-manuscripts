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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** exclfeed6

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

agecat                        studyid                    country                        exclfeed6    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       31     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      190     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       10     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       12     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      194     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        4     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0        2     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        0     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      202     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       12     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0        5     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      217     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0        5     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        0     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      262     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        4     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      226     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      227     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8     235
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       15      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        4      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      19
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        9      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        5      14
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0       38      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1        5      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0        4      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1        1      48
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      368     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       1       53     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       0       20     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        2     443
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      197     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1        4     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      471     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       15     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0      722    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      101    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0     1159    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1      244    2226
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      330     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       87     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0      104     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       39     560
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       47     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        0     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11752   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      433   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3358   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      123   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3519    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      147    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1005    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       51    4722
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       32     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      193     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        6     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       12     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      195     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        3     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0        2     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      207     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        6     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0        5     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      217     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0        5     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      265     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        1     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      233     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      232     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        3     235
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       14      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      17
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        9      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        4      13
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0       42      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        0      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0        4      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        1      47
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      400     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       15     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       0       21     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     437
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      200     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        1     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      477     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1        5     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0      793    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       25    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0     1326    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1       66    2210
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      386     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       20     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      128     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       10     544
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11883   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      201   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3390   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1       59   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3595    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       14    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      977    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        7    4593
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       32     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        1     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      193     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        4     230
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       12     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      194     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0        2     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        0     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      209     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        6     217
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0        5     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      217     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     224
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0        5     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        0     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      261     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        3     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      226     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     235
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      226     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        5     231
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       17      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      19
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0      14
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0      14
6-24 months                   ki1000108-IRC              INDIA                          0                       0       13      14
6-24 months                   ki1000108-IRC              INDIA                          0                       1        1      14
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0       37      47
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1        5      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0        5      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1        0      47
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       0      359     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       1       39     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       0       18     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     417
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       21     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      145     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1        3     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      457     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1       10     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0      642    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1       79    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0     1186    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1      183    2090
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      341     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       74     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      108     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       34     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       45     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        0     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7616   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      251   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2266   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       69   10202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3538    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      144    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1011    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       49    4742


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/75bf304c-34c2-4a32-8ba8-9b918c253aa9/36b1f446-23df-44c3-b547-420ffbabe640/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75bf304c-34c2-4a32-8ba8-9b918c253aa9/36b1f446-23df-44c3-b547-420ffbabe640/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/75bf304c-34c2-4a32-8ba8-9b918c253aa9/36b1f446-23df-44c3-b547-420ffbabe640/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75bf304c-34c2-4a32-8ba8-9b918c253aa9/36b1f446-23df-44c3-b547-420ffbabe640/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1237920    0.1008960   0.1466880
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1761115    0.1562159   0.1960071
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2097253    0.1706857   0.2487649
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2719862    0.1981656   0.3458068
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0355571    0.0319173   0.0391968
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0353034    0.0279649   0.0426418
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0411362    0.0340752   0.0481971
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0457471    0.0320969   0.0593972
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0304753    0.0186782   0.0422723
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0473320    0.0361497   0.0585142
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0491141    0.0280037   0.0702245
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0698241    0.0262623   0.1133858
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0166247    0.0139999   0.0192496
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0171006    0.0116069   0.0225943
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0038792    0.0005950   0.0071633
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0071138   -0.0003332   0.0145609
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1115767    0.0883709   0.1347825
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1339194    0.1158781   0.1519606
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1797183    0.1428712   0.2165653
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2413929    0.1704130   0.3123728
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0319263    0.0274270   0.0364255
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0294969    0.0218612   0.0371326
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0401967    0.0333867   0.0470066
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0421358    0.0293779   0.0548936


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1549865   0.1399495   0.1700235
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2250000   0.1903834   0.2596166
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0354909   0.0322227   0.0387591
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0419314   0.0358274   0.0480353
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0411765   0.0328905   0.0494625
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0551471   0.0359475   0.0743466
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0167386   0.0143298   0.0191473
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045722   0.0015532   0.0075911
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1253589   0.1111594   0.1395583
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1938959   0.1610341   0.2267576
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0313664   0.0274269   0.0353059
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0407001   0.0348212   0.0465791


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.4226401   1.1465781   1.765170
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2968688   0.9330460   1.802557
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9928656   0.7875744   1.251669
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1120892   0.7859567   1.573550
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.5531269   0.9867868   2.444503
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4216706   0.6657357   3.035961
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0286237   0.7220636   1.465337
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8338415   0.4728250   7.112514
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2002448   0.9370892   1.537300
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3431742   0.9384006   1.922545
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9239075   0.6912632   1.234848
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0482398   0.7401345   1.484604


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0311945    0.0119150   0.0504740
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0152747   -0.0060656   0.0366150
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000662   -0.0018858   0.0017534
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007952   -0.0026683   0.0042588
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0107012    0.0004611   0.0209412
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0060330   -0.0062489   0.0183148
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001138   -0.0012227   0.0014504
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0006930   -0.0010617   0.0024476
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0137821   -0.0055972   0.0331614
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0141776   -0.0061087   0.0344639
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0005599   -0.0025506   0.0014309
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0005034   -0.0027511   0.0037580


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2012725    0.0677764   0.3156518
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0678875   -0.0315730   0.1577584
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0018651   -0.0544808   0.0481252
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0189651   -0.0673046   0.0982617
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2598862   -0.0285163   0.4674188
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1093976   -0.1401435   0.3043221
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0068008   -0.0762379   0.0834325
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1515655   -0.3333170   0.4601126
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1099415   -0.0584417   0.2515372
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0731197   -0.0370674   0.1715997
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0178488   -0.0832630   0.0436153
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0123697   -0.0710040   0.0892531
