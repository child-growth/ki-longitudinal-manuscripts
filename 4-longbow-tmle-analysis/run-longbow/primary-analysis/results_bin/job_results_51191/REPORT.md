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

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* month
* brthmon
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

agecat                       studyid                    country                        predfeed6    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       45     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       61     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       28     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        4     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      135     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       24     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        4     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        9     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       84     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       97     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       18     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        9     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      136     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       45     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       45     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       58     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       47     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1       88     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      125     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       35     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      173     210
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       16     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      119     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       17     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1       97     249
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      141     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      236     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       37     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       87     501
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    10992   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3604   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2482   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1053   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1558    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1125    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      365    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      310    3358
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       87     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       70     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       30     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      142     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       17     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       11     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        2     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      140     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       41     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       26     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      169     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       72     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       31     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0       78     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       57     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      150     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       71     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      146     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       62     210
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       48     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       87     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       51     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       63     249
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      307     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       70     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       95     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       29     501
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12827   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1769   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2889   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      646   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2446    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      600    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3358
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       42     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       24     154
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       27     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      132     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        4     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        7     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       84     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       56     151
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       18     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        8     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      135     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       33     194
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       44     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       27     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       46     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       31     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       95     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       54     149
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      111     144
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       14      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       32      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       17      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       34      97
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      137     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      166     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       36     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       58     397
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6741   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1837   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1422   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      412   10412
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1553    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      889    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      363    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      236    3041


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/33bff427-e136-4c50-b982-64e6a34951ab/3a700ea8-f17d-421b-9d1f-5f878961acb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33bff427-e136-4c50-b982-64e6a34951ab/3a700ea8-f17d-421b-9d1f-5f878961acb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/33bff427-e136-4c50-b982-64e6a34951ab/3a700ea8-f17d-421b-9d1f-5f878961acb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/33bff427-e136-4c50-b982-64e6a34951ab/3a700ea8-f17d-421b-9d1f-5f878961acb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5836198   0.4890163   0.6782234
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5085871   0.4065499   0.6106243
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                0.3333333   0.1550928   0.5115739
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2486188   0.1855009   0.3117367
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.5631229   0.4670126   0.6592332
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.6473529   0.5686882   0.7260175
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                0.8809209   0.8253092   0.9365326
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                0.8522715   0.7862109   0.9183321
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6272273   0.5785071   0.6759476
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7001618   0.6191457   0.7811779
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.3699950   0.1818772   0.5581127
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4278957   0.3467418   0.5090496
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2471703   0.2387000   0.2556406
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2944034   0.2794915   0.3093154
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4180538   0.3960101   0.4400975
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4670029   0.4247605   0.5092453
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1768422   0.1039763   0.2497081
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2425141   0.1543517   0.3306765
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.2972830   0.2096113   0.3849546
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.4216977   0.3413932   0.5020022
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                0.6489875   0.5713149   0.7266601
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                0.5483355   0.4590918   0.6375792
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1852634   0.1461230   0.2244038
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2353757   0.1601731   0.3105782
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1224643   0.1163829   0.1285457
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1754810   0.1630150   0.1879471
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0864594   0.0730914   0.0998275
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1194805   0.0929193   0.1460416
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4814619   0.3758452   0.5870786
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3671431   0.2535402   0.4807460
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                0.3076923   0.1298269   0.4855577
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                0.1964286   0.1361962   0.2566610
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                0.3877761   0.2745474   0.5010047
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                0.4153195   0.3039466   0.5266924
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                0.6927380   0.5571246   0.8283514
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                0.6764160   0.5482642   0.8045678
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5483422   0.4923238   0.6043607
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6165106   0.5182561   0.7147652
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4279470   0.2396443   0.6162497
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4619826   0.3771089   0.5468563
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2145111   0.2043753   0.2246469
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2227626   0.2035818   0.2419433
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3638101   0.3416892   0.3859311
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3985151   0.3525970   0.4444331


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5404040   0.4708116   0.6099965
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2596154   0.1998903   0.3193405
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         NA                   NA                0.6134454   0.5514489   0.6754419
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6447106   0.6027601   0.6866610
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2568529   0.2489241   0.2647817
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4273377   0.4072583   0.4474171
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2070707   0.1504870   0.2636544
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         NA                   NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1976048   0.1627023   0.2325072
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1331973   0.1275046   0.1388899
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0929124   0.0809295   0.1048954
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4285714   0.3501572   0.5069857
6-24 months                  ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED     PERU         NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months                  ki1000109-EE          PAKISTAN     NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2160008   0.2065441   0.2254575
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3699441   0.3495174   0.3903708


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8714356   0.6736923   1.127221
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    1                 0.7458564   0.4126520   1.348113
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    1                 1.1495766   0.9350880   1.413264
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    1                 0.9674778   0.8751529   1.069543
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1162808   0.9716592   1.282428
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    1                 1.1564906   0.6716083   1.991444
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1910956   1.1274950   1.258284
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1170880   1.0093464   1.236330
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.3713587   0.7907464   2.378291
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    1                 1.4185062   1.0098410   1.992551
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    1                 0.8449092   0.6958252   1.025935
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2704918   0.8670332   1.861693
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4329153   1.3216478   1.553550
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3819249   1.0555043   1.809293
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7625590   0.5260266   1.105450
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    1                 0.6383929   0.3318214   1.228207
6-24 months                  ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     PERU         0                    1                 1.0710291   0.7189061   1.595623
6-24 months                  ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000109-EE          PAKISTAN     0                    1                 0.9764384   0.7415659   1.285701
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1243173   0.9316487   1.356831
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    1                 1.0795322   0.6703082   1.738588
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0384662   0.9475982   1.138048
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0953929   0.9646772   1.243821


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0432158   -0.1090628   0.0226312
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0737179   -0.2383049   0.0908690
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                 0.0503225   -0.0195650   0.1202100
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                -0.0134510   -0.0533066   0.0264045
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0174832   -0.0058661   0.0408325
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0528622   -0.1193823   0.2251067
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0096826    0.0066620   0.0127032
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0092839    0.0001097   0.0184582
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0302285   -0.0228286   0.0832856
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                 0.0724649    0.0063581   0.1385718
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                -0.0465778   -0.0995004   0.0063447
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0123414   -0.0086825   0.0333652
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0107330    0.0081513   0.0133146
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0064530    0.0006802   0.0122258
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0528905   -0.1202367   0.0144558
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0963521   -0.2590599   0.0663557
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                 0.0041158   -0.0781297   0.0863613
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                -0.0123256   -0.1148262   0.0901749
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0158895   -0.0105419   0.0423209
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0288431   -0.1428151   0.2005012
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0014896   -0.0020849   0.0050641
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0061339   -0.0036675   0.0159354


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0799694   -0.2097303   0.0358728
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.2839506   -1.1031613   0.2161661
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                 0.0820326   -0.0401555   0.1898671
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                -0.0155061   -0.0625772   0.0294799
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0271180   -0.0098899   0.0627697
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.1250119   -0.3951087   0.4512226
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0376972    0.0258128   0.0494365
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0217250   -0.0000014   0.0429794
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1459815   -0.1506770   0.3661578
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                 0.1959847   -0.0056371   0.3571831
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                -0.0773192   -0.1698531   0.0078954
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0624548   -0.0497708   0.1626829
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0805794    0.0609292   0.0998183
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0694525    0.0043898   0.1302634
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1234111   -0.2927812   0.0237695
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                -0.4559099   -1.4667862   0.1407144
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                 0.0105024   -0.2232606   0.1995937
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                -0.0181150   -0.1806220   0.1220237
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0281613   -0.0199512   0.0740043
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0631430   -0.3994602   0.3728288
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0068965   -0.0097960   0.0233130
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0165807   -0.0102336   0.0426834
