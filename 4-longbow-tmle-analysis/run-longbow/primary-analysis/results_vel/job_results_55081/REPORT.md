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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
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
* W_birthwt
* W_birthlen
* single
* W_nrooms
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
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        predfeed36    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  -----------  -------  -----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 83    245  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                162    245  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 27    217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                190    217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 18    235  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0                217    235  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                  9    230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                221    230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1                 77    280  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0                203    280  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  5    268  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                263    268  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                228    232  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       1                  3      7  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       0                  4      7  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                373    466  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    466  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1               7731   9920  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               2189   9920  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1916   2293  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                377   2293  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 78    232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                154    232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 25    208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                183    208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 17    228  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0                211    228  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                  8    232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                224    232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1                 70    267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0                197    267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    240  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                237    240  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    235  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                230    235  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       1                  3      7  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       0                  4      7  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                367    460  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    460  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1               5133   6658  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               1525   6658  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1485   1755  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                270   1755  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 73    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                151    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 25    198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                173    198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1                 17    228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0                211    228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                  8    229  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                221    229  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1                 67    245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0                178    245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                225    228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    224  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       1                  4      9  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       0                  5      9  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    139  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                139    139  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                377    467  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                 90    467  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         1                 23    144  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         0                121    144  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2196   2769  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                573   2769  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 75    225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                150    225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 23    194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                171    194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1                 16    224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0                208    224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                  7    228  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                221    228  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1                 65    235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0                170    235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  4    230  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                226    230  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    223  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    138  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                138    138  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                345    421  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                 76    421  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         1                 10     31  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         0                 21     31  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               2377   3053  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                676   3053  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69    212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                143    212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 22    184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                162    184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1                 16    223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0                207    223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                  7    229  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                222    229  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1                 60    224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0                164    224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                222    225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                221    225  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    137  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                137    137  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                339    417  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    417  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         1                  0      1  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         0                  1      1  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2362   3043  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                681   3043  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 70    212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                142    212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 22    175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                153    175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1                 17    224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0                207    224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1                 59    214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0                155    214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                221    224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    219  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                215    219  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    129  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                129    129  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                351    437  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                 86    437  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         1                  0      4  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         0                  4      4  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2347   3005  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                658   3005  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 68    209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                141    209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                147    167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1                 17    224  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0                207    224  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1                 53    202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0                149    202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    232  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                229    232  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    207  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                203    207  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       1                  2      7  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       0                  5      7  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                334    412  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    412  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         1                 28    166  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         0                138    166  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 67    207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                140    207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                145    165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1                 17    223  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0                206    223  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1                 48    189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0                141    189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    233  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                230    233  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    205  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                201    205  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       1                  0      2  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       0                  2      2  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                260    316  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 56    316  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         1                 24    134  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         0                110    134  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/2a683e53-fbdd-413b-b4ea-76b357c9aa82/e6f647f5-2ca1-4937-9ed1-a74ecc69a070/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2a683e53-fbdd-413b-b4ea-76b357c9aa82/e6f647f5-2ca1-4937-9ed1-a74ecc69a070/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2a683e53-fbdd-413b-b4ea-76b357c9aa82/e6f647f5-2ca1-4937-9ed1-a74ecc69a070/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8687140   0.8316257   0.9058023
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.8848243   0.8551321   0.9145166
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.1776862   1.0357411   1.3196314
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.0526783   1.0173916   1.0879649
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.7825432   0.6924767   0.8726097
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.7558567   0.7327043   0.7790090
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.8917231   0.7591937   1.0242525
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.9592919   0.9317769   0.9868068
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                1.0224690   0.9752999   1.0696381
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.9516559   0.9221721   0.9811397
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                1.1240287   0.9802729   1.2677845
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.9375440   0.9105230   0.9645650
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8385423   0.8185796   0.8585051
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.7922806   0.7531595   0.8314016
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.8559213   0.8514910   0.8603515
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.8574327   0.8482018   0.8666637
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.7619144   0.7473403   0.7764885
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.7061516   0.6748297   0.7374735
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4716293   0.4432332   0.5000255
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4768224   0.4555099   0.4981349
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.5946779   0.5063348   0.6830209
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.5764087   0.5429029   0.6099145
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.3790752   0.3009362   0.4572143
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.4442438   0.4261726   0.4623151
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.4237838   0.3564157   0.4911520
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.5256796   0.5049974   0.5463618
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                0.5197411   0.4796043   0.5598779
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.4913759   0.4699045   0.5128473
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4474229   0.3122280   0.5826178
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4580815   0.4333589   0.4828041
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.4960322   0.4799281   0.5121363
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4943679   0.4661746   0.5225611
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.4385445   0.4339807   0.4431083
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.4345860   0.4216656   0.4475064
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.4380491   0.4279758   0.4481225
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.4428157   0.4205460   0.4650854
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2318653   0.2035054   0.2602252
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2480863   0.2308904   0.2652821
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.3392740   0.2496061   0.4289418
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.3854839   0.3585307   0.4124371
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.1272331   0.0645480   0.1899182
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.2371040   0.2219155   0.2522926
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2627961   0.2130192   0.3125730
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2702490   0.2553144   0.2851836
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                0.2456685   0.2185914   0.2727456
6-9 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.2676206   0.2485172   0.2867240
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1651971   0.0343276   0.2960666
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2401833   0.2156461   0.2647204
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1827487   0.1708213   0.1946761
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2097966   0.1701529   0.2494403
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    NA                0.2344773   0.1910387   0.2779158
6-9 months     ki1148112-LCNI-5      MALAWI                         0                    NA                0.2898755   0.2611045   0.3186466
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.2365902   0.2304023   0.2427782
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.2458028   0.2346609   0.2569448
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1725301   0.1475260   0.1975342
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1728633   0.1564948   0.1892318
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.3441846   0.2265234   0.4618459
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.2836420   0.2501533   0.3171306
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1660341   0.1201199   0.2119484
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1780764   0.1631154   0.1930373
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2006778   0.1566946   0.2446609
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1852689   0.1704220   0.2001158
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                0.1585327   0.1286772   0.1883883
9-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                0.1981676   0.1803699   0.2159654
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1379252   0.1236856   0.1521647
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1469237   0.1144582   0.1793892
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    NA                0.2548405   0.1143160   0.3953650
9-12 months    ki1148112-LCNI-5      MALAWI                         0                    NA                0.1793200   0.0996634   0.2589765
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1507255   0.1457624   0.1556886
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1596871   0.1501700   0.1692043
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1195939   0.0911371   0.1480506
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1421371   0.1230326   0.1612416
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1769942   0.0826281   0.2713603
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.2152960   0.1897639   0.2408281
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1203702   0.0425966   0.1981438
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1778098   0.1615445   0.1940752
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1058415   0.0151086   0.1965744
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1540679   0.1371426   0.1709932
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1303751   0.0996992   0.1610510
12-15 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1468058   0.1267733   0.1668383
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1732130   0.1584684   0.1879575
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1797357   0.1432611   0.2162102
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1281095   0.1228452   0.1333739
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1410188   0.1311477   0.1508899
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1503411   0.1215468   0.1791355
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1382937   0.1189682   0.1576191
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1618570   0.0939149   0.2297990
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.2149422   0.1865483   0.2433361
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.2196553   0.1622155   0.2770950
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1625092   0.1472574   0.1777610
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1408374   0.0930431   0.1886318
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1743689   0.1580959   0.1906420
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1164732   0.0755577   0.1573888
15-18 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1574505   0.1365474   0.1783535
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.2285308   0.2111899   0.2458717
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2310910   0.1934506   0.2687315
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1566516   0.1507890   0.1625142
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1724058   0.1594945   0.1853170
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1283823   0.0938513   0.1629134
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1515157   0.1324789   0.1705524
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1200416   0.0727282   0.1673549
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1667856   0.1402313   0.1933399
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1530429   0.0885811   0.2175047
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1721003   0.1573345   0.1868661
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1974941   0.0998061   0.2951822
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1456590   0.1276760   0.1636421
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1532838   0.1152192   0.1913484
18-21 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1617187   0.1393725   0.1840649
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1501264   0.1318137   0.1684391
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1120246   0.0776614   0.1463878
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    NA                0.2214839   0.1484207   0.2945472
18-21 months   ki1148112-LCNI-5      MALAWI                         0                    NA                0.1986091   0.1665773   0.2306409
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1471803   0.1210784   0.1732822
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1545034   0.1356393   0.1733676
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1524247   0.0562114   0.2486381
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1413226   0.1171939   0.1654513
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1939877   0.1332949   0.2546804
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1536421   0.1402178   0.1670665
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1369113   0.0168014   0.2570213
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1708248   0.1506226   0.1910270
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1620046   0.1255546   0.1984546
21-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1877266   0.1647039   0.2107493
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1820936   0.1534623   0.2107249
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1713096   0.1244595   0.2181598
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                0.1424496   0.0620331   0.2228662
21-24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                0.1811004   0.1336859   0.2285149


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8793764   0.8562449   0.9025078
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.0655134   1.0311555   1.0998713
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.7588477   0.7364127   0.7812826
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.9566479   0.9296524   0.9836434
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.9709635   0.9457785   0.9961485
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.9410232   0.9142620   0.9677844
0-3 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.8290682   0.8112267   0.8469097
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.8562140   0.8521272   0.8603009
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.7527222   0.7394082   0.7660362
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4740560   0.4573508   0.4907612
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4437256   0.4262017   0.4612496
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.5221660   0.5019198   0.5424121
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4578547   0.4335136   0.4821959
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4969685   0.4829796   0.5109574
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.4376750   0.4329472   0.4424029
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.4386833   0.4295081   0.4478585
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2306231   0.2156296   0.2456166
6-9 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2699886   0.2554702   0.2845071
6-9 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2385095   0.2143193   0.2626996
6-9 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1871486   0.1748771   0.1994201
6-9 months     ki1148112-LCNI-5      MALAWI                         NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.2387387   0.2332737   0.2442038
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1787492   0.1645237   0.1929747
9-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1857420   0.1712835   0.2002004
9-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1395865   0.1265823   0.1525906
9-12 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1533597   0.1488837   0.1578358
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1739653   0.1578765   0.1900541
12-15 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1525937   0.1359182   0.1692692
12-15 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1746639   0.1610783   0.1882495
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1308582   0.1262352   0.1354811
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1642299   0.1493519   0.1791079
15-18 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1731820   0.1573733   0.1889907
15-18 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.2291397   0.2134657   0.2448138
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1598556   0.1545499   0.1651613
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1701596   0.1556514   0.1846677
18-21 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1474939   0.1297619   0.1652260
18-21 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1428759   0.1266216   0.1591302
18-21 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                0.2016785   0.1726437   0.2307133
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1565193   0.1433011   0.1697376
21-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1696243   0.1496620   0.1895867
21-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1784694   0.1533807   0.2035582
21-24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                0.1779746   0.1356818   0.2202674


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0161103   -0.0314883    0.0637089
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1250080   -0.2714617    0.0214457
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0266865   -0.1195441    0.0661711
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0675688   -0.0677867    0.2029243
0-3 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0708131   -0.1265176   -0.0151086
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1864847   -0.3327579   -0.0402114
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0462618   -0.0901351   -0.0023885
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0015114   -0.0085516    0.0115745
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0557628   -0.0902869   -0.0212387
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0051931   -0.0303610    0.0407472
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0182692   -0.1126363    0.0760980
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0651686   -0.0151340    0.1454712
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1018958    0.0314244    0.1723672
3-6 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0283652   -0.0739465    0.0172161
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0106586   -0.1267782    0.1480954
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0016644   -0.0342483    0.0309195
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0039586   -0.0174502    0.0095330
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0047666   -0.0196552    0.0291883
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0162209   -0.0172464    0.0496883
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0462099   -0.0473755    0.1397953
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.1098709    0.0454087    0.1743331
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0074529   -0.0445161    0.0594219
6-9 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0219521   -0.0114254    0.0553296
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0749862   -0.0581638    0.2081361
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0270479   -0.0144232    0.0685190
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI                         0                    1                  0.0553982    0.0038154    0.1069811
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0092126   -0.0032990    0.0217242
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0003332   -0.0296722    0.0303385
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0605427   -0.1843092    0.0632239
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0120422   -0.0362260    0.0603104
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0154089   -0.0618303    0.0310125
9-12 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.0396349    0.0047784    0.0744914
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0089985   -0.0264198    0.0444168
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0755205   -0.2382653    0.0872242
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0089616   -0.0016421    0.0195654
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0225432   -0.0119035    0.0569900
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0383018   -0.0596119    0.1362154
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0574396   -0.0220327    0.1369120
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0482264   -0.0440716    0.1405244
12-15 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0164307   -0.0204802    0.0533415
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0065227   -0.0329451    0.0459905
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0129092    0.0018062    0.0240122
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0120474   -0.0473291    0.0232342
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0530852   -0.0208996    0.1270701
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0571461   -0.1166804    0.0023882
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0335315   -0.0169572    0.0840203
15-18 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0409772   -0.0050444    0.0869989
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0025602   -0.0389044    0.0440249
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0157541    0.0015449    0.0299634
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0231333   -0.0161175    0.0623842
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0467440   -0.0077980    0.1012861
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0190574   -0.0471266    0.0852415
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0518351   -0.1511646    0.0474943
18-21 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0084348   -0.0358625    0.0527322
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0381018   -0.0768672    0.0006636
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0228748   -0.1021595    0.0564100
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0073231   -0.0250037    0.0396499
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0111021   -0.1103358    0.0881315
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0403455   -0.1024645    0.0217735
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0339135   -0.0878836    0.1557106
21-24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0257220   -0.0174566    0.0689007
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0107840   -0.0653366    0.0437686
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.0386508   -0.0564288    0.1337303


