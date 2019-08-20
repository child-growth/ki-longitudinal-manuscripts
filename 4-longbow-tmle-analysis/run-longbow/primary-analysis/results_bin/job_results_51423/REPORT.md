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

agecat                        studyid                    country                        predexfd6    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0      117     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        8     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      109     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        4     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       35     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      173     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        3     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       18     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        1     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      202     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1        9     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       29     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      203     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0      112     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        2     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      155     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        1     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      240     248
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    19824   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      691   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5362   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      255   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3535    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      149    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      959    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       49    4692
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      120     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      110     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       35     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      174     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        2     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       19     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      205     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       29     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      203     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0      113     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        1     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      156     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        0     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      241     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      244     248
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    20055   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      314   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5432   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      120   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3626    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       14    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      956    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        7    4603
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0      121     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        3     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      108     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        2     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       34     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      171     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       17     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        1     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      209     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        4     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       29     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      203     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0      111     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        1     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      154     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        1     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      236     242
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13176   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      403   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3416   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      149   17144
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3554    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      144    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      966    4711
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
![](/tmp/ae7c6b16-e645-40cb-99be-f8e1d4d45963/02307340-5c17-40bc-b1d0-7ed97e3a2597/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae7c6b16-e645-40cb-99be-f8e1d4d45963/02307340-5c17-40bc-b1d0-7ed97e3a2597/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae7c6b16-e645-40cb-99be-f8e1d4d45963/02307340-5c17-40bc-b1d0-7ed97e3a2597/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae7c6b16-e645-40cb-99be-f8e1d4d45963/02307340-5c17-40bc-b1d0-7ed97e3a2597/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1335533    0.0890761   0.1780306
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1386821    0.0845797   0.1927845
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1202641    0.0979297   0.1425985
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1787209    0.1587339   0.1987078
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1893346    0.1514639   0.2272053
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2350097    0.1644482   0.3055713
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0341917    0.0313043   0.0370790
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0439561    0.0378295   0.0500826
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0409413    0.0338730   0.0480096
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0468877    0.0317188   0.0620566
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0316742    0.0085536   0.0547948
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0592105    0.0216393   0.0967817
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0308552    0.0190770   0.0426334
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0499404    0.0384917   0.0613891
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0275689    0.0114881   0.0436497
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0367647    0.0051079   0.0684215
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0153715    0.0134299   0.0173132
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0212218    0.0168053   0.0256383
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0038462    0.0005634   0.0071289
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0072690   -0.0010104   0.0155483
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1055796    0.0651350   0.1460242
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.0992462    0.0533823   0.1451100
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1080477    0.0854546   0.1306408
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1352070    0.1171237   0.1532903
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1798041    0.1429525   0.2166558
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2452485    0.1736548   0.3168422
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0305388    0.0274228   0.0336548
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0391663    0.0320132   0.0463193
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0398576    0.0328851   0.0468301
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0426347    0.0297665   0.0555030


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
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0384026   0.6221819   1.733062
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.4860702   1.1980154   1.843386
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2412403   0.8651806   1.780758
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2855785   1.0925021   1.512777
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1452436   0.7911157   1.657890
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.8693609   0.7106352   4.917446
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.6185416   1.0369396   2.526354
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3335561   0.4713373   3.773035
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3805883   1.0863989   1.754442
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8899273   0.4513187   7.914197
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.9400128   0.5166172   1.710404
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2513635   0.9773950   1.602127
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3639758   0.9539880   1.950161
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2825097   1.0442328   1.575158
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0696770   0.7537399   1.518042


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0017252   -0.0276938   0.0311442
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0364490    0.0175566   0.0553414
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0124672   -0.0081604   0.0330949
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0020092    0.0005220   0.0034963
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0012582   -0.0022107   0.0047272
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0112212   -0.0068085   0.0292510
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0120148    0.0016588   0.0223709
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0023376   -0.0066948   0.0113701
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0013716    0.0003436   0.0023997
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007161   -0.0011592   0.0025914
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0015796   -0.0275230   0.0243638
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0173111   -0.0015487   0.0361710
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0158871   -0.0047755   0.0365497
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0016591   -0.0000097   0.0033279
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0006858   -0.0024917   0.0038633


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0127530   -0.2303951   0.2078507
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2325843    0.1035744   0.3430276
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0617795   -0.0458889   0.1583640
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0555006    0.0137170   0.0955139
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0298159   -0.0559596   0.1086239
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2615950   -0.2734458   0.5718374
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2802618    0.0020035   0.4809370
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0781642   -0.2761142   0.3340868
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0819226    0.0194412   0.1404227
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1569597   -0.3595588   0.4772444
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0151883   -0.2979970   0.2060017
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1380928   -0.0256204   0.2756734
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0811844   -0.0299407   0.1803197
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0515278   -0.0011599   0.1014428
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0169161   -0.0648615   0.0924134
