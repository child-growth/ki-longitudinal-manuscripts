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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 32    245  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                213    245  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 14    217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                203    217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 10    235  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0                225    235  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                  5    230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                225    230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1                  7    280  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0                273    280  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    268  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                265    268  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                229    232  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       1                  3      7  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       0                  4      7  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                161    634  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                473    634  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         1                400   1384  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         0                984   1384  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                373    466  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    466  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1               7719   9920  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               2201   9920  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1912   2293  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                381   2293  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 30    232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                202    232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 12    208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                196    208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1                  9    228  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0                219    228  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                  4    232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                228    232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1                  6    267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0                261    267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    240  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                239    240  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    235  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                231    235  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       1                  3      7  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       0                  4      7  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                144    601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                457    601  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         1                338   1268  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         0                930   1268  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                367    460  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                 93    460  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1               5122   6658  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               1536   6658  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               1483   1755  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                272   1755  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 28    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                196    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 12    198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                186    198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1                  9    228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0                219    228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                  4    229  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                225    229  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1                  6    245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0                239    245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                227    228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    224  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1                  0      4  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          0                  4      4  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       1                  4      9  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       0                  5      9  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    139  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                139    139  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                132    576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                444    576  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         1                220    774  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         0                554    774  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                377    467  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                 90    467  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         1                 23    144  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         0                121    144  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2189   2769  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                580   2769  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 27    225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                198    225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 12    194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                182    194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1                  8    224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0                216    224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                  3    228  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                225    228  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1                  6    235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0                229    235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2    230  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                228    230  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    223  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1                  0      4  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          0                  4      4  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    138  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                138    138  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                134    568  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                434    568  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         1                223    741  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         0                518    741  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                345    421  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                 76    421  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         1                 10     31  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         0                 21     31  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               2367   3053  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                686   3053  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                188    212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 12    184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                172    184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1                  8    223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0                215    223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                  3    229  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                226    229  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1                  5    224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0                219    224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                224    225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                222    225  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    137  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                137    137  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                130    535  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                405    535  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         1                351   1149  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         0                798   1149  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                339    417  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    417  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         1                  0      1  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         0                  1      1  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2352   3043  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                691   3043  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25    212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                187    212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 12    175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                163    175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1                  9    224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0                215    224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1                  5    214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0                209    214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                223    224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    219  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                216    219  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       1                  3      8  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       0                  5      8  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    129  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                129    129  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                133    531  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                398    531  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         1                364   1159  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         0                795   1159  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                351    437  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                 86    437  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         1                  0      4  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         0                  4      4  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1               2338   3005  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                667   3005  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                185    209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                156    167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1                  9    224  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0                215    224  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1                  4    202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0                198    202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    232  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                231    232  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    207  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                204    207  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  5      5  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      5  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       1                  2      7  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       0                  5      7  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                130    540  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                410    540  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         1                358   1145  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         0                787   1145  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                334    412  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                 78    412  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         1                 28    166  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         0                138    166  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 24    207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                183    207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                154    165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1                  9    223  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0                214    223  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                  4    226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                222    226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1                  3    189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0                186    189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    233  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232    233  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    205  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                202    205  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  6      6  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      6  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1                  0      4  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          0                  4      4  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       1                  0      2  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       0                  2      2  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                118    483  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                365    483  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         1                314   1046  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         0                732   1046  y_rate_wtkg      
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
![](/tmp/5128d579-1f70-45a0-bfd3-32ceae502ecb/494780eb-ecbf-4eed-ac78-d9e7b97f0c15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5128d579-1f70-45a0-bfd3-32ceae502ecb/494780eb-ecbf-4eed-ac78-d9e7b97f0c15/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5128d579-1f70-45a0-bfd3-32ceae502ecb/494780eb-ecbf-4eed-ac78-d9e7b97f0c15/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8739106    0.8126920   0.9351291
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8786592    0.8536635   0.9036550
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                1.1456029    0.9705937   1.3206121
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                1.0598673    1.0247177   1.0950168
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                0.7646341    0.6006741   0.9285942
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                0.7576869    0.7349145   0.7804593
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                0.8372995    0.7064060   0.9681929
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                0.9593001    0.9319184   0.9866818
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                1.0619875    0.9042981   1.2196769
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                0.9686296    0.9431775   0.9940816
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.9314520    0.9051613   0.9577428
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.8923978    0.8751991   0.9095964
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                0.9543888    0.9342257   0.9745520
0-3 months     ki1101329-Keneba      GAMBIA       0                    NA                0.9125876    0.8985448   0.9266303
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8383022    0.8182787   0.8583258
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7917617    0.7526299   0.8308935
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.8558194    0.8513903   0.8602486
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.8575626    0.8484026   0.8667227
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.7617037    0.7471901   0.7762174
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.7076813    0.6755615   0.7398011
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4674570    0.4332072   0.5017069
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4746994    0.4559241   0.4934747
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                0.6409587    0.4731190   0.8087984
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                0.5741130    0.5423584   0.6058677
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                0.4279072    0.3201283   0.5356861
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                0.4443757    0.4266827   0.4620687
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                0.4723659    0.3597202   0.5850116
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                0.4988281    0.4796094   0.5180469
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.5021093    0.4777163   0.5265022
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.4856691    0.4703699   0.5009683
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                0.4541696    0.4347860   0.4735531
3-6 months     ki1101329-Keneba      GAMBIA       0                    NA                0.4434707    0.4320416   0.4548997
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4960911    0.4799848   0.5121974
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4992918    0.4719763   0.5266073
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4386069    0.4340147   0.4431991
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4345582    0.4215258   0.4475905
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4376468    0.4275373   0.4477563
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4433219    0.4209337   0.4657100
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2173546    0.1821966   0.2525125
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2467971    0.2308771   0.2627171
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                0.3676026    0.1811031   0.5541022
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                0.3825115    0.3566913   0.4083318
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                0.1136157    0.0158178   0.2114135
6-9 months     ki0047075b-MAL-ED     INDIA        0                    NA                0.2354316    0.2206943   0.2501689
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                0.1884335    0.1239257   0.2529414
6-9 months     ki0047075b-MAL-ED     PERU         0                    NA                0.2632249    0.2474924   0.2789574
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2358500    0.2152321   0.2564679
6-9 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2519255    0.2377463   0.2661047
6-9 months     ki1101329-Keneba      GAMBIA       1                    NA                0.2166366    0.1889425   0.2443307
6-9 months     ki1101329-Keneba      GAMBIA       0                    NA                0.1944126    0.1797601   0.2090651
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1814268    0.1695016   0.1933520
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2089375    0.1690896   0.2487854
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                0.2648780    0.2173235   0.3124324
6-9 months     ki1148112-LCNI-5      MALAWI       0                    NA                0.2896124    0.2604406   0.3187842
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2367581    0.2306180   0.2428982
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2465048    0.2355337   0.2574758
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1544653    0.1140047   0.1949258
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1747150    0.1601288   0.1893012
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                0.3933411    0.2160771   0.5706051
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                0.2827857    0.2502798   0.3152915
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.1652329    0.1020139   0.2284519
9-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1792498    0.1646887   0.1938108
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1769510    0.1118470   0.2420551
9-12 months    ki0047075b-MAL-ED     PERU         0                    NA                0.1877565    0.1721386   0.2033745
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1825359    0.1628533   0.2022186
9-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1757134    0.1652092   0.1862176
9-12 months    ki1101329-Keneba      GAMBIA       1                    NA                0.1383721    0.1146697   0.1620745
9-12 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1704465    0.1553093   0.1855837
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1378410    0.1237069   0.1519750
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1464699    0.1100517   0.1828880
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.2277085    0.0699261   0.3854910
9-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.1576395    0.0731608   0.2421182
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1507512    0.1457990   0.1557033
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1598900    0.1501773   0.1696027
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1309552    0.0750855   0.1868249
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1354891    0.1186141   0.1523641
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.2177071    0.0448798   0.3905343
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.2110264    0.1861587   0.2358941
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1364731    0.0773877   0.1955585
12-15 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1753603    0.1588478   0.1918729
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                0.1495693    0.0073473   0.2917913
12-15 months   ki0047075b-MAL-ED     PERU         0                    NA                0.1415602    0.1248323   0.1582881
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1670244    0.1428984   0.1911504
12-15 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1836709    0.1705367   0.1968050
12-15 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1889354    0.1690705   0.2088002
12-15 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1901064    0.1778574   0.2023554
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1732681    0.1584576   0.1880787
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1809122    0.1439354   0.2178891
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1277874    0.1224898   0.1330851
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1423239    0.1328283   0.1518195
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1764475    0.1194432   0.2334517
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1381296    0.1222592   0.1540000
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.0250934   -0.0666336   0.1168204
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.2098198    0.1824936   0.2371460
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1851480    0.0917188   0.2785772
15-18 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1633543    0.1483664   0.1783421
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                0.0937279   -0.0015239   0.1889797
15-18 months   ki0047075b-MAL-ED     PERU         0                    NA                0.1474439    0.1282855   0.1666024
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1442600    0.1212346   0.1672854
15-18 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1610227    0.1477470   0.1742984
15-18 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1528972    0.1332750   0.1725195
15-18 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1594935    0.1464432   0.1725439
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2279333    0.2105511   0.2453155
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2335797    0.1967056   0.2704538
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1567424    0.1508262   0.1626586
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1719278    0.1588123   0.1850432
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1067315    0.0575067   0.1559563
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1458647    0.1280030   0.1637265
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.1008170    0.0365554   0.1650786
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.1664299    0.1409772   0.1918825
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1299081    0.0159308   0.2438853
18-21 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1718445    0.1575461   0.1861430
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1222131    0.1008764   0.1435498
18-21 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1364951    0.1233905   0.1495996
18-21 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1702852    0.1484061   0.1921642
18-21 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1447734    0.1316813   0.1578656
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1504901    0.1321829   0.1687973
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1085518    0.0740465   0.1430570
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.1876807    0.1148072   0.2605542
18-21 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.1965576    0.1647108   0.2284044
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1773149    0.1346066   0.2200233
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1516070    0.1354241   0.1677898
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.2139501    0.0501865   0.3777138
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.1395137    0.1165923   0.1624351
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1449941    0.0776191   0.2123690
21-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1570041    0.1435283   0.1704798
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1531561    0.1298336   0.1764786
21-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1392514    0.1263346   0.1521682
21-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1409362    0.1201593   0.1617131
21-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1765360    0.1631477   0.1899244
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1813216    0.1526394   0.2100039
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1646894    0.1183857   0.2109932
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.1183683    0.0355095   0.2012271
21-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.1852211    0.1362073   0.2342350


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8793764   0.8562449   0.9025078
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.0655134   1.0311555   1.0998713
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                0.7588477   0.7364127   0.7812826
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                0.9566479   0.9296524   0.9836434
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                0.9709635   0.9457785   0.9961485
0-3 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.9024472   0.8878738   0.9170206
0-3 months     ki1101329-Keneba      GAMBIA       NA                   NA                0.9245701   0.9128441   0.9362962
0-3 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.8290682   0.8112267   0.8469097
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.8562140   0.8521272   0.8603009
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.7527222   0.7394082   0.7660362
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4740560   0.4573508   0.4907612
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                0.4437256   0.4262017   0.4612496
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1101329-Keneba      GAMBIA       NA                   NA                0.4465835   0.4366897   0.4564773
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4969685   0.4829796   0.5109574
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4376750   0.4329472   0.4424029
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4386833   0.4295081   0.4478585
6-9 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED     INDIA        NA                   NA                0.2306231   0.2156296   0.2456166
6-9 months     ki0047075b-MAL-ED     PERU         NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1101329-Keneba      GAMBIA       NA                   NA                0.2005067   0.1873236   0.2136898
6-9 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1871486   0.1748771   0.1994201
6-9 months     ki1148112-LCNI-5      MALAWI       NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2387387   0.2332737   0.2442038
9-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.1787492   0.1645237   0.1929747
9-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1780389   0.1687408   0.1873370
9-12 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.1608923   0.1478424   0.1739422
9-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1395865   0.1265823   0.1525906
9-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1533597   0.1488837   0.1578358
12-15 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1739653   0.1578765   0.1900541
12-15 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1796101   0.1678900   0.1913301
12-15 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1891400   0.1785232   0.1997569
12-15 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1746639   0.1610783   0.1882495
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1308582   0.1262352   0.1354811
15-18 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1642299   0.1493519   0.1791079
15-18 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1558862   0.1440925   0.1676799
15-18 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1573149   0.1464971   0.1681327
15-18 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2291397   0.2134657   0.2448138
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1598556   0.1545499   0.1651613
18-21 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1701596   0.1556514   0.1846677
18-21 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1324685   0.1209911   0.1439458
18-21 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1526855   0.1413636   0.1640074
18-21 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1428759   0.1266216   0.1591302
18-21 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.2016785   0.1726437   0.2307133
21-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1565193   0.1433011   0.1697376
21-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1419760   0.1304951   0.1534569
21-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1661358   0.1549650   0.1773065
21-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1784694   0.1533807   0.2035582
21-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1779746   0.1356818   0.2202674


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0047487   -0.0613894    0.0708867
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0857357   -0.2639423    0.0924710
0-3 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        0                    1                 -0.0069472   -0.1724127    0.1585182
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.1220006   -0.0117262    0.2557274
0-3 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0933579   -0.2530882    0.0663723
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0390543   -0.0702829   -0.0078257
0-3 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba      GAMBIA       0                    1                 -0.0418013   -0.0661113   -0.0174913
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0465405   -0.0905133   -0.0025678
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0017432   -0.0082284    0.0117149
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0540225   -0.0892712   -0.0187737
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0072423   -0.0322284    0.0467131
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0668457   -0.2375317    0.1038404
3-6 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.0164685   -0.0927529    0.1256900
3-6 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         0                    1                  0.0264622   -0.0878112    0.1407356
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0164401   -0.0452012    0.0123209
3-6 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba      GAMBIA       0                    1                 -0.0106989   -0.0330402    0.0116423
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0032007   -0.0283991    0.0348005
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0040488   -0.0177021    0.0096046
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0056751   -0.0188553    0.0302055
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0294426   -0.0093287    0.0682138
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0149089   -0.1734043    0.2032221
6-9 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.1218160    0.0229139    0.2207180
6-9 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU         0                    1                  0.0747914    0.0083928    0.1411900
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0160755   -0.0086180    0.0407689
6-9 months     ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba      GAMBIA       0                    1                 -0.0222240   -0.0532975    0.0088494
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0275107   -0.0141508    0.0691722
6-9 months     ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI       0                    1                  0.0247344   -0.0315155    0.0809844
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0097467   -0.0026146    0.0221079
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0202498   -0.0227791    0.0632786
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1105554   -0.2916691    0.0705583
9-12 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.0140169   -0.0508573    0.0788910
9-12 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU         0                    1                  0.0108055   -0.0561456    0.0777566
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0068225   -0.0290810    0.0154360
9-12 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba      GAMBIA       0                    1                  0.0320744    0.0045145    0.0596343
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0086289   -0.0305028    0.0477606
9-12 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.0700690   -0.2528888    0.1127508
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0091388   -0.0015538    0.0198314
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0045338   -0.0538799    0.0629476
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0066807   -0.1814194    0.1680581
12-15 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0388873   -0.0224621    0.1002366
12-15 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU         0                    1                 -0.0080091   -0.1512115    0.1351933
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0166465   -0.0103915    0.0436844
12-15 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba      GAMBIA       0                    1                  0.0011710   -0.0216067    0.0239488
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0076441   -0.0322560    0.0475442
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0145365    0.0038083    0.0252647
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0383179   -0.0975074    0.0208717
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1847264    0.0891378    0.2803150
15-18 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0217937   -0.1164175    0.0728300
15-18 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0537160   -0.0434433    0.1508754
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0167627   -0.0092435    0.0427690
15-18 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba      GAMBIA       0                    1                  0.0065963   -0.0169733    0.0301659
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0056464   -0.0349955    0.0462883
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0151853    0.0008238    0.0295469
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0391333   -0.0129701    0.0912366
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0656129   -0.0041120    0.1353378
18-21 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0419364   -0.0729342    0.1568071
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0142820   -0.0101072    0.0386711
18-21 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0255118   -0.0507810   -0.0002426
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0419383   -0.0809042   -0.0029725
18-21 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0088769   -0.0702640    0.0880179
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0257080   -0.0713787    0.0199627
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0744364   -0.2398958    0.0910230
21-24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0120100   -0.0566994    0.0807194
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0139047   -0.0401834    0.0123740
21-24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba      GAMBIA       0                    1                  0.0355999    0.0108584    0.0603414
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0166322   -0.0705719    0.0373075
21-24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0668528   -0.0303898    0.1640955


### Parameter: PAR


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0054658   -0.0521708    0.0631024
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0800895   -0.2495522    0.0893732
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0057865   -0.1660352    0.1544622
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1193484   -0.0110556    0.2497524
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0910240   -0.2467704    0.0647224
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0290049   -0.0523864   -0.0056233
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0298187   -0.0471450   -0.0124924
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0092340   -0.0181094   -0.0003587
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003946   -0.0018138    0.0026030
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0089815   -0.0148895   -0.0030735
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0065990   -0.0280245    0.0412224
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0627611   -0.2253105    0.0997882
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0158185   -0.0890925    0.1207294
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0258676   -0.0855500    0.1372851
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0130481   -0.0350155    0.0089193
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0075860   -0.0240652    0.0088931
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0008774   -0.0054702    0.0072249
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009319   -0.0040895    0.0022258
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0010365   -0.0026195    0.0046925
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0255006   -0.0086724    0.0596736
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0155472   -0.1630846    0.1941790
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.1170074    0.0219593    0.2120555
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0729598    0.0082049    0.1377146
6-9 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0133153   -0.0058321    0.0324627
6-9 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0161299   -0.0384533    0.0061934
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0057218   -0.0023797    0.0138233
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                 0.0180396   -0.0298153    0.0658944
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0019806   -0.0005836    0.0045449
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0185693   -0.0194979    0.0566366
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1087488   -0.2804190    0.0629214
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0135163   -0.0490419    0.0760744
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0105296   -0.0547125    0.0757717
9-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0044970   -0.0215314    0.0125374
9-12 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0225202    0.0031594    0.0418811
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0017455   -0.0045617    0.0080527
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0427421   -0.1717032    0.0862190
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0026086    0.0003076    0.0049095
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0044034   -0.0484659    0.0572727
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0075125   -0.1733026    0.1582776
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0374922   -0.0216640    0.0966484
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0078303   -0.1474527    0.1317921
12-15 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0125856   -0.0079167    0.0330879
12-15 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0002047   -0.0157773    0.0161867
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0013957   -0.0053716    0.0081631
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0030707    0.0006175    0.0055240
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0336593   -0.0860984    0.0187798
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1783261    0.0892288    0.2674235
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0209181   -0.1117417    0.0699055
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0524610   -0.0422757    0.1471977
15-18 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0116262   -0.0078312    0.0310836
15-18 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0044177   -0.0118439    0.0206793
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0012064   -0.0066582    0.0090710
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0031132    0.0000662    0.0061602
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0359832   -0.0103278    0.0822942
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0598322   -0.0059688    0.1256331
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0402515   -0.0700091    0.1505121
18-21 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0102554   -0.0083086    0.0288194
18-21 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0175996   -0.0351741   -0.0000252
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0076142   -0.0150375   -0.0001909
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0139978   -0.0527470    0.0807426
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0251994   -0.0657989    0.0154001
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0704601   -0.2266470    0.0857269
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0115253   -0.0544118    0.0774624
21-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0111801   -0.0310676    0.0087075
21-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0251996    0.0076870    0.0427122
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0028522   -0.0124371    0.0067327
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0596063   -0.0215261    0.1407386
