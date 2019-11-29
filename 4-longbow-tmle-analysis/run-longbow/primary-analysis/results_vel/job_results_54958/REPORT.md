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

**Intervention Variable:** exclfeed36

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
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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

agecat         studyid                    country                        exclfeed36    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  -----------  -------  -----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 32    242  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                210    242  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                  8    167  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                159    167  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                  4    181  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0                177    181  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                  4    154  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                150    154  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1                  5    263  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0                258    263  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0    209  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                209    209  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    223  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    223  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  2      2  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      2  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1                  2      6  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0                  4      6  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                161    634  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                473    634  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         1                326   1116  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         0                790   1116  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                372    465  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    465  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1               7572   9726  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               2154   9726  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1916   2307  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                391   2307  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 30    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                200    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 12    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                196    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                  9    228  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0                219    228  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                  4    232  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                228    232  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1                  6    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0                261    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    240  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                239    240  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    235  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                231    235  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1                  3      7  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0                  4      7  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                143    597  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                454    597  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         1                337   1266  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         0                929   1266  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                366    460  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                 94    460  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1               5067   6591  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               1524   6591  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1494   1777  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                283   1777  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 28    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                196    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 12    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                186    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                  9    228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0                219    228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                  4    229  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                225    229  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1                  6    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0                239    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                227    228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    224  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1                  4      9  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0                  5      9  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    142  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                142    142  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                129    565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                436    565  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         1                220    774  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         0                554    774  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                377    470  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    470  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         1                 23    145  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         0                122    145  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2175   2752  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                577   2752  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 27    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                198    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 12    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                182    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                  8    224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0                216    224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                  3    228  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                225    228  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1                  6    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0                229    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2    230  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                228    230  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    223  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1                  0      4  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0                  4      4  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    144  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                144    144  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                134    565  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                431    565  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         1                222    740  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         0                518    740  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                352    434  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                 82    434  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         1                 10     32  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         0                 22     32  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               2358   3039  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                681   3039  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                188    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 12    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                172    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                  8    223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0                215    223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                  3    229  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                226    229  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1                  5    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0                219    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                224    225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                222    225  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    137  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                137    137  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                130    531  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                401    531  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         1                350   1148  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         0                798   1148  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                347    433  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                 86    433  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         1                  0      1  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         0                  1      1  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2351   3039  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                688   3039  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                187    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 12    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                163    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                  9    224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0                215    224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1                  5    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0                208    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                223    224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    216  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                213    216  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    129  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                129    129  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                133    527  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                394    527  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         1                364   1157  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         0                793   1157  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                353    441  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                 88    441  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         1                  0      4  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         0                  4      4  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2362   3039  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                677   3039  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                185    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                156    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                  9    224  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0                215    224  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1                  4    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0                198    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    232  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                231    232  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    203  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                200    203  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  5      5  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      5  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1                  2      7  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0                  5      7  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                130    540  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                410    540  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         1                358   1144  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         0                786   1144  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                333    411  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    411  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         1                 29    170  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         0                141    170  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                183    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                154    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                  9    223  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0                214    223  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1                  3    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0                186    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    233  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232    233  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    203  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                200    203  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1                  0      2  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0                  2      2  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                115    470  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                355    470  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         1                313   1043  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         0                730   1043  y_rate_haz       
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
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/77bbe553-ca01-456c-8734-7752733668bd/babf52e8-12a1-4041-bbb2-3dce5bc74c8a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/77bbe553-ca01-456c-8734-7752733668bd/babf52e8-12a1-4041-bbb2-3dce5bc74c8a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/77bbe553-ca01-456c-8734-7752733668bd/babf52e8-12a1-4041-bbb2-3dce5bc74c8a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0783241   -0.1595088    0.0028606
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1247809   -0.1616224   -0.0879395
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3460294    0.1166038    0.5754549
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.1287992    0.0709434    0.1866551
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0942168   -0.2126675    0.0242339
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.2685187   -0.3031690   -0.2338684
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1864168   -0.2179521   -0.1548814
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.1886799   -0.2093375   -0.1680222
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.2712913   -0.3178015   -0.2247811
0-3 months     ki1101329-Keneba      GAMBIA       0                    NA                -0.2880798   -0.3191622   -0.2569973
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0213199   -0.0498885    0.0072487
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0343428   -0.0986927    0.0300070
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0541110    0.0471993    0.0610227
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0562097    0.0440773    0.0683421
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.2354191   -0.2643185   -0.2065198
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3080286   -0.3737115   -0.2423457
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0301600   -0.1011534    0.0408333
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0245595   -0.0490656   -0.0000533
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0687802   -0.0867977    0.2243581
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0568615    0.0191452    0.0945777
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0473608   -0.0695552    0.1642768
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0431444   -0.0731638   -0.0131251
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0822238   -0.1223318    0.2867794
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                 0.0244477   -0.0071690    0.0560644
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0010727   -0.0312209    0.0290756
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0333183   -0.0514546   -0.0151821
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0322366   -0.0679387    0.0034655
3-6 months     ki1101329-Keneba      GAMBIA       0                    NA                -0.0150918   -0.0383939    0.0082102
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1587050   -0.1792404   -0.1381696
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1862514   -0.2325710   -0.1399318
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0062908   -0.0137002    0.0011185
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0061008   -0.0187754    0.0065737
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0171097   -0.0323709   -0.0018485
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0227700   -0.0125714    0.0581115
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0737135   -0.1182363   -0.0291908
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0704565   -0.0894744   -0.0514385
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0295221   -0.1152807    0.1743249
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0083144   -0.0280126    0.0446414
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.1362328   -0.2469863   -0.0254793
6-9 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0704645   -0.0935655   -0.0473635
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0214886   -0.0959815    0.1389587
6-9 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.0349609   -0.0594829   -0.0104389
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0731406   -0.0954637   -0.0508175
6-9 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0574709   -0.0698472   -0.0450945
6-9 months     ki1101329-Keneba      GAMBIA       1                    NA                 0.0224615   -0.0286327    0.0735557
6-9 months     ki1101329-Keneba      GAMBIA       0                    NA                -0.0246364   -0.0526020    0.0033293
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0471375   -0.0646436   -0.0296313
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0453119   -0.1018585    0.0112346
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                 0.0196862   -0.0575055    0.0968780
6-9 months     ki1148112-LCNI-5      MALAWI       0                    NA                 0.0083384   -0.0200238    0.0367007
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0295065   -0.0397875   -0.0192256
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0237902   -0.0441437   -0.0034367
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1230701   -0.1592018   -0.0869383
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0827427   -0.1003172   -0.0651682
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0948967   -0.2122520    0.0224586
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0107849   -0.0214513    0.0430212
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.1678098   -0.2739659   -0.0616537
9-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0890818   -0.1050928   -0.0730709
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0218809   -0.1178650    0.0741032
9-12 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0424513   -0.0643253   -0.0205772
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0738907   -0.0964588   -0.0513226
9-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0604341   -0.0729261   -0.0479422
9-12 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0960271   -0.1281217   -0.0639325
9-12 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0990053   -0.1221170   -0.0758936
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0817178   -0.0956697   -0.0677660
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0712309   -0.1214602   -0.0210016
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0363498   -0.1187208    0.0460211
9-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                -0.1284125   -0.2069190   -0.0499060
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0539469   -0.0633811   -0.0445127
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0517593   -0.0684495   -0.0350691
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0685443   -0.1036720   -0.0334166
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0537043   -0.0706185   -0.0367902
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1082557    0.0239122    0.1925992
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0045578   -0.0276427    0.0185270
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1506199   -0.2213948   -0.0798451
12-15 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0541428   -0.0696335   -0.0386521
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.1225323   -0.1828783   -0.0621862
12-15 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0640477   -0.0822818   -0.0458137
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0391165   -0.0571256   -0.0211074
12-15 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0421056   -0.0541539   -0.0300573
12-15 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0548992   -0.0740455   -0.0357530
12-15 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0500286   -0.0659581   -0.0340992
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0706641   -0.0812115   -0.0601166
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0712933   -0.0959552   -0.0466314
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0503058   -0.0576509   -0.0429607
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0337711   -0.0504005   -0.0171416
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0380959   -0.0792540    0.0030623
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0474714   -0.0619153   -0.0330275
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0229761   -0.0644152    0.1103674
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0235237   -0.0453841   -0.0016633
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0024882   -0.0611624    0.0661388
15-18 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0383954   -0.0514317   -0.0253592
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.1075471   -0.1893089   -0.0257852
15-18 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0343380   -0.0500133   -0.0186626
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0477205   -0.0656285   -0.0298125
15-18 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0336116   -0.0436517   -0.0235715
15-18 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0340206   -0.0593535   -0.0086877
15-18 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0321940   -0.0467533   -0.0176348
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0620990   -0.0761340   -0.0480639
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0891593   -0.1081249   -0.0701937
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0345132   -0.0419658   -0.0270607
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0328220   -0.0465134   -0.0191306
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0289854   -0.0774524    0.0194816
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0133437   -0.0255058   -0.0011816
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0778128   -0.1307464   -0.0248793
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0183624   -0.0444386    0.0077137
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0531254   -0.1157660    0.0095152
18-21 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0072155   -0.0042956    0.0187266
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0261251   -0.0426703   -0.0095799
18-21 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0064918   -0.0158218    0.0028383
18-21 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0194726   -0.0451395    0.0061944
18-21 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0227196   -0.0384589   -0.0069804
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0137653   -0.0010551    0.0285858
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0239759    0.0045553    0.0433965
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0434181   -0.1761609    0.0893247
18-21 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0017754   -0.0290996    0.0255488
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0384502    0.0012299    0.0756705
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0248124    0.0118269    0.0377979
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0233476   -0.0348563    0.0815514
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0161734   -0.0005180    0.0328647
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0391862    0.0000150    0.0783574
21-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0298022    0.0185786    0.0410258
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0420496    0.0245089    0.0595903
21-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0487769    0.0387716    0.0587823
21-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0166016   -0.0080688    0.0412721
21-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0203470    0.0061593    0.0345347
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0409348    0.0245217    0.0573479
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0892400    0.0419178    0.1365622
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0128505   -0.0633058    0.0376048
21-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0114650   -0.0366260    0.0136960


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1219910   -0.1558661   -0.0881159
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.1392055    0.0825938    0.1958172
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.2652050   -0.2992408   -0.2311692
0-3 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.1881464   -0.2054815   -0.1708113
0-3 months     ki1101329-Keneba      GAMBIA       NA                   NA                -0.2813600   -0.3072816   -0.2554385
0-3 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0244364   -0.0506014    0.0017286
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                 0.0545297    0.0481073    0.0609521
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.2476806   -0.2745201   -0.2208411
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0232296   -0.0468728    0.0004136
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0395718   -0.0688631   -0.0102806
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0259615   -0.0417668   -0.0101562
3-6 months     ki1101329-Keneba      GAMBIA       NA                   NA                -0.0181994   -0.0377516    0.0013528
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.1619144   -0.1807661   -0.1430628
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0062187   -0.0128267    0.0003893
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0104148   -0.0243612    0.0035317
6-9 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0730606   -0.0957376   -0.0503836
6-9 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1101329-Keneba      GAMBIA       NA                   NA                -0.0112500   -0.0357999    0.0132998
6-9 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0452273   -0.0630261   -0.0274285
6-9 months     ki1148112-LCNI-5      MALAWI       NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0285349   -0.0378750   -0.0191949
9-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0918936   -0.1079066   -0.0758806
9-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0628687   -0.0738539   -0.0518835
9-12 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.0987979   -0.1174339   -0.0801618
9-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0800260   -0.0943928   -0.0656593
9-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0531058   -0.0612606   -0.0449509
12-15 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0576039   -0.0729359   -0.0422719
12-15 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0408493   -0.0509622   -0.0307364
12-15 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.0513458   -0.0638293   -0.0388624
12-15 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0707654   -0.0805279   -0.0610030
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0465550   -0.0533118   -0.0397982
15-18 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0367528   -0.0495674   -0.0239382
15-18 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0375600   -0.0463196   -0.0288004
15-18 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.0329424   -0.0454411   -0.0204438
15-18 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0676012   -0.0796397   -0.0555626
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0333707   -0.0399958   -0.0267456
18-21 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED     INDIA        NA                   NA                 0.0047911   -0.0066468    0.0162289
18-21 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0109038   -0.0190771   -0.0027305
18-21 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.0215104   -0.0346731   -0.0083477
18-21 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                 0.0158061    0.0032947    0.0283174
18-21 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
21-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                 0.0301809    0.0192922    0.0410697
21-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                 0.0463714    0.0377102    0.0550326
21-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                 0.0185345    0.0063004    0.0307686
21-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                 0.0449374    0.0286985    0.0611763
21-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0464568   -0.1354035    0.0424898
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.2172301   -0.4538382    0.0193780
0-3 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.1743019   -0.2977168   -0.0508871
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0022631   -0.0399935    0.0354673
0-3 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba      GAMBIA       0                    1                 -0.0167885   -0.0725568    0.0389799
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0130230   -0.0834588    0.0574129
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0020987   -0.0107535    0.0149508
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0726094   -0.1433509   -0.0018679
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0056006   -0.0697687    0.0809699
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0119187   -0.1717935    0.1479561
3-6 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        0                    1                 -0.0905052   -0.2112135    0.0302032
3-6 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0577760   -0.2647606    0.1492085
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0322456   -0.0668275    0.0023362
3-6 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba      GAMBIA       0                    1                  0.0171448   -0.0253540    0.0596435
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0275464   -0.0782914    0.0231987
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0001900   -0.0139647    0.0143447
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0398798    0.0013360    0.0784235
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0032571   -0.0451701    0.0516843
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0212077   -0.1711322    0.1287168
6-9 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.0657683   -0.0473687    0.1789053
6-9 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0564494   -0.1764517    0.0635529
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0156698   -0.0097439    0.0410835
6-9 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba      GAMBIA       0                    1                 -0.0470979   -0.1055473    0.0113516
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0018255   -0.0572192    0.0608702
6-9 months     ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI       0                    1                 -0.0113478   -0.0935570    0.0708615
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0057163   -0.0166743    0.0281070
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0403273    0.0001114    0.0805433
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1056816   -0.0168884    0.2282517
9-12 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.0787279   -0.0286288    0.1860847
9-12 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.0205704   -0.1190154    0.0778746
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0134566   -0.0121658    0.0390789
9-12 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.0029782   -0.0427991    0.0368427
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0104869   -0.0417037    0.0626775
9-12 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.0920627   -0.2085769    0.0244516
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0021876   -0.0168649    0.0212402
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0148400   -0.0242840    0.0539640
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1128135   -0.2005781   -0.0250490
12-15 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0964772    0.0240269    0.1689274
12-15 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0584845   -0.0045561    0.1215252
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0029891   -0.0246064    0.0186282
12-15 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba      GAMBIA       0                    1                  0.0048706   -0.0200907    0.0298319
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0006293   -0.0274587    0.0262001
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0165348   -0.0015994    0.0346690
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0093755   -0.0529404    0.0341894
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0464997   -0.1366433    0.0436439
15-18 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0408837   -0.1058556    0.0240882
15-18 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0732091   -0.0100418    0.1564600
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0141090   -0.0063884    0.0346063
15-18 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba      GAMBIA       0                    1                  0.0018266   -0.0273421    0.0309952
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0270603   -0.0506268   -0.0034939
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0016913   -0.0136644    0.0170470
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0156417   -0.0342966    0.0655800
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0594504    0.0004789    0.1184220
18-21 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0603408   -0.0033487    0.1240303
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0196333    0.0007050    0.0385616
18-21 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0032471   -0.0334458    0.0269516
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0102105   -0.0142574    0.0346784
18-21 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0416427   -0.0942803    0.1775657
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0136378   -0.0529786    0.0257030
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0071742   -0.0677737    0.0534253
21-24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0093840   -0.0501314    0.0313634
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0067273   -0.0134670    0.0269216
21-24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba      GAMBIA       0                    1                  0.0037453   -0.0248667    0.0323574
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0483052   -0.0019458    0.0985562
21-24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0013855   -0.0550341    0.0578051


