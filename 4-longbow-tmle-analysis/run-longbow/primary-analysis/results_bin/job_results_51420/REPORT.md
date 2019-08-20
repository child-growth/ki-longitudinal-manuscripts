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

agecat                        studyid                    country                        exclfeed6    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       54     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        4     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      172     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        8     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       17     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      191     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        3     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0        5     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        1     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      215     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1        9     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       15     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      217     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       11     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        0     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      256     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        3     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      237     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      241     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        6     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       15      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        4      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      19
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        9      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        5      14
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      193     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       28     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0      133     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1       23     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      368     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       1       53     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       0       20     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        2     443
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      206     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1        4     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      462     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       15     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0      721    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      101    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0     1157    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1      248    2227
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      334     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       78     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0      109     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       34     555
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       46     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        1     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    19793   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      688   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5393   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      258   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3520    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      149    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      974    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       49    4692
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       56     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      174     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        5     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       17     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      192     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        2     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0        6     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      218     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      217     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       11     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      258     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        1     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      244     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      245     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        2     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       14      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      17
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        9      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        4      13
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      214     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        7     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      143     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        9     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      400     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       15     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       0       21     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     437
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      209     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        1     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      468     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1        5     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0      794    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       25    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0     1327    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1       70    2216
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      388     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       11     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      131     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1        5     535
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    20022   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      313   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5465   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      121   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3612    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       14    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      970    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        7    4603
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       55     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      174     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        3     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       16     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      189     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        2     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0        5     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        1     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      221     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        4     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       15     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      217     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       11     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        0     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      254     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        2     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      237     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      237     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        4     242
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       17      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      19
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0      14
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0      14
6-24 months                   ki1000108-IRC              INDIA                          0                       0       13      14
6-24 months                   ki1000108-IRC              INDIA                          0                       1        1      14
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      196     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       23     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0      140     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       16     375
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       0      359     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       1       39     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       0       18     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     417
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       21     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      153     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1        3     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      449     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1       10     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0      642    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1       79    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0     1186    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1      183    2090
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      340     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       74     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      108     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       35     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       44     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        1     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13154   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      401   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3438   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      151   17144
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3540    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      144    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      980    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       47    4711


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
![](/tmp/1d2a520b-bceb-4325-9dcd-9f288fa31ad9/2fb2b0a5-f67f-4b0d-9b90-a32887c3ba1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d2a520b-bceb-4325-9dcd-9f288fa31ad9/2fb2b0a5-f67f-4b0d-9b90-a32887c3ba1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1d2a520b-bceb-4325-9dcd-9f288fa31ad9/2fb2b0a5-f67f-4b0d-9b90-a32887c3ba1c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1d2a520b-bceb-4325-9dcd-9f288fa31ad9/2fb2b0a5-f67f-4b0d-9b90-a32887c3ba1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1313253    0.0870732   0.1755773
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1421005    0.0877847   0.1964163
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1208422    0.0984852   0.1431992
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1780984    0.1581775   0.1980194
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1894171    0.1515232   0.2273110
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2388334    0.1681658   0.3095010
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0341561    0.0312558   0.0370564
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0446503    0.0385005   0.0508000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0410788    0.0340242   0.0481333
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0464535    0.0315627   0.0613442
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0316742    0.0085536   0.0547948
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0592105    0.0216393   0.0967817
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0303150    0.0184804   0.0421496
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0495608    0.0381096   0.0610121
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0275689    0.0114881   0.0436497
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0367647    0.0051079   0.0684215
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0153187    0.0133817   0.0172557
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0216072    0.0171203   0.0260941
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0038610    0.0005657   0.0071563
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0071648   -0.0009975   0.0153271
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1053894    0.0651557   0.1456230
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.0963686    0.0509528   0.1417844
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1080083    0.0852767   0.1307400
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1353870    0.1172667   0.1535073
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1796746    0.1427561   0.2165931
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2445581    0.1728406   0.3162756
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0304586    0.0273495   0.0335677
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0392051    0.0321054   0.0463048
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0401704    0.0331312   0.0472095
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0433756    0.0297386   0.0570125


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1567131   0.1416114   0.1718148
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2018018   0.1683814   0.2352222
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0362008   0.0335769   0.0388247
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0421995   0.0359388   0.0484602
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.0428954   0.0223052   0.0634857
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0428700   0.0344343   0.0513058
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0299065   0.0154599   0.0443532
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0167432   0.0149025   0.0185839
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045622   0.0014549   0.0076696
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1253589   0.1111594   0.1395583
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1956912   0.1627145   0.2286679
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0321979   0.0292806   0.0351151
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0405434   0.0345125   0.0465743


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0820499   0.6525772   1.794166
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.4738102   1.1886702   1.827350
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2608860   0.8821257   1.802275
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3072418   1.1119195   1.536875
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1308383   0.7836375   1.631871
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.8693609   0.7106352   4.917446
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.6348616   1.0386916   2.573211
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3335561   0.4713373   3.773035
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4105089   1.1102225   1.792015
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8556807   0.4431119   7.771289
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.9144054   0.4990249   1.675542
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2534867   0.9776177   1.607202
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3611165   0.9513336   1.947412
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2871605   1.0488756   1.579579
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0797904   0.7512620   1.551985


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0039532   -0.0250075   0.0329140
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0358709    0.0170057   0.0547361
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0123847   -0.0083185   0.0330879
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0020447    0.0005294   0.0035600
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0011207   -0.0023420   0.0045834
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0112212   -0.0068085   0.0292510
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0125550    0.0021560   0.0229541
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0023376   -0.0066948   0.0113701
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0014245    0.0003914   0.0024575
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007012   -0.0011789   0.0025814
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0013894   -0.0272498   0.0244710
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0173505   -0.0016301   0.0363312
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0160166   -0.0046462   0.0366794
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017393    0.0000782   0.0034003
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0003731   -0.0028812   0.0036273


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0292229   -0.2101109   0.2212216
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2288953    0.1000602   0.3392863
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0613706   -0.0467011   0.1582840
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0564832    0.0138877   0.0972388
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0265570   -0.0590182   0.1052173
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2615950   -0.2734458   0.5718374
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2928627    0.0120817   0.4938415
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0781642   -0.2761142   0.3340868
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0850766    0.0223483   0.1437801
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1537047   -0.3648067   0.4752255
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0133593   -0.2952443   0.2071788
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1384069   -0.0265233   0.2768380
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0818462   -0.0293428   0.1810246
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0540176    0.0016081   0.1036760
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0092013   -0.0745170   0.0863969
