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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 81    242  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                161    242  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 19    167  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                148    167  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 11    181  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0                170    181  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                  8    154  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                146    154  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1                 69    263  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0                194    263  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    209  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                208    209  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    223  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    223  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1                  2      6  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0                  4      6  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                372    465  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    465  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1               7584   9726  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               2142   9726  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1920   2307  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                387   2307  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 77    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                153    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 25    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                183    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 17    228  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0                211    228  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                  8    232  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                224    232  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1                 70    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0                197    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    240  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                237    240  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    235  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                230    235  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1                  3      7  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0                  4      7  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                366    460  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                 94    460  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1               5078   6591  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               1513   6591  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1496   1777  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                281   1777  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 73    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                151    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 25    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                173    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                 17    228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0                211    228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                  8    229  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                221    229  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1                 67    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0                178    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                225    228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    224  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1                  4      9  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0                  5      9  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    142  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                142    142  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                377    470  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    470  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         1                 23    145  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         0                122    145  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2182   2752  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                570   2752  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 75    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                150    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 23    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                171    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                 16    224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0                208    224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                  7    228  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                221    228  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1                 65    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0                170    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  4    230  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                226    230  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    223  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    144  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                144    144  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                352    434  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                 82    434  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         1                 10     32  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         0                 22     32  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               2368   3039  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                671   3039  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                143    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 22    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                162    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                 16    223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0                207    223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                  7    229  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                222    229  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1                 60    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0                164    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                222    225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                221    225  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    137  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                137    137  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                347    433  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                 86    433  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         1                  0      1  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         0                  1      1  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2361   3039  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                678   3039  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 70    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                142    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 22    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                153    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                 17    224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0                207    224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1                 59    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0                154    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                221    224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    216  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                212    216  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    129  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                129    129  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                353    441  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                 88    441  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         1                  0      4  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         0                  4      4  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2371   3039  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                668   3039  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 68    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                141    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                147    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                 17    224  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0                207    224  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1                 53    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0                149    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    232  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                229    232  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    203  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                199    203  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1                  2      7  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0                  5      7  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                333    411  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    411  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         1                 29    170  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         0                141    170  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 67    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                140    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                145    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                 17    223  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0                206    223  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                  8    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                218    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1                 48    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0                141    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    233  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                230    233  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    203  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                199    203  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1                  0      2  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0                  2      2  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                259    315  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 56    315  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         1                 25    141  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         0                116    141  y_rate_haz       


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
![](/tmp/c1f35785-fe6d-4189-9b42-49edcbca9c86/c06967dc-1827-4a71-9a4a-89a79b6d56d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c1f35785-fe6d-4189-9b42-49edcbca9c86/c06967dc-1827-4a71-9a4a-89a79b6d56d2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c1f35785-fe6d-4189-9b42-49edcbca9c86/c06967dc-1827-4a71-9a4a-89a79b6d56d2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1489436   -0.2016883   -0.0961990
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1089509   -0.1512538   -0.0666480
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2883822    0.0869029    0.4898616
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1196906    0.0608998    0.1784814
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1766788   -0.5559100    0.2025524
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0649193   -0.1132444   -0.0165942
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0889117   -0.1986958    0.0208725
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0598120    0.0134670    0.1061569
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.2281396   -0.2961618   -0.1601174
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                -0.2752990   -0.3148114   -0.2357867
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0195537   -0.0479226    0.0088152
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0390857   -0.1014308    0.0232594
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0542125    0.0473259    0.0610991
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0557337    0.0434568    0.0680106
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.2373835   -0.2666068   -0.2081602
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.2989231   -0.3621243   -0.2357218
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0219364   -0.0623293    0.0184565
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0228736   -0.0511183    0.0053711
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0941483   -0.0217234    0.2100200
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0558087    0.0159342    0.0956831
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0356247   -0.1279398    0.0566904
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0410903   -0.0719452   -0.0102353
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0082546   -0.1325394    0.1160303
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0227604   -0.0500178    0.0044970
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0698028    0.0027469    0.1368588
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                 0.0177205   -0.0174900    0.0529310
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1893761   -0.2987707   -0.0799816
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0688887   -0.1019762   -0.0358013
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.1582116   -0.1787595   -0.1376637
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.1817842   -0.2283736   -0.1351947
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0063688   -0.0137604    0.0010228
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0052896   -0.0178423    0.0072632
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0165668   -0.0318780   -0.0012555
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.0210658   -0.0145635    0.0566951
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0614878   -0.0917474   -0.0312282
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0752931   -0.0964321   -0.0541541
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0267558   -0.0747845    0.1282960
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0082848   -0.0301139    0.0466834
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0312609   -0.1047528    0.0422310
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0715109   -0.0954004   -0.0476214
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0693233   -0.1761665    0.0375198
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0325400   -0.0521461   -0.0129339
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0375831   -0.0896563    0.0144901
6-9 months     ki0047075b-MAL-ED     PERU                           0                    NA                -0.0326062   -0.0598287   -0.0053838
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0045510   -0.1236005    0.1327026
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0945262   -0.1287194   -0.0603330
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0468549   -0.0641581   -0.0295517
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0474595   -0.1052522    0.0103332
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0610213   -0.0180041    0.1400467
6-9 months     ki1148112-LCNI-5      MALAWI                         0                    NA                 0.0112635   -0.0171525    0.0396796
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0293694   -0.0395973   -0.0191415
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.0246608   -0.0452380   -0.0040837
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0938318   -0.1217077   -0.0659559
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0839185   -0.1040465   -0.0637905
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0139415   -0.1057256    0.0778426
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0118487   -0.0223128    0.0460103
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0738740   -0.1348624   -0.0128857
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0891562   -0.1054088   -0.0729035
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.1051817   -0.1503284   -0.0600349
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0613397   -0.0787408   -0.0439385
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0405389   -0.0780850   -0.0029928
9-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.0365948   -0.0623928   -0.0107968
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0809643   -0.0949529   -0.0669757
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0693334   -0.1168316   -0.0218352
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0377177   -0.1114715    0.0360362
9-12 months    ki1148112-LCNI-5      MALAWI                         0                    NA                -0.1224482   -0.1999617   -0.0449347
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0540137   -0.0632445   -0.0447830
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.0521793   -0.0691635   -0.0351950
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0733659   -0.0963746   -0.0503573
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0475479   -0.0678066   -0.0272893
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0321527   -0.0977181    0.0334127
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0013040   -0.0227144    0.0253224
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1093254   -0.1708043   -0.0478465
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0541971   -0.0701262   -0.0382680
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0737365   -0.1444881   -0.0029848
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0570089   -0.0728532   -0.0411645
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0803123   -0.1102438   -0.0503808
12-15 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0602406   -0.0818187   -0.0386625
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0706938   -0.0812712   -0.0601165
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0716634   -0.0973296   -0.0459972
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0500081   -0.0573455   -0.0426707
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.0332597   -0.0503800   -0.0161395
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0489461   -0.0728990   -0.0249931
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0419526   -0.0588757   -0.0250295
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0183562   -0.0382415    0.0749538
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0230481   -0.0454999   -0.0005964
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0247729   -0.0730533    0.0235075
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0369926   -0.0503371   -0.0236482
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0337660   -0.0907984    0.0232663
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0558117   -0.0713407   -0.0402827
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0428520   -0.0700150   -0.0156889
15-18 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0337725   -0.0525176   -0.0150274
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0623455   -0.0765255   -0.0481654
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0930866   -0.1123993   -0.0737740
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0344614   -0.0418544   -0.0270685
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.0311096   -0.0455650   -0.0166542
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0213585   -0.0409838   -0.0017332
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0123759   -0.0275339    0.0027821
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0244084   -0.0659860    0.0171693
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0189236   -0.0461090    0.0082618
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0085013   -0.0565764    0.0395738
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0062900   -0.0054678    0.0180479
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0851181   -0.1423222   -0.0279140
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0261870   -0.0395006   -0.0128733
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0202853   -0.0521191    0.0115486
18-21 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0047590   -0.0225218    0.0130039
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0156972    0.0006911    0.0307033
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0180968   -0.0062511    0.0424448
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0648767   -0.2117362    0.0819827
18-21 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -0.0005081   -0.0277181    0.0267018
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0254683    0.0019391    0.0489974
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0278196    0.0136832    0.0419560
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0339737   -0.0103174    0.0782649
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0141293   -0.0032834    0.0315419
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0538803    0.0254270    0.0823336
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0284771    0.0169119    0.0400424
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0659251   -0.0207777    0.1526279
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0033234   -0.0104873    0.0171342
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0580391    0.0250110    0.0910673
21-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.0556347    0.0381451    0.0731243
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0402772    0.0239444    0.0566099
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0769409    0.0268079    0.1270739
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0061354   -0.0521145    0.0398438
21-24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -0.0128109   -0.0380195    0.0123976


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1219910   -0.1558661   -0.0881159
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.1392055    0.0825938    0.1958172
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0580126   -0.1086434   -0.0073818
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.0520861    0.0074724    0.0966997
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                -0.2652050   -0.2992408   -0.2311692
0-3 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0244364   -0.0506014    0.0017286
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                 0.0545297    0.0481073    0.0609521
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.2476806   -0.2745201   -0.2208411
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0232296   -0.0468728    0.0004136
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0395718   -0.0688631   -0.0102806
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0222602   -0.0489265    0.0044061
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0714523   -0.1039048   -0.0389998
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.1619144   -0.1807661   -0.1430628
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0062187   -0.0128267    0.0003893
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0104148   -0.0243612    0.0035317
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0730606   -0.0957376   -0.0503836
6-9 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0338250   -0.0531307   -0.0145193
6-9 months     ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0923147   -0.1258617   -0.0587677
6-9 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0452273   -0.0630261   -0.0274285
6-9 months     ki1148112-LCNI-5      MALAWI                         NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0285349   -0.0378750   -0.0191949
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0918936   -0.1079066   -0.0758806
9-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0626857   -0.0796381   -0.0457334
9-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0800260   -0.0943928   -0.0656593
9-12 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0531058   -0.0612606   -0.0449509
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0576039   -0.0729359   -0.0422719
12-15 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0575202   -0.0730362   -0.0420042
12-15 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0707654   -0.0805279   -0.0610030
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0465550   -0.0533118   -0.0397982
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0367528   -0.0495674   -0.0239382
15-18 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0550313   -0.0701554   -0.0399073
15-18 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0676012   -0.0796397   -0.0555626
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0333707   -0.0399958   -0.0267456
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                 0.0047911   -0.0066468    0.0162289
18-21 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0282730   -0.0413517   -0.0151944
18-21 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                 0.0158061    0.0032947    0.0283174
18-21 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                -0.0092283   -0.0423286    0.0238719
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                 0.0301809    0.0192922    0.0410697
21-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.0055394   -0.0082148    0.0192936
21-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                 0.0449374    0.0286985    0.0611763
21-24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                -0.0116248   -0.0336145    0.0103649


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0399927   -0.0256034    0.1055889
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1686916   -0.3789197    0.0415364
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.1117595   -0.2688896    0.4924085
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1487236    0.0295581    0.2678891
0-3 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0471594   -0.1259441    0.0316253
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0195320   -0.0873571    0.0482930
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0015212   -0.0114510    0.0144934
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0615396   -0.1303914    0.0073123
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0009372   -0.0503758    0.0485014
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0383397   -0.1606446    0.0839653
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0054656   -0.1026978    0.0917666
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0145058   -0.1417445    0.1127329
3-6 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0520824   -0.1281315    0.0239667
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1204874    0.0061985    0.2347762
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0235725   -0.0745403    0.0273953
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0010792   -0.0128910    0.0150495
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0376326   -0.0011522    0.0764173
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0138053   -0.0510754    0.0234648
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0184710   -0.1274818    0.0905398
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0402500   -0.1179095    0.0374095
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0367833   -0.0718438    0.1454105
6-9 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0049769   -0.0538478    0.0638016
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0990772   -0.2317121    0.0335576
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0006046   -0.0607894    0.0595802
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0497577   -0.1339436    0.0344282
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0047086   -0.0178557    0.0272728
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0099133   -0.0247756    0.0446022
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0257903   -0.0727664    0.1243469
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0152821   -0.0784207    0.0478564
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0438420   -0.0045422    0.0922262
9-12 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.0039441   -0.0417607    0.0496489
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0116309   -0.0379781    0.0612400
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0847305   -0.1929112    0.0234501
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0018345   -0.0173663    0.0210353
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0258180   -0.0049019    0.0565379
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0334567   -0.0363603    0.1032737
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0551283   -0.0084122    0.1186687
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0167276   -0.0557765    0.0892317
12-15 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0200717   -0.0168722    0.0570157
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0009696   -0.0287131    0.0267739
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0167484   -0.0017711    0.0352678
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0069935   -0.0226601    0.0366470
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0414043   -0.1027761    0.0199675
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0122197   -0.0623838    0.0379443
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0220457   -0.0811544    0.0370630
15-18 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0090795   -0.0240405    0.0421994
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0307412   -0.0545624   -0.0069199
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0033519   -0.0125696    0.0192733
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0089826   -0.0166627    0.0346278
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0054848   -0.0442765    0.0552461
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0147913   -0.0347367    0.0643193
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0589311    0.0001982    0.1176641
18-21 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0155263   -0.0212819    0.0523345
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0023996   -0.0272017    0.0320009
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.0643686   -0.0854259    0.2141631
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0023514   -0.0253888    0.0300916
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0198445   -0.0675146    0.0278256
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0254032   -0.0561871    0.0053808
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0626017   -0.1503975    0.0251942
21-24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0024045   -0.0400386    0.0352297
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0366637   -0.0163458    0.0896732
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0066756   -0.0591800    0.0458289


### Parameter: PAR


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0269526   -0.0169610    0.0708662
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1491767   -0.3394875    0.0411340
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1186661   -0.2412227    0.4785550
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1409977    0.0279017    0.2540937
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0370654   -0.0957181    0.0215873
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0048827   -0.0184488    0.0086834
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0003172   -0.0025339    0.0031683
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0102971   -0.0218040    0.0012098
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0012932   -0.0341069    0.0315204
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0344192   -0.1451460    0.0763077
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0039472   -0.0943023    0.0864080
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0140056   -0.1368572    0.1088460
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0440568   -0.1006044    0.0124908
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1179238    0.0064699    0.2293777
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0037028   -0.0140526    0.0066469
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0001501   -0.0030696    0.0033698
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0061520    0.0002389    0.0120652
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0085354   -0.0342961    0.0172253
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0179724   -0.1154421    0.0794973
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0417997   -0.1141830    0.0305835
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0354983   -0.0693377    0.1403343
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0040047   -0.0394171    0.0474264
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0968657   -0.2261989    0.0324675
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0016276   -0.0097572    0.0130125
6-9 months     ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0514351   -0.1226702    0.0198000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0008344   -0.0038118    0.0054807
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0066264   -0.0166512    0.0299040
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0221199   -0.0681122    0.1123521
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0180195   -0.0767433    0.0407043
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0424960   -0.0044131    0.0894050
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0013872   -0.0345368    0.0317625
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0009383   -0.0083328    0.0102093
9-12 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0675597   -0.1422785    0.0071591
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0009080   -0.0032953    0.0051112
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0176536   -0.0032573    0.0385646
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0291097   -0.0325597    0.0907791
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0517215   -0.0078931    0.1113361
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0162163   -0.0540725    0.0865050
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0149591   -0.0128754    0.0427936
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0000716   -0.0053180    0.0051748
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0034531   -0.0005239    0.0074301
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0031518   -0.0175711    0.0238747
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0386984   -0.0938921    0.0164953
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0119799   -0.0585130    0.0345532
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0212653   -0.0782841    0.0357535
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0067954   -0.0173349    0.0309258
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0052557   -0.0100498   -0.0004616
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0010907   -0.0023075    0.0044890
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0058366   -0.0114661    0.0231394
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0040494   -0.0403132    0.0484120
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0132924   -0.0325637    0.0591484
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0568451    0.0001733    0.1135169
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0121712   -0.0152213    0.0395636
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0001088   -0.0052624    0.0054801
18-21 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0556484   -0.0697436    0.1810403
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0001499   -0.0188096    0.0191095
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0174867   -0.0601979    0.0252244
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0236994   -0.0522865    0.0048878
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0603857   -0.1450872    0.0243158
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0010648   -0.0292425    0.0271130
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0046603   -0.0049523    0.0142728
21-24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0054894   -0.0493173    0.0383384
