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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 32    242  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                210    242  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                  8    167  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                159    167  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                  4    181  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0                177    181  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                  4    154  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                150    154  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1                  5    263  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0                258    263  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0    209  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                209    209  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    223  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    223  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  2      2  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      2  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1                  2      6  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0                  4      6  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                161    634  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                473    634  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         1                326   1116  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         0                790   1116  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                372    465  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    465  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1               7572   9726  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               2154   9726  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1916   2307  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                391   2307  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 30    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                200    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 12    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                196    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                  9    228  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0                219    228  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                  4    232  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                228    232  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1                  6    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0                261    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    240  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                239    240  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    235  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                231    235  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1                  3      7  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0                  4      7  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                143    597  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                454    597  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         1                337   1266  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         0                929   1266  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                366    460  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                 94    460  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1               5067   6591  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               1524   6591  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1494   1777  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                283   1777  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 28    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                196    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 12    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                186    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                  9    228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0                219    228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                  4    229  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                225    229  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1                  6    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0                239    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                227    228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    224  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1                  4      9  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0                  5      9  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    142  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                142    142  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                129    565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                436    565  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         1                220    774  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         0                554    774  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                377    470  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    470  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         1                 23    145  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         0                122    145  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2175   2752  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                577   2752  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 27    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                198    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 12    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                182    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                  8    224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0                216    224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                  3    228  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                225    228  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1                  6    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0                229    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2    230  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                228    230  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    223  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1                  0      4  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0                  4      4  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    144  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                144    144  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                134    565  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                431    565  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         1                222    740  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         0                518    740  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                352    434  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                 82    434  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         1                 10     32  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         0                 22     32  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               2358   3039  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                681   3039  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                188    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 12    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                172    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                  8    223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0                215    223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                  3    229  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                226    229  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1                  5    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0                219    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                224    225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                222    225  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    137  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                137    137  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                130    531  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                401    531  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         1                350   1148  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         0                798   1148  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                347    433  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                 86    433  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         1                  0      1  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         0                  1      1  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2351   3039  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                688   3039  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                187    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 12    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                163    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                  9    224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0                215    224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1                  5    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0                208    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                223    224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    216  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                213    216  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    129  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                129    129  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                133    527  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                394    527  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         1                364   1157  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         0                793   1157  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                353    441  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                 88    441  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         1                  0      4  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         0                  4      4  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2362   3039  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                677   3039  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                185    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                156    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                  9    224  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0                215    224  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1                  4    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0                198    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    232  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                231    232  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    203  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                200    203  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  5      5  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      5  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1                  2      7  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0                  5      7  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                130    540  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                410    540  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         1                358   1144  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         0                786   1144  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                333    411  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    411  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         1                 29    170  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         0                141    170  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                183    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                154    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                  9    223  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0                214    223  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1                  3    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0                186    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    233  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232    233  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    203  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                200    203  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1                  0      2  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0                  2      2  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                115    470  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                355    470  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         1                313   1043  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         0                730   1043  y_rate_len       
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
![](/tmp/5cae1b56-9721-48a0-8b0a-ed7b40b91452/497c1f2d-85d3-43cc-a20e-ecacd8fed1c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5cae1b56-9721-48a0-8b0a-ed7b40b91452/497c1f2d-85d3-43cc-a20e-ecacd8fed1c9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5cae1b56-9721-48a0-8b0a-ed7b40b91452/497c1f2d-85d3-43cc-a20e-ecacd8fed1c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.3614799   3.2004142   3.5225456
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.3392945   3.2670189   3.4115702
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.2459722   3.7916926   4.7002519
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                3.7865574   3.6750596   3.8980552
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.4234571   3.1291622   3.7177520
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.0417843   2.9741800   3.1093886
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                3.2499317   3.1844082   3.3154552
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                3.2606295   3.2164343   3.3048247
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                3.1353716   3.0438778   3.2268654
0-3 months     ki1101329-Keneba      GAMBIA       0                    NA                3.1020242   3.0408627   3.1631856
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                3.6233665   3.5655524   3.6811806
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                3.5666710   3.4367105   3.6966316
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.6458535   3.6317786   3.6599283
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6515268   3.6268007   3.6762528
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.0813139   3.0280066   3.1346212
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                2.9363972   2.8177172   3.0550772
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.9770478   1.7914774   2.1626181
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.9223290   1.8705346   1.9741234
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.1448082   1.8595938   2.4300226
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1401973   2.0577179   2.2226767
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                2.0750209   1.8360347   2.3140071
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8770379   1.8121355   1.9419403
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                2.1589526   1.7407037   2.5772015
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                2.0123885   1.9453808   2.0793963
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                2.0015236   1.9372737   2.0657734
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                1.9546805   1.9156773   1.9936838
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                1.9490440   1.8713040   2.0267840
3-6 months     ki1101329-Keneba      GAMBIA       0                    NA                2.0003993   1.9505761   2.0502226
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7194325   1.6758816   1.7629835
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6661546   1.5691894   1.7631199
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.9103133   1.8941255   1.9265011
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9113200   1.8835031   1.9391369
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8823060   1.8492120   1.9154001
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.9554538   1.8795115   2.0313961
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.2267988   1.1392158   1.3143818
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.2448533   1.2012223   1.2884843
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                1.6220041   1.3307592   1.9132489
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                1.4799942   1.3957944   1.5641941
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.0969307   0.8462554   1.3476061
6-9 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.2462279   1.1938286   1.2986272
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                1.4504574   1.1805383   1.7203764
6-9 months     ki0047075b-MAL-ED     PERU         0                    NA                1.3167214   1.2614882   1.3719545
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                1.2565359   1.2053514   1.3077204
6-9 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                1.2924047   1.2636736   1.3211357
6-9 months     ki1101329-Keneba      GAMBIA       1                    NA                1.4838425   1.3627385   1.6049464
6-9 months     ki1101329-Keneba      GAMBIA       0                    NA                1.3792086   1.3159896   1.4424276
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.3138933   1.2737853   1.3540012
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.3146554   1.1820831   1.4472277
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                1.4315337   1.2331806   1.6298867
6-9 months     ki1148112-LCNI-5      MALAWI       0                    NA                1.4364212   1.3705276   1.5023147
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.3236029   1.2998049   1.3474009
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.3309813   1.2849463   1.3770164
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.9089417   0.8128228   1.0050606
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.0011766   0.9593200   1.0430333
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.2311345   0.9877919   1.4744772
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3023790   1.2245600   1.3801980
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.8103055   0.5375762   1.0830348
9-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.9861488   0.9475910   1.0247065
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                1.1491277   0.9349665   1.3632890
9-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.0971862   1.0452490   1.1491235
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                1.0299799   0.9747650   1.0851949
9-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                1.0589880   1.0282585   1.0897175
9-12 months    ki1101329-Keneba      GAMBIA       1                    NA                0.9923458   0.9177212   1.0669705
9-12 months    ki1101329-Keneba      GAMBIA       0                    NA                0.9825157   0.9275407   1.0374908
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.9957400   0.9617271   1.0297529
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.0072570   0.8975360   1.1169781
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.1811582   0.9611273   1.4011891
9-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.9099355   0.7171775   1.1026935
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.0683538   1.0458442   1.0908634
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.0663664   1.0274649   1.1052680
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.9585440   0.8466820   1.0704059
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.9209218   0.8763536   0.9654900
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                1.1978667   0.9327893   1.4629442
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                1.1377698   1.0767359   1.1988036
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.6552685   0.5104859   0.8000510
12-15 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.9169730   0.8769943   0.9569518
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                0.7580945   0.5892181   0.9269710
12-15 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8947789   0.8475771   0.9419808
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.9721275   0.9254344   1.0188206
12-15 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.9572169   0.9260765   0.9883574
12-15 months   ki1101329-Keneba      GAMBIA       1                    NA                0.9449842   0.8964155   0.9935530
12-15 months   ki1101329-Keneba      GAMBIA       0                    NA                0.9395093   0.8993127   0.9797060
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8708019   0.8425404   0.8990634
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8489093   0.7838572   0.9139615
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.9284797   0.9090131   0.9479464
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.9626026   0.9206516   1.0045535
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8657810   0.7471641   0.9843980
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8191393   0.7797220   0.8585565
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                1.0338658   0.7504484   1.3172832
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9956639   0.9346517   1.0566761
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.9453862   0.7546115   1.1361609
15-18 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8435906   0.8067297   0.8804515
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                0.6696045   0.4234132   0.9157958
15-18 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8578496   0.8151178   0.9005815
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.8230095   0.7719943   0.8740248
15-18 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.8655583   0.8382893   0.8928274
15-18 months   ki1101329-Keneba      GAMBIA       1                    NA                0.8764035   0.8084025   0.9444046
15-18 months   ki1101329-Keneba      GAMBIA       0                    NA                0.8779841   0.8382166   0.9177516
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.7765805   0.7375708   0.8155902
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6844949   0.6284473   0.7405425
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8560297   0.8356979   0.8763616
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8555397   0.8171587   0.8939208
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.7399721   0.6168437   0.8631004
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8178475   0.7822549   0.8534402
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.8007410   0.6551970   0.9462850
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9244343   0.8491946   0.9996739
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.6960205   0.4987013   0.8933396
18-21 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8834947   0.8479866   0.9190029
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.7924818   0.7438187   0.8411449
18-21 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.8505733   0.8231485   0.8779982
18-21 months   ki1101329-Keneba      GAMBIA       1                    NA                0.8293179   0.7582423   0.9003934
18-21 months   ki1101329-Keneba      GAMBIA       0                    NA                0.8105247   0.7654558   0.8555936
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8997469   0.8571925   0.9423014
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.9145494   0.8571412   0.9719577
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.6337039   0.2527062   1.0147016
18-21 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.8702503   0.7907012   0.9497994
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.7662818   0.6401687   0.8923948
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7657928   0.7283542   0.8032314
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.7653011   0.6068941   0.9237081
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.7935815   0.7475420   0.8396211
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8434976   0.7525078   0.9344874
21-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8262246   0.7943916   0.8580576
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.7456293   0.6959167   0.7953420
21-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.7691503   0.7395629   0.7987376
21-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.7101537   0.6338851   0.7864224
21-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.7245570   0.6825931   0.7665210
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.7728988   0.7248964   0.8209012
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8517692   0.7021104   1.0014280
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.7496182   0.6083942   0.8908423
21-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.7328300   0.6554509   0.8102092


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                3.3402171   3.2743239   3.4061103
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                3.8085653   3.6991781   3.9179525
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                3.0490404   2.9824173   3.1156636
0-3 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                3.2568758   3.2199850   3.2937666
0-3 months     ki1101329-Keneba      GAMBIA       NA                   NA                3.1117460   3.0607980   3.1626940
0-3 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                3.6173812   3.5643204   3.6704421
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                3.6471006   3.6339981   3.6602031
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                3.0560787   3.0061448   3.1060127
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.9261033   1.8757410   1.9764655
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.8848530   1.8216037   1.9481024
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                1.9680194   1.9343778   2.0016611
3-6 months     ki1101329-Keneba      GAMBIA       NA                   NA                1.9917249   1.9499823   2.0334676
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.7085606   1.6688133   1.7483079
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.9103432   1.8959278   1.9247587
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.8946008   1.8642204   1.9249811
6-9 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.2403346   1.1889010   1.2917682
6-9 months     ki0047075b-MAL-ED     PERU         NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1101329-Keneba      GAMBIA       NA                   NA                1.4086727   1.3529368   1.4644086
6-9 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.3144775   1.2731267   1.3558284
6-9 months     ki1148112-LCNI-5      MALAWI       NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.3252108   1.3036943   1.3467274
9-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.9798686   0.9411954   1.0185419
9-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                1.0503544   1.0233548   1.0773539
9-12 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.9859004   0.9415938   1.0302070
9-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.9984152   0.9640726   1.0327578
9-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.0692570   1.0496985   1.0888155
12-15 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.9075845   0.8681682   0.9470009
12-15 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.9598579   0.9336493   0.9860665
12-15 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.9411780   0.9094953   0.9728606
12-15 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.8702474   0.8441404   0.8963544
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.9373418   0.9196982   0.9549854
15-18 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8476806   0.8113849   0.8839763
15-18 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.8562969   0.8321689   0.8804249
15-18 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.8768325   0.8429175   0.9107475
15-18 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.7596809   0.7265174   0.7928444
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.8576466   0.8394619   0.8758313
18-21 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8759623   0.8406388   0.9112858
18-21 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.8393900   0.8153565   0.8634234
18-21 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.8164462   0.7785749   0.8543176
18-21 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.9045343   0.8683581   0.9407104
18-21 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
21-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8269217   0.7961503   0.8576932
21-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.7635979   0.7381659   0.7890298
21-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.7224865   0.6857861   0.7591869
21-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.7920360   0.7445193   0.8395527
21-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0221853   -0.1989298    0.1545591
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.4594149   -0.9271773    0.0083476
0-3 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.3816728   -0.6836328   -0.0797128
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0106978   -0.0683545    0.0897501
0-3 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba      GAMBIA       0                    1                 -0.0333474   -0.1431274    0.0764325
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0566955   -0.1985444    0.0851535
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0056733   -0.0204820    0.0318286
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1449167   -0.2719828   -0.0178506
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0547188   -0.2475863    0.1381487
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0046109   -0.3014564    0.2922347
3-6 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        0                    1                 -0.1979830   -0.4456254    0.0496593
3-6 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.1465641   -0.5701466    0.2770185
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0468431   -0.1215358    0.0278497
3-6 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba      GAMBIA       0                    1                  0.0513553   -0.0408089    0.1435195
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0532779   -0.1596895    0.0531337
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0010067   -0.0301222    0.0321356
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0731477   -0.0094282    0.1557237
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0180545   -0.0797700    0.1158790
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1420098   -0.4455660    0.1615463
6-9 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.1492972   -0.1067962    0.4053906
6-9 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.1337360   -0.4092482    0.1417762
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0358688   -0.0224308    0.0941684
6-9 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba      GAMBIA       0                    1                 -0.1046338   -0.2420318    0.0327641
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0007622   -0.1377936    0.1393179
6-9 months     ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI       0                    1                  0.0048875   -0.2076775    0.2174525
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0073784   -0.0435635    0.0583204
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0922349   -0.0127420    0.1972119
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0712445   -0.1844135    0.3269024
9-12 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.1758432   -0.0995982    0.4512847
9-12 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.0519415   -0.2723105    0.1684276
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0290081   -0.0338686    0.0918847
9-12 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.0098301   -0.1029421    0.0832819
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0115171   -0.1033218    0.1263560
9-12 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.2712227   -0.5668283    0.0243829
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0019874   -0.0466468    0.0426720
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0376222   -0.1621255    0.0868810
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0600970   -0.3319582    0.2117643
12-15 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.2617046    0.1115038    0.4119054
12-15 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU         0                    1                  0.1366844   -0.0386646    0.3120334
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0149106   -0.0708129    0.0409916
12-15 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0054749   -0.0683944    0.0574446
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0218926   -0.0928307    0.0490454
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0341228   -0.0118217    0.0800673
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0466418   -0.1720896    0.0788061
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0382019   -0.3286519    0.2522481
15-18 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.1017956   -0.2960988    0.0925076
15-18 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU         0                    1                  0.1882452   -0.0616271    0.4381175
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0425488   -0.0152482    0.1003458
15-18 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba      GAMBIA       0                    1                  0.0015806   -0.0769006    0.0800618
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0920856   -0.1605505   -0.0236206
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0004900   -0.0429005    0.0419205
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0778754   -0.0501118    0.2058627
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1236933   -0.0404248    0.2878113
18-21 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.1874743   -0.0130143    0.3879629
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0580916    0.0023350    0.1138482
18-21 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0187932   -0.1031196    0.0655331
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0148025   -0.0567702    0.0863752
18-21 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.2365464   -0.1536603    0.6267530
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0004890   -0.1325027    0.1315248
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0282805   -0.1371042    0.1936651
21-24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0172730   -0.1136705    0.0791245
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0235209   -0.0342184    0.0812603
21-24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba      GAMBIA       0                    1                  0.0144033   -0.0730999    0.1019065
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0788704   -0.0789473    0.2366882
21-24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI       0                    1                 -0.0167882   -0.1781694    0.1445931


### Parameter: PAR


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0212628   -0.1753016    0.1327760
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.4374070   -0.8830117    0.0081977
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.3744167   -0.6688953   -0.0799380
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0069441   -0.0520638    0.0659520
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0236256   -0.1014433    0.0541920
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0059852   -0.0343767    0.0224062
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0012471   -0.0045465    0.0070407
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0252352   -0.0463508   -0.0041196
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0509445   -0.2199081    0.1180191
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0012733   -0.2780647    0.2806113
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.1901679   -0.4280878    0.0477520
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.1432705   -0.5562717    0.2697308
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0335041   -0.0903894    0.0233811
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                 0.0426809   -0.0256586    0.1110205
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0108719   -0.0324841    0.0107402
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0000299   -0.0071739    0.0072338
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0122947   -0.0006462    0.0252357
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0212463   -0.0645807    0.1070732
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1388881   -0.4260293    0.1482531
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.1434039   -0.1026096    0.3894174
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.1304608   -0.3990978    0.1381761
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0258826   -0.0192171    0.0709823
6-9 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0751698   -0.1749481    0.0246085
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0005843   -0.0266182    0.0277867
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                 0.0057267   -0.1741788    0.1856322
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0016079   -0.0089828    0.0121987
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0807029   -0.0121358    0.1735416
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0671214   -0.1739360    0.3081788
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.1695631   -0.0960756    0.4352019
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0506153   -0.2653605    0.1641298
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0203744   -0.0275378    0.0682867
9-12 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0064454   -0.0717906    0.0588999
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0026752   -0.0188299    0.0241804
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.2105238   -0.4254201    0.0043726
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0009032   -0.0091881    0.0109945
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0444435   -0.1566682    0.0677811
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0556893   -0.3118764    0.2004977
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.2523161    0.1073622    0.3972700
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.1336334   -0.0373524    0.3046192
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0122696   -0.0545956    0.0300563
12-15 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0038063   -0.0474906    0.0398780
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0005545   -0.0147058    0.0135968
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0088620   -0.0011824    0.0189064
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0416585   -0.1535172    0.0702003
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0317544   -0.3057866    0.2422778
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0977056   -0.2842204    0.0888092
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.1838263   -0.0598294    0.4274820
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0332873   -0.0100728    0.0766475
15-18 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0004290   -0.0541219    0.0549799
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0168996   -0.0306509   -0.0031483
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0016169   -0.0078120    0.0110457
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0734127   -0.0409095    0.1877349
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1153349   -0.0387241    0.2693939
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.1799418   -0.0125521    0.3724358
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0469082    0.0044617    0.0893547
18-21 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0128716   -0.0704210    0.0446777
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0047873   -0.0086520    0.0182266
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.2082734   -0.1147547    0.5313016
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0031365   -0.1152596    0.1215326
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0308508   -0.1248326    0.1865343
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0165759   -0.1090840    0.0759322
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0179685   -0.0257171    0.0616541
21-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0123328   -0.0498535    0.0745191
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0191372   -0.0091406    0.0474150
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0153613   -0.1494232    0.1187005