### Parameter: PAR


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0436669   -0.1223620    0.0350281
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.2068239   -0.4322080    0.0185602
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.1709882   -0.2913522   -0.0506243
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0017297   -0.0299103    0.0264510
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0100687   -0.0496762    0.0295388
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0031165   -0.0171614    0.0109283
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004187   -0.0024213    0.0032587
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0122614   -0.0239436   -0.0005793
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0069304   -0.0578848    0.0717456
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0090510   -0.1603908    0.1422887
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0869326   -0.2028988    0.0290336
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0564777   -0.2582903    0.1453349
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0248888   -0.0512521    0.0014744
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                 0.0140372   -0.0173938    0.0454682
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0032094   -0.0135803    0.0071614
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0000721   -0.0031866    0.0033308
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0066950    0.0006598    0.0127301
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0036904   -0.0398455    0.0472262
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0207387   -0.1629298    0.1214523
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0631722   -0.0455117    0.1718560
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0550670   -0.1720744    0.0619404
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0117142   -0.0079946    0.0314231
6-9 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0337115   -0.0757340    0.0083109
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0019102   -0.0094990    0.0133194
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                -0.0101000   -0.0792866    0.0590865
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0009716   -0.0036652    0.0056084
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0358647    0.0003823    0.0713470
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1030751   -0.0135998    0.2197500
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0759162   -0.0276241    0.1794566
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0200452   -0.1159776    0.0758873
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0110220   -0.0085549    0.0305988
9-12 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0027707   -0.0308184    0.0252769
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0016918   -0.0075521    0.0109357
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0689275   -0.1516649    0.0138098
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008411   -0.0034920    0.0051743
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0128320   -0.0222359    0.0478999
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1112987   -0.1938688   -0.0287286
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0930161    0.0231251    0.1629071
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0571791   -0.0042960    0.1186542
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0017328   -0.0180954    0.0146299
12-15 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0035534   -0.0138160    0.0209227
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0001014   -0.0053588    0.0051560
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0037508   -0.0002184    0.0077200
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0076984   -0.0467148    0.0313180
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0433183   -0.1279287    0.0412921
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0392410   -0.1016113    0.0231293
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0714906   -0.0096928    0.1526739
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0101605   -0.0052069    0.0255280
15-18 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0010782   -0.0193571    0.0215135
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0055022   -0.0102971   -0.0007073
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0011425   -0.0023250    0.0046100
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0134635   -0.0322072    0.0591342
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0574539    0.0017083    0.1131994
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0579164   -0.0032339    0.1190667
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0152213    0.0008268    0.0296157
18-21 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0020378   -0.0228459    0.0187702
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0020407   -0.0025500    0.0066315
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0341898   -0.0771968    0.1455764
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0128320   -0.0481916    0.0225277
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0068606   -0.0635921    0.0498710
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0090053   -0.0481089    0.0300984
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0043218   -0.0109857    0.0196293
21-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0019328   -0.0182376    0.0221033
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0040026   -0.0056595    0.0136647
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0012257   -0.0462783    0.0487296
