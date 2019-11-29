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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 81    242  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                161    242  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 19    167  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                148    167  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 11    181  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0                170    181  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                  8    154  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                146    154  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1                 69    263  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0                194    263  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    209  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                208    209  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    223  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    223  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1                  2      6  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0                  4      6  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                372    465  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    465  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1               7584   9726  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               2142   9726  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1920   2307  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                387   2307  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 77    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                153    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 25    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                183    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 17    228  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0                211    228  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                  8    232  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                224    232  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1                 70    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0                197    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    240  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                237    240  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    235  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                230    235  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1                  3      7  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0                  4      7  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                366    460  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                 94    460  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1               5078   6591  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               1513   6591  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1496   1777  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                281   1777  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 73    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                151    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 25    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                173    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                 17    228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0                211    228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                  8    229  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                221    229  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1                 67    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0                178    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                225    228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    224  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1                  4      9  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0                  5      9  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    142  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                142    142  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                377    470  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    470  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         1                 23    145  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         0                122    145  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2182   2752  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                570   2752  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 75    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                150    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 23    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                171    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                 16    224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0                208    224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                  7    228  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                221    228  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1                 65    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0                170    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  4    230  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                226    230  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    223  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    144  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                144    144  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                352    434  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                 82    434  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         1                 10     32  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         0                 22     32  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               2368   3039  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                671   3039  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                143    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 22    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                162    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                 16    223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0                207    223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                  7    229  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                222    229  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1                 60    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0                164    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                222    225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                221    225  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    137  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                137    137  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                347    433  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                 86    433  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         1                  0      1  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         0                  1      1  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2361   3039  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                678   3039  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 70    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                142    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 22    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                153    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                 17    224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0                207    224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1                 59    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0                154    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                221    224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    216  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                212    216  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    129  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                129    129  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                353    441  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                 88    441  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         1                  0      4  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         0                  4      4  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2371   3039  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                668   3039  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 68    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                141    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                147    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                 17    224  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0                207    224  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1                 53    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0                149    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    232  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                229    232  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    203  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                199    203  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1                  2      7  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0                  5      7  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                333    411  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    411  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         1                 29    170  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         0                141    170  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 67    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                140    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                145    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                 17    223  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0                206    223  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1                 48    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0                141    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    233  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                230    233  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    203  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                199    203  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1                  0      2  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0                  2      2  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                259    315  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 56    315  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         1                 25    141  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         0                116    141  y_rate_len       


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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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




# Results Detail

