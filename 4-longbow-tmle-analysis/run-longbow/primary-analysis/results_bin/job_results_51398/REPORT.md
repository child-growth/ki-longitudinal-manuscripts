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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        exclfeed6    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       41     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0      140     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       40     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       17     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      182     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0        4     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        2     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      141     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       83     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       14     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        1     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      177     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       43     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       11     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      241     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       18     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      205     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      217     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       30     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       11      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        8      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        5      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        9      14
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      129     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1       92     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0       83     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1       73     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0      263     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1      158     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1       10     443
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      184     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       26     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      381     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       96     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0      544    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      278    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      809    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      596    2227
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      182     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      230     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       71     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       72     555
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    17210   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     3271   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     4442   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1209   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2741    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      928    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      717    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      306    4692
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0       54     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      165     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1       14     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       17     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      187     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      190     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       33     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      203     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       11     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      254     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      235     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      239     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        8     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       12      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      17
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        6      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        7      13
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      187     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1       34     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0      114     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       38     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0      365     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       50     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0       17     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        5     437
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      205     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1        5     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      442     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       31     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0      740    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1       79    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0     1183    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1      214    2216
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      343     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       56     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      112     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       24     535
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    19026   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1309   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     5015   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      571   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     3534    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       92    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      943    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       34    4603
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       40     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       17     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0      150     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       27     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       16     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      185     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0        4     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        2     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      164     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       61     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       14     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        1     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      185     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       34     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       11     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      241     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       15     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      211     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       35     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      215     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     242
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       14      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      14
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      14
6-24 months                   ki1000108-IRC              INDIA                          0                      0        9      14
6-24 months                   ki1000108-IRC              INDIA                          0                      1        5      14
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      148     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1       71     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0      103     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1       53     375
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0      273     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1      125     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     417
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      134     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       22     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      382     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       77     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0      488    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      233    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      892    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1      477    2090
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      211     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      203     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       77     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       66     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11432   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2123   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2893   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      696   17144
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2809    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      875    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      735    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      292    4711


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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
![](/tmp/4d17fd5a-45cb-4dbd-ac07-0ee14fa282bd/9f88cde7-f561-4cab-8def-0bcb50ff6eed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4d17fd5a-45cb-4dbd-ac07-0ee14fa282bd/9f88cde7-f561-4cab-8def-0bcb50ff6eed/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4d17fd5a-45cb-4dbd-ac07-0ee14fa282bd/9f88cde7-f561-4cab-8def-0bcb50ff6eed/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4d17fd5a-45cb-4dbd-ac07-0ee14fa282bd/9f88cde7-f561-4cab-8def-0bcb50ff6eed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.3026199   0.1812061   0.4240337
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2220583   0.1609469   0.2831696
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                0.4162408   0.3514100   0.4810717
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.4747176   0.3953176   0.5541175
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3757309   0.3177201   0.4337417
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5403211   0.3689051   0.7117371
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1209653   0.0758315   0.1660991
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2041363   0.1681424   0.2401302
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                0.3424123   0.3102014   0.3746232
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                0.4234311   0.3978091   0.4490530
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5590462   0.5109591   0.6071333
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5021848   0.4192418   0.5851279
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1611518   0.1555338   0.1667699
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2116748   0.1995917   0.2237579
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2549840   0.2380643   0.2719037
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2826885   0.2503390   0.3150381
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                0.1557213   0.1079681   0.2034744
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                0.2439252   0.1743898   0.3134607
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0238095   0.0031748   0.0444443
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0655391   0.0432205   0.0878577
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                0.0963215   0.0762088   0.1164342
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                0.1535853   0.1346956   0.1724750
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1406147   0.1064824   0.1747470
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1782627   0.1126255   0.2438999
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0644475   0.0605676   0.0683275
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1044722   0.0957239   0.1132205
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0250846   0.0193165   0.0308528
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0361737   0.0226026   0.0497448
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2653555   0.1487437   0.3819672
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1494917   0.0962243   0.2027590
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                0.3278479   0.2655485   0.3901473
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.3372715   0.2624184   0.4121246
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1354961   0.0804043   0.1905878
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1694176   0.1354046   0.2034306
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                0.3260877   0.2920008   0.3601745
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                0.3488243   0.3236367   0.3740120
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4898394   0.4415155   0.5381634
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4623472   0.3792285   0.5454659
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1594581   0.1528790   0.1660373
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1841034   0.1702397   0.1979671
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2399342   0.2232406   0.2566278
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2735673   0.2419281   0.3052064


### Parameter: E(Y)


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2394958   0.1851615   0.2938300
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3792325   0.3255512   0.4329138
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       NA                   NA                0.3924562   0.3721715   0.4127410
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5441441   0.5026713   0.5856170
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1714373   0.1660817   0.1767929
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2630009   0.2480666   0.2779351
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1258581   0.0910745   0.1606418
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       NA                   NA                0.1322202   0.1181139   0.1463266
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1495327   0.1192863   0.1797792
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0725281   0.0688266   0.0762296
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0273735   0.0221056   0.0326413
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1880342   0.1378627   0.2382057
6-24 months                   ki1000109-EE              PAKISTAN     NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3165468   0.2711185   0.3619751
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba          GAMBIA       NA                   NA                0.3397129   0.3194033   0.3600225
6-24 months                   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1644307   0.1582894   0.1705720
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2477181   0.2329462   0.2624900


### Parameter: RR


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7337860   0.4526142   1.1896267
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    1                 1.1404877   0.9096591   1.4298897
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4380533   1.0053936   2.0569033
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.6875610   1.1190112   2.5449810
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    1                 1.2366117   1.1069869   1.3814152
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.8982887   0.7456302   1.0822021
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    1                 0.8392857   0.3311837   2.1269176
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.3135116   1.2333573   1.3988749
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1086521   0.9728649   1.2633917
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    1                 1.5664222   1.0308991   2.3801346
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.8863636   0.8915751   3.9911028
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 2.7526427   1.0848027   6.9847190
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    1                 1.5945067   1.2528508   2.0293329
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.2677389   0.8158363   1.9699564
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.6210423   1.4697872   1.7878630
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.4420659   0.9183787   2.2643753
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.5633638   0.3196725   0.9928247
6-24 months                   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN     0                    1                 1.0287437   0.7686115   1.3769162
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.1730526   0.5767231   2.3859846
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.2503506   0.7959291   1.9642159
6-24 months                   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA       0                    1                 1.0697257   0.9428987   1.2136120
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9438750   0.7688419   1.1587557
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    1                 0.8450704   0.3342527   2.1365394
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1545560   1.0624662   1.2546278
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1401762   0.9979620   1.3026567


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0631241   -0.1673740   0.0411258
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                 0.0214249   -0.0205304   0.0633802
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035016   -0.0057722   0.0127754
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0566184    0.0164686   0.0967682
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0500439    0.0241313   0.0759566
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0149020   -0.0395933   0.0097893
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0102855    0.0075514   0.0130196
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0080169    0.0000922   0.0159415
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                 0.0373082    0.0027502   0.0718663
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053762   -0.0018898   0.0126422
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0288991    0.0077994   0.0499988
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0358987    0.0185130   0.0532845
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0089180   -0.0096355   0.0274715
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0080805    0.0061331   0.0100279
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0022888   -0.0008567   0.0054343
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0773213   -0.1745820   0.0199394
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                 0.0028188   -0.0377177   0.0433553
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0024764   -0.0094430   0.0143959
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0254795   -0.0227233   0.0736824
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0136253   -0.0140942   0.0413448
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0068951   -0.0314297   0.0176395
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0049726    0.0017751   0.0081700
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0077839   -0.0000146   0.0155824


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.2635708   -0.7821764   0.1041228
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                 0.0489527   -0.0519823   0.1402033
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0092334   -0.0160894   0.0339252
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.3188266    0.0548288   0.5090866
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.1275147    0.0588773   0.1911462
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0273862   -0.0738481   0.0170655
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0599957    0.0440994   0.0756275
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0304822   -0.0001770   0.0602017
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                 0.1932774   -0.0033204   0.3513524
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0427163   -0.0166271   0.0985957
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.5482804   -0.0076391   0.7974964
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.2715070    0.1304470   0.3896841
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0596391   -0.0725104   0.1755058
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1114124    0.0845256   0.1375095
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0836143   -0.0376770   0.1907281
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.4112086   -1.0264283   0.0172316
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                 0.0085245   -0.1219609   0.1238344
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0078232   -0.0309120   0.0451030
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1582820   -0.2013484   0.4102550
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0401082   -0.0450516   0.1183284
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0142772   -0.0663836   0.0352832
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0302410    0.0107026   0.0493936
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0314224   -0.0006306   0.0624487