### Parameter: PAR


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0106624   -0.0212636    0.0425883
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1121728   -0.2447845    0.0204389
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0236955   -0.1098038    0.0624127
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0649248   -0.0651452    0.1949949
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0515055   -0.0921186   -0.0108924
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1830055   -0.3256540   -0.0403569
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0094742   -0.0183164   -0.0006319
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0002928   -0.0019288    0.0025143
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0091922   -0.0149593   -0.0034251
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0024266   -0.0221753    0.0270286
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0164803   -0.0998046    0.0668440
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0646504   -0.0104614    0.1397622
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0983821    0.0302985    0.1664657
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0215076   -0.0553031    0.0122879
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0104319   -0.1235692    0.1444329
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0009363   -0.0056077    0.0074802
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0008695   -0.0039990    0.0022601
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0006341   -0.0029715    0.0042398
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0109899   -0.0121110    0.0340908
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0438759   -0.0384544    0.1262061
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1033900    0.0431521    0.1636278
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0071925   -0.0429613    0.0573464
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0157248   -0.0086615    0.0401111
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0733124   -0.0565170    0.2031417
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0043999   -0.0036406    0.0124404
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0484403    0.0042150    0.0926655
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0021485   -0.0004012    0.0046982
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0005045   -0.0196867    0.0206957
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0595924   -0.1718079    0.0526232
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0127150   -0.0323737    0.0578037
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0149358   -0.0599333    0.0300617
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0289479    0.0035014    0.0543944
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0016613   -0.0045122    0.0078348
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0698741   -0.1809590    0.0412108
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0026342    0.0003070    0.0049615
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0157648   -0.0076697    0.0391992
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0332003   -0.0542001    0.1206008
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0535951   -0.0205293    0.1277195
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0467522   -0.0427309    0.1362354
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0113639   -0.0162473    0.0389751
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0014509   -0.0053104    0.0082123
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0027486    0.0003309    0.0051663
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0075529   -0.0313904    0.0162845
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0415625   -0.0238238    0.1069488
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0554254   -0.1106145   -0.0002363
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0323446   -0.0163637    0.0810528
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0297157   -0.0042268    0.0636581
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0006089   -0.0072779    0.0084958
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0032040    0.0001466    0.0062613
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0143323   -0.0134685    0.0421331
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0406076   -0.0084363    0.0896514
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0171167   -0.0440902    0.0783236
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0500002   -0.1458218    0.0458213
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0082814   -0.0247625    0.0413253
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0072505   -0.0145829    0.0000820
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0198054   -0.0866994    0.0470885
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0049352   -0.0173216    0.0271920
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0089347   -0.0978888    0.0800194
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0374683   -0.0951748    0.0202382
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0327130   -0.0847755    0.1502015
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0194625   -0.0134631    0.0523881
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0036242   -0.0134688    0.0062204
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0355250   -0.0451917    0.1162417