## Results Plots
![](/tmp/15ba8b3d-223e-4ba5-9176-9008e9abd8e8/3f0e02f1-5f8c-4211-8f15-82749c895a67/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/15ba8b3d-223e-4ba5-9176-9008e9abd8e8/3f0e02f1-5f8c-4211-8f15-82749c895a67/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/15ba8b3d-223e-4ba5-9176-9008e9abd8e8/3f0e02f1-5f8c-4211-8f15-82749c895a67/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                3.2640782   3.1583302   3.3698263
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                3.3754153   3.2909819   3.4598486
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                4.0681230   3.6522885   4.4839575
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                3.7747591   3.6606795   3.8888388
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                3.7341705   2.9619145   4.5064266
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                3.3418372   3.2479262   3.4357483
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                3.2566947   3.0041285   3.5092609
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                3.6355630   3.5400307   3.7310953
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                3.1425054   3.0102908   3.2747200
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                3.0251136   2.9470442   3.1031830
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                3.6269049   3.5692333   3.6845765
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                3.5711985   3.4411549   3.7012422
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                3.6463606   3.6322480   3.6604732
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                3.6500732   3.6248994   3.6752470
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                3.0794777   3.0261384   3.1328171
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                2.9474161   2.8376967   3.0571354
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                1.9284765   1.8367139   2.0202391
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.9306029   1.8716628   1.9895430
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                2.1862546   1.9766907   2.3958184
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                2.1407516   2.0555565   2.2259467
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                1.7893525   1.6091491   1.9695559
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                1.8813276   1.8145811   1.9480740
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                1.9686909   1.6865490   2.2508327
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                1.9659877   1.9085533   2.0234221
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                2.0519207   1.9128342   2.1910072
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                1.9944775   1.9199153   2.0690397
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.6207289   1.4299522   1.8115056
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8334280   1.7636111   1.9032449
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                1.7188164   1.6752219   1.7624110
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.6642690   1.5668402   1.7616978
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                1.9099576   1.8938102   1.9261051
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                1.9095485   1.8816559   1.9374412
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                1.8832198   1.8500364   1.9164031
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                1.9560995   1.8798560   2.0323431
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                1.2757097   1.1982605   1.3531588
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.2348856   1.1846131   1.2851582
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.4677039   1.2561019   1.6793059
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.4840677   1.3964826   1.5716528
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                1.2338200   1.0709078   1.3967322
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    NA                1.2441438   1.1900672   1.2982204
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                1.2866511   1.0305905   1.5427117
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                1.3614039   1.3165607   1.4062470
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                1.3091731   1.1933206   1.4250256
6-9 months     ki0047075b-MAL-ED     PERU                           0                    NA                1.3208171   1.2595812   1.3820530
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4020878   1.0872084   1.7169673
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1882113   1.1086903   1.2677324
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                1.3111128   1.2711754   1.3510503
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.3074862   1.1759475   1.4390248
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    NA                1.3934466   1.1875839   1.5993093
6-9 months     ki1148112-LCNI-5      MALAWI                         0                    NA                1.4303129   1.3639927   1.4966332
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                1.3242167   1.3004957   1.3479378
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                1.3285559   1.2825158   1.3745960
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.9669137   0.8996701   1.0341573
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.0010276   0.9533635   1.0486916
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.0750170   0.8909045   1.2591294
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.3081761   1.2268233   1.3895289
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.9267310   0.7296887   1.1237733
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.9853778   0.9461619   1.0245937
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.9963726   0.8922715   1.1004736
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                1.0912728   1.0492608   1.1332849
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                1.0376417   0.9482922   1.1269911
9-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                1.1041871   1.0423199   1.1660543
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.9948412   0.9608749   1.0288075
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.0135773   0.8955102   1.1316443
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    NA                1.0682679   0.8546884   1.2818473
9-12 months    ki1148112-LCNI-5      MALAWI                         0                    NA                0.8939513   0.7055170   1.0823857
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                1.0681951   1.0459105   1.0904797
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                1.0662040   1.0265227   1.1058853
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8584468   0.7967308   0.9201627
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.9373338   0.8856440   0.9890237
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.1518149   0.9813037   1.3223261
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.1498318   1.0866800   1.2129836
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.7012593   0.5356189   0.8668998
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.9197833   0.8788122   0.9607544
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.9089104   0.7121503   1.1056706
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.9526185   0.9122933   0.9929436
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8226019   0.7450790   0.9001248
12-15 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.9113433   0.8547170   0.9679696
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8722714   0.8439974   0.9005454
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.8624928   0.7948530   0.9301325
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.9301657   0.9107581   0.9495733
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.9616721   0.9191714   1.0041727
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8155020   0.7538309   0.8771731
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.8301260   0.7837500   0.8765021
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.0615160   0.8920691   1.2309628
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.9938037   0.9307495   1.0568580
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.8105844   0.6613273   0.9598414
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.8491550   0.8113541   0.8869558
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.9086489   0.7591956   1.0581022
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.8381099   0.7953541   0.8808657
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8302781   0.7555155   0.9050406
15-18 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.8620457   0.8112819   0.9128094
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.7764237   0.7375797   0.8152677
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.7042334   0.6512660   0.7572007
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.8565397   0.8365014   0.8765780
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.8575247   0.8187348   0.8963147
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.7852125   0.7244523   0.8459727
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.8276574   0.7848431   0.8704717
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.8787307   0.7568178   1.0006436
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.9219092   0.8436743   1.0001440
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.7582156   0.6052874   0.9111437
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.8820060   0.8456845   0.9183275
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.6607062   0.4802918   0.8411205
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.8236151   0.7847133   0.8625168
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8484456   0.7580735   0.9388178
18-21 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.8466609   0.7949238   0.8983980
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8996192   0.8568625   0.9423759
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.9219025   0.8645577   0.9792472
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    NA                0.7215474   0.4281735   1.0149213
18-21 months   ki1148112-LCNI-5      MALAWI                         0                    NA                0.8812389   0.7991729   0.9633048
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.7708322   0.7052958   0.8363686
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.7720440   0.7293893   0.8146987
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.8429930   0.7497639   0.9362222
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.7888277   0.7399867   0.8376687
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.8812268   0.7770748   0.9853787
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.8246757   0.7920599   0.8572915
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.9602142   0.6789533   1.2414750
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.7768540   0.7359514   0.8177565
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8001483   0.6992552   0.9010414
21-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.7530336   0.6999763   0.8060908
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.7688919   0.7208501   0.8169338
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.8998819   0.7432614   1.0565023
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                0.7418618   0.5989891   0.8847346
21-24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                0.7295823   0.6519376   0.8072270


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                3.3402171   3.2743239   3.4061103
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                3.8085653   3.6991781   3.9179525
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                3.3499072   3.2511340   3.4486803
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                3.6158815   3.5234019   3.7083612
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                3.0490404   2.9824173   3.1156636
0-3 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                3.6173812   3.5643204   3.6704421
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                3.6471006   3.6339981   3.6602031
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                3.0560787   3.0061448   3.1060127
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                1.9261033   1.8757410   1.9764655
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                1.8848530   1.8216037   1.9481024
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.9660809   1.9097800   2.0223819
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8289025   1.7605509   1.8972540
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                1.7085606   1.6688133   1.7483079
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                1.9103432   1.8959278   1.9247587
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                1.8946008   1.8642204   1.9249811
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                1.2403346   1.1889010   1.2917682
6-9 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.3587924   1.3145651   1.4030198
6-9 months     ki0047075b-MAL-ED     PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1929853   1.1149435   1.2710272
6-9 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                1.3144775   1.2731267   1.3558284
6-9 months     ki1148112-LCNI-5      MALAWI                         NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                1.3252108   1.3036943   1.3467274
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.9798686   0.9411954   1.0185419
9-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.0883592   1.0474563   1.1292621
9-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.9984152   0.9640726   1.0327578
9-12 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                1.0692570   1.0496985   1.0888155
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.9075845   0.8681682   0.9470009
12-15 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.9512824   0.9117179   0.9908469
12-15 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.8702474   0.8441404   0.8963544
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.9373418   0.9196982   0.9549854
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.8476806   0.8113849   0.8839763
15-18 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.8406068   0.7989917   0.8822220
15-18 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.7596809   0.7265174   0.7928444
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.8576466   0.8394619   0.8758313
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.8759623   0.8406388   0.9112858
18-21 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.8178484   0.7795814   0.8561153
18-21 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.9045343   0.8683581   0.9407104
18-21 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                0.8419773   0.7481346   0.9358201
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.8269217   0.7961503   0.8576932
21-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.7833446   0.7424130   0.8242761
21-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.7920360   0.7445193   0.8395527
21-24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                0.7342569   0.6662316   0.8022822


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1113370   -0.0240918    0.2467658
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.2933639   -0.7239192    0.1371914
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.3923333   -1.1712454    0.3865788
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.3788683    0.1088384    0.6488981
0-3 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.1173918   -0.2730785    0.0382950
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0557063   -0.1973873    0.0859746
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0037126   -0.0230654    0.0304907
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.1320617   -0.2491881   -0.0149352
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0021264   -0.1076850    0.1119378
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0455029   -0.2717066    0.1807008
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0919750   -0.1004181    0.2843682
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0027032   -0.2906315    0.2852252
3-6 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0574431   -0.2141423    0.0992560
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2126991    0.0095485    0.4158496
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0545474   -0.1615724    0.0524776
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0004091   -0.0315543    0.0307361
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0728798   -0.0102401    0.1559997
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0408240   -0.1349257    0.0532776
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0163638   -0.2127332    0.2454608
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0103238   -0.1613034    0.1819511
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0747528   -0.1852049    0.3347104
6-9 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0116440   -0.1194603    0.1427483
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2138765   -0.5386421    0.1108890
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0036267   -0.1402655    0.1330121
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI                         0                    1                  0.0368664   -0.1841299    0.2578627
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0043392   -0.0464233    0.0551016
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0341138   -0.0483129    0.1165405
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.2331591    0.0302240    0.4360942
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0586468   -0.1424267    0.2597204
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0949003   -0.0173585    0.2071591
9-12 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.0665454   -0.0422056    0.1752965
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0187361   -0.1045230    0.1419952
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI                         0                    1                 -0.1743165   -0.4637774    0.1151443
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0019911   -0.0473538    0.0433715
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0788871   -0.0019847    0.1597589
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0019831   -0.1841011    0.1801349
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.2185240    0.0473248    0.3897231
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0437080   -0.1571418    0.2445579
12-15 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0887414   -0.0071149    0.1845977
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0097786   -0.0831076    0.0635504
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0315064   -0.0149505    0.0779633
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0146241   -0.0627729    0.0920210
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0677122   -0.2489577    0.1135332
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0385706   -0.1157458    0.1928870
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0705390   -0.2259878    0.0849098
15-18 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0317676   -0.0586624    0.1221976
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0721904   -0.1377381   -0.0066426
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0009850   -0.0415760    0.0435460
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0424449   -0.0324765    0.1173663
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0431785   -0.1017199    0.1880768
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.1237904   -0.0325420    0.2801228
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1629089   -0.0216519    0.3474697
18-21 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0017847   -0.1064352    0.1028658
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0222833   -0.0492976    0.0938642
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.1596915   -0.1492201    0.4686030
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0012118   -0.0773918    0.0798154
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0541654   -0.1596033    0.0512726
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0565511   -0.1658185    0.0527163
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.1833602   -0.4675796    0.1008592
21-24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0471147   -0.1613669    0.0671374
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.1309899   -0.0344237    0.2964035
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0122795   -0.1759049    0.1513459


### Parameter: PAR


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0761388   -0.0154906    0.1677683
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.2595577   -0.6498026    0.1306871
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.3842634   -1.1183100    0.3497833
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.3591868    0.1028381    0.6155356
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0934649   -0.2084775    0.0215476
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0095236   -0.0376421    0.0185948
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0007400   -0.0051578    0.0066378
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0233990   -0.0433837   -0.0034143
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0023732   -0.0765099    0.0717634
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0401730   -0.2395651    0.1592191
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0955005   -0.0836942    0.2746952
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0026100   -0.2806098    0.2753898
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0362385   -0.1522571    0.0797801
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2081736    0.0100628    0.4062844
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0102559   -0.0319920    0.0114803
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0003856   -0.0067479    0.0075192
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0113810   -0.0017995    0.0245615
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0276646   -0.0931658    0.0378367
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0154120   -0.1864893    0.2173133
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0065146   -0.1529475    0.1659767
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0721413   -0.1787411    0.3230238
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0108234   -0.0847880    0.1064348
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2091025   -0.5257761    0.1075711
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0033647   -0.0231375    0.0298668
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0438138   -0.1449595    0.2325872
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0009941   -0.0094738    0.0114620
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0227309   -0.0330846    0.0785463
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2232390    0.0402384    0.4062396
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0531377   -0.1348207    0.2410960
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0919867   -0.0168464    0.2008198
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0608707   -0.0189699    0.1407113
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0035740   -0.0182076    0.0253556
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0976334   -0.3046894    0.1094226
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0010619   -0.0089953    0.0111191
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0556537    0.0005613    0.1107460
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0096375   -0.1704268    0.1511518
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.2063252    0.0448464    0.3678040
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0423720   -0.1523408    0.2370847
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0691261   -0.0014232    0.1396753
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0020240   -0.0162205    0.0121726
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0071761   -0.0028921    0.0172442
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0086206   -0.0433446    0.0605857
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0594046   -0.2183053    0.0994961
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0370962   -0.1068119    0.1810044
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0680421   -0.2179979    0.0819138
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0231527   -0.0423833    0.0886886
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0167429   -0.0301339   -0.0033518
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0011069   -0.0079743    0.0101881
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0281723   -0.0232093    0.0795539
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0373452   -0.0918361    0.1665265
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1177467   -0.0288713    0.2643648
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1571422   -0.0209289    0.3352134
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0070018   -0.0846715    0.0706680
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0049151   -0.0086346    0.0184648
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.1204299   -0.1216344    0.3624943
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0014139   -0.0545306    0.0517027
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0468411   -0.1403032    0.0466209
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0543050   -0.1566726    0.0480626
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.1768696   -0.4510639    0.0973247
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0390977   -0.1245247    0.0463292
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0231441   -0.0061514    0.0524396
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0076049   -0.1429495    0.1277396
