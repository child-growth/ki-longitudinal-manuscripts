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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
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

agecat                       studyid                    country                        exclfeed6    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       12     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       16     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       78     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       89     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0        8     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      146     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       30     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        0     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        1     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       83     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1      101     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0        3     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        2     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      143     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       51     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        0     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        4     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       90     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      143     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       91     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      121     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       28     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      169     197
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       13      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        4      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        9      13
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        4      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       19      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        2      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1        2      27
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      132     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       63     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      263     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      175     633
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      401    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      350    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      566    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      706    2023
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      130     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      222     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       34     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       85     471
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6237   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2188   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1786   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      598   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1558    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1122    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      400    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      317    3397
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       21     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        7     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      134     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       33     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0        9     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      156     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       20     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0        1     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        0     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      140     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       44     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0        5     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      182     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        2     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        2     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      147     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       86     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      146     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       66     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      137     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       60     197
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       11      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        8      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      13
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0        8      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       15      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0        3      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1        1      27
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      169     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       26     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      363     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       75     633
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      582    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      169    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      923    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      349    2023
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      286     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       66     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       88     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       31     471
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7278   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1145   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2073   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      310   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2432    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      625    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3369
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       12     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1        9     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       76     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       56     153
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0        8     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        1     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      144     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1       10     163
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        0     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        1     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       83     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       57     141
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0        3     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        2     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      142     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       39     186
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        0     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        2     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       89     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       57     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       90     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       55     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       26     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      109     135
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       10      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      11
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       8
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       8
6-24 months                  ki1000108-IRC              INDIA                          0                       0        4       8
6-24 months                  ki1000108-IRC              INDIA                          0                       1        4       8
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        4      11
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1        4      11
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        2      11
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        1      11
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       75     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       37     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      244     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1      100     456
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      328    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      181    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      541    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      357    1407
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      126     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      156     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       33     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       54     369
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     3708    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1051    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1122    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      289    6170
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1553    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      887    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      397    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      247    3084


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/1def58b6-897c-465c-acca-a9dc049d9b0b/9d5d4845-65cf-404e-907d-eb7afe74bbea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1def58b6-897c-465c-acca-a9dc049d9b0b/9d5d4845-65cf-404e-907d-eb7afe74bbea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1def58b6-897c-465c-acca-a9dc049d9b0b/9d5d4845-65cf-404e-907d-eb7afe74bbea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1def58b6-897c-465c-acca-a9dc049d9b0b/9d5d4845-65cf-404e-907d-eb7afe74bbea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5864678    0.3344382   0.8384974
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5297801    0.4528753   0.6066849
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3339431    0.2673659   0.4005203
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4015708    0.3563744   0.4467671
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                0.4761221    0.4414371   0.5108070
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                0.5503425    0.5234933   0.5771917
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6301038    0.5800806   0.6801270
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7131402    0.6368961   0.7893842
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                0.3442370    0.1590729   0.5294011
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                0.4266057    0.3457830   0.5074283
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2591866    0.2481498   0.2702235
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2525092    0.2353544   0.2696641
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4157015    0.3938102   0.4375929
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4551057    0.4130243   0.4971870
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2500000    0.0892000   0.4108000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1976048    0.1370569   0.2581527
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1496918    0.0932520   0.2061316
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1719715    0.1351292   0.2088138
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                0.2228054    0.1936714   0.2519394
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                0.2774281    0.2532129   0.3016432
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1872445    0.1465675   0.2279216
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2765462    0.1964183   0.3566742
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1345440    0.1262679   0.1428200
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1351583    0.1219511   0.1483655
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0868514    0.0733834   0.1003194
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1148739    0.0895738   0.1401741
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4285714    0.2162201   0.6409227
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4242424    0.3396538   0.5088310
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2958595    0.2096392   0.3820797
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2972696    0.2494798   0.3450593
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                0.3550701    0.3142033   0.3959369
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                0.3956180    0.3639056   0.4273304
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5565560    0.4985225   0.6145895
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6227501    0.5229465   0.7225536
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                0.4198322    0.2271208   0.6125436
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                0.4620928    0.3771768   0.5470087
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2200094    0.2066949   0.2333239
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2074853    0.1828158   0.2321549
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3624155    0.3405964   0.3842347
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3910292    0.3442183   0.4378401


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5384615   0.4683114   0.6086117
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       NA                   NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6518047   0.6087352   0.6948741
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2577482   0.2478575   0.2676389
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4236091   0.4038600   0.4433581
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       NA                   NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2059448   0.1693853   0.2425043
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1346474   0.1274032   0.1418916
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0926091   0.0806150   0.1046031
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4248366   0.3462528   0.5034204
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1101329-Keneba          GAMBIA       NA                   NA                0.3823738   0.3569722   0.4077755
6-24 months                  ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5691057   0.5185109   0.6197005
6-24 months                  ki1148112-LCNI-5          MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2171799   0.2048085   0.2295513
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3677043   0.3477044   0.3877041


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9033405   0.5730797   1.423928
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0501122   0.6736522   1.636951
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.2025125   0.9628379   1.501848
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    1                 1.1558854   1.0616300   1.258509
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1317820   0.9944539   1.288074
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    1                 1.2392790   0.6989736   2.197240
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9742372   0.9041135   1.049800
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0947895   0.9873036   1.213977
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7904192   0.3876519   1.611658
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.7972350   0.5064696   6.377587
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1488371   0.7445078   1.772751
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    1                 1.2451587   1.0681795   1.451460
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.4769255   1.0284950   2.120875
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0045658   0.8980282   1.123743
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.3226493   1.0115181   1.729481
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9898990   0.5802758   1.688680
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.0047662   0.7239612   1.394488
6-24 months                  ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba          GAMBIA       0                    1                 1.1141969   0.9706775   1.278936
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1189351   0.9268503   1.350828
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    1                 1.1006606   0.6703643   1.807157
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9430748   0.8316133   1.069476
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0789526   0.9463108   1.230187


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0480062   -0.2885964   0.1925839
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0013174   -0.0112602   0.0138950
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0420443   -0.0138618   0.0979503
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0458750    0.0188309   0.0729191
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0217008   -0.0008983   0.0443000
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0786202   -0.0911840   0.2484244
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0014385   -0.0056226   0.0027457
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0079075   -0.0016511   0.0174661
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0448718   -0.1920444   0.1023008
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0068035   -0.0151879   0.0287949
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0098659   -0.0393144   0.0590461
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0332500    0.0099344   0.0565656
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0187003   -0.0040135   0.0414141
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0001034   -0.0032261   0.0034330
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0057577    0.0000223   0.0114931
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0037348   -0.2009403   0.1934706
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0045791   -0.0692586   0.0784169
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                 0.0273037   -0.0054290   0.0600365
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0125497   -0.0140153   0.0391146
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                 0.0369579   -0.1388360   0.2127518
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0028295   -0.0088401   0.0031810
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0052888   -0.0051246   0.0157022


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0891545   -0.6414017   0.2772900
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0021474   -0.0184658   0.0223435
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1118236   -0.0501656   0.2488258
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0878836    0.0344457   0.1383640
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0332935   -0.0022391   0.0675663
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                 0.1859261   -0.3354463   0.5037492
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0055808   -0.0219306   0.0105073
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0186670   -0.0041711   0.0409858
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.2187500   -1.1940228   0.3230009
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0331037   -0.0733606   0.1290081
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0618326   -0.3030728   0.3245519
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                 0.1298547    0.0339805   0.2162137
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0908023   -0.0256157   0.1940057
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0007683   -0.0242727   0.0251971
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0621719   -0.0026942   0.1228417
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0087912   -0.5982356   0.3632605
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0152415   -0.2640152   0.2328025
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                 0.0714059   -0.0182663   0.1531813
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0220516   -0.0258802   0.0677438
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                 0.0809079   -0.3976464   0.3956051
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0130284   -0.0411565   0.0143398
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0143832   -0.0142962   0.0422517
