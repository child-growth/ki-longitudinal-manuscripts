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

**Intervention Variable:** exclfeed6

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

agecat         studyid                    country                        exclfeed6    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                33     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               197     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                12     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               198     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 2     216  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0               214     216  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 4     219  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               215     219  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1                 5     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0               265     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     234  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               234     234  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     219  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               219     219  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                16      16  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      16  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       1                35      39  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       0                 4      39  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               413     435  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                22     435  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               159     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               481     640  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         1               474    1491  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         0              1017    1491  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               368     501  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               133     501  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              9426   12207  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2781   12207  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2052    2449  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               397    2449  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                33     224  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               191     224  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                12     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               196     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 2     213  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0               211     213  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 4     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               218     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1                 5     266  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0               261     266  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     225  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               225     225  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                16      16  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      16  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       1                33      37  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       0                 4      37  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               358     376  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     376  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               140     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               461     601  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         1               377    1333  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         0               956    1333  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               339     464  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               125     464  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              5801    7576  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1775    7576  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              1502    1775  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               273    1775  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                32     217  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               185     217  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                12     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               186     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1                 2     213  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0               211     213  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                 5     220  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               215     220  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1                 5     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0               240     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     210  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               210     210  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     214  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214     214  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                18      18  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      18  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       1                40      45  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       0                 5      45  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1               321     336  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                15     336  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     139  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               139     139  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               129     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               447     576  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         1               242     815  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         0               573     815  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               353     470  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               117     470  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         1                23     144  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         0               121     144  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2205    2786  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               581    2786  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                30     216  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               186     216  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                12     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               182     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1                 2     210  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0               208     210  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                 4     219  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               215     219  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1                 5     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0               230     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     212  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               212     212  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     213  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     213  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                17      17  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      17  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1                 0      14  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          0                14      14  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       1                39      44  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       0                 5      44  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               344     357  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                13     357  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     138  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               138     138  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               131     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               438     569  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         1               255     794  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         0               539     794  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               333     436  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               103     436  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         1                10      31  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         0                21      31  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              2452    3148  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               696    3148  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                28     204  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               176     204  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                12     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               172     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                 4     220  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               216     220  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1                 4     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0               220     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     209  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     209  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     214  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214     214  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                18      18  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      18  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1                 0      14  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          0                14      14  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       1                32      37  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       0                 5      37  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1               345     356  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                11     356  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     137  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               137     137  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               126     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               411     537  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         1               411    1237  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         0               826    1237  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               333     436  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               103     436  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         1                 0       1  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         0                 1       1  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2450    3151  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               701    3151  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                30     204  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     204  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                12     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               163     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1                 4     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0               210     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     208  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               208     208  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                15      15  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      15  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1                 0      14  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          0                14      14  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1               337     350  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                13     350  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     129  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               129     129  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               129     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               404     533  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         1               431    1251  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         0               820    1251  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               345     458  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               113     458  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         1                 0       4  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         0                 4       4  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2434    3114  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               680    3114  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                29     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               173     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                11     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               156     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1                 3     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0               199     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     213  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     213  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     196  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               196     196  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                13      13  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      13  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1                 0      12  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          0                12      12  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       1                29      34  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       0                 5      34  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               126     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               416     542  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         1               421    1234  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         0               813    1234  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               326     428  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               102     428  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         1                28     166  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         0               138     166  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                29     200  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               171     200  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               154     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1                 2     208  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0               206     208  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1                 2     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0               187     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     214  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               214     214  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     194  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               194     194  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                15      15  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      15  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1                 0      12  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          0                12      12  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       1                16      18  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       0                 2      18  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               114     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               371     485  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         1               373    1126  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         0               753    1126  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               252     330  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                78     330  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         1                24     134  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         0               110     134  y_rate_wtkg      


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
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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
![](/tmp/ec7c259a-4862-4d94-933c-c0caf88a984c/acaaa16c-a739-405b-808d-b63dab632207/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ec7c259a-4862-4d94-933c-c0caf88a984c/acaaa16c-a739-405b-808d-b63dab632207/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ec7c259a-4862-4d94-933c-c0caf88a984c/acaaa16c-a739-405b-808d-b63dab632207/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8964435    0.8237935   0.9690936
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8801414    0.8541714   0.9061115
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                1.1785435    1.0307413   1.3263457
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                1.0647228    1.0291259   1.1003198
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                1.0676347    0.9782686   1.1570008
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                0.9704594    0.9440671   0.9968518
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.7909090    0.7730413   0.8087768
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5848960    0.4650105   0.7047816
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.9347792    0.9079576   0.9616009
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8914475    0.8740050   0.9088901
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                0.9536471    0.9347141   0.9725801
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                0.9136472    0.8995231   0.9277714
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8385407    0.8188585   0.8582229
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7949062    0.7606567   0.8291556
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.8566405    0.8526362   0.8606449
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.8572353    0.8503269   0.8641438
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.7626835    0.7480551   0.7773119
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.7065692    0.6746098   0.7385286
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4864479    0.4496004   0.5232955
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4731715    0.4535271   0.4928160
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                0.6328772    0.4618862   0.8038683
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                0.5745024    0.5427476   0.6062572
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                0.4036505    0.3414661   0.4658349
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                0.5004995    0.4811397   0.5198593
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.4486193    0.4260666   0.4711720
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5450975    0.4502057   0.6399893
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5030512    0.4778700   0.5282325
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4854371    0.4701860   0.5006882
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                0.4547725    0.4374727   0.4720723
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                0.4430652    0.4317214   0.4544091
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4928735    0.4769964   0.5087506
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5025359    0.4744014   0.5306704
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4404088    0.4362084   0.4446092
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4390864    0.4308683   0.4473045
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4382142    0.4285132   0.4479152
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4442083    0.4217724   0.4666442
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2150875    0.1756087   0.2545663
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2470996    0.2308704   0.2633289
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                0.4612973    0.2969932   0.6256014
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                0.3821630    0.3562822   0.4080437
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                0.2779470    0.2305935   0.3253005
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    NA                0.2699824    0.2547934   0.2851714
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                0.1956337    0.1367830   0.2544845
6-9 months     ki0047075b-MAL-ED         PERU         0                    NA                0.2627633    0.2469933   0.2785333
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                0.2499821    0.2062696   0.2936946
6-9 months     ki1000109-EE              PAKISTAN     0                    NA                0.2914358    0.1551041   0.4277675
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2011514    0.1761538   0.2261489
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272674    0.1076294   0.3469054
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2400780    0.2187032   0.2614528
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2510601    0.2369049   0.2652153
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                0.2245056    0.1985450   0.2504661
6-9 months     ki1101329-Keneba          GAMBIA       0                    NA                0.1943237    0.1799791   0.2086683
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1819868    0.1697625   0.1942111
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2080136    0.1754575   0.2405697
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                0.2390896    0.1932437   0.2849355
6-9 months     ki1148112-LCNI-5          MALAWI       0                    NA                0.2884123    0.2594236   0.3174009
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2368393    0.2307091   0.2429696
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2456505    0.2346207   0.2566803
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1523691    0.1155033   0.1892348
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1791344    0.1636310   0.1946377
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                0.2713295    0.0909303   0.4517288
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                0.2851258    0.2526249   0.3176266
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                0.2302548    0.1747401   0.2857696
9-12 months    ki0047075b-MAL-ED         PERU         0                    NA                0.1865508    0.1709336   0.2021680
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                0.2651476    0.2138835   0.3164117
9-12 months    ki1000109-EE              PAKISTAN     0                    NA                0.2178900    0.1257959   0.3099842
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1948639    0.1799620   0.2097659
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1502105    0.0814577   0.2189634
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1845200    0.1651448   0.2038952
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1768197    0.1661685   0.1874708
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1342403    0.1123185   0.1561621
9-12 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1693265    0.1546101   0.1840429
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1367917    0.1219827   0.1516006
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1613757    0.1346244   0.1881270
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.2523339    0.1183570   0.3863108
9-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.1814869    0.1043107   0.2586630
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1520196    0.1471005   0.1569388
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1615689    0.1528225   0.1703153
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1261464    0.0707317   0.1815611
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1359673    0.1186689   0.1532658
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.1893619    0.0161091   0.3626146
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.2123575    0.1874834   0.2372316
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                0.1465777    0.0958703   0.1972852
12-15 months   ki1000109-EE              PAKISTAN     0                    NA                0.2076400    0.1078220   0.3074581
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1856157    0.1746788   0.1965527
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1211321    0.0010982   0.2411659
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1585421    0.1345792   0.1825051
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1864029    0.1731710   0.1996347
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1858786    0.1682529   0.2035042
12-15 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1883385    0.1764130   0.2002639
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1731468    0.1580255   0.1882681
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1685444    0.1394174   0.1976715
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1272203    0.1222459   0.1321947
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1410983    0.1318714   0.1503253
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1707000    0.1199389   0.2214610
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1375560    0.1207858   0.1543261
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.0918197   -0.0202115   0.2038509
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.2116949    0.1845123   0.2388776
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1187558    0.0759289   0.1615827
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.1738132    0.1573104   0.1903160
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                0.0737086    0.0281881   0.1192290
15-18 months   ki1000109-EE              PAKISTAN     0                    NA                0.1356273    0.0829507   0.1883039
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1711459    0.1465871   0.1957048
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2893896    0.0839430   0.4948361
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1460929    0.1246598   0.1675259
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1603126    0.1468298   0.1737953
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1565665    0.1391990   0.1739340
15-18 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1595108    0.1466763   0.1723453
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2258771    0.2083746   0.2433796
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2436200    0.2097279   0.2775121
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1566817    0.1511190   0.1622444
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1719185    0.1593663   0.1844706
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1116869    0.0604052   0.1629685
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1495183    0.1310985   0.1679380
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.0739499    0.0144402   0.1334595
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.1665070    0.1412208   0.1917932
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1752236    0.1042320   0.2462153
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.1455279    0.1271284   0.1639274
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                0.1090737    0.0599290   0.1582184
18-21 months   ki1000109-EE              PAKISTAN     0                    NA                0.0920099   -0.0098532   0.1938729
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1157259    0.0926383   0.1388135
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1370179    0.1238770   0.1501587
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1681057    0.1476672   0.1885442
18-21 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1449797    0.1320599   0.1578996
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1534460    0.1349248   0.1719671
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1178860    0.0887214   0.1470507
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.1943857    0.1224743   0.2662972
18-21 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.1972013    0.1653910   0.2290117
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1625886    0.1191742   0.2060030
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1520244    0.1353971   0.1686517
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.1077634    0.0213783   0.1941486
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.1443061    0.1200023   0.1686099
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.2306449    0.1845145   0.2767753
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.1725284    0.1518121   0.1932447
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1504306    0.1264719   0.1743893
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1387375    0.1259749   0.1515000
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1448282    0.1261844   0.1634721
21-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1750140    0.1618103   0.1882177
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1832545    0.1539275   0.2125816
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1549205    0.1127768   0.1970641
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.1501839    0.0662685   0.2340993
21-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.1842906    0.1349686   0.2336126


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.8815161   0.8573098   0.9057224
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.0702868   1.0355019   1.1050717
0-3 months     ki0047075b-MAL-ED         PERU         NA                   NA                0.9722590   0.9463823   0.9981357
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.7852849   0.7678149   0.8027549
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                0.9263104   0.9149216   0.9376991
0-3 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.8262343   0.8091204   0.8433482
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.8567813   0.8531554   0.8604071
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.7536287   0.7402358   0.7670217
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4752798   0.4582021   0.4923576
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                0.4986791   0.4796733   0.5176848
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.4538554   0.4355388   0.4721719
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                0.4467297   0.4371593   0.4563000
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4969184   0.4830319   0.5108048
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4401107   0.4363074   0.4439140
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4390246   0.4301757   0.4478736
6-9 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2415793   0.2267676   0.2563910
6-9 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2701634   0.2553060   0.2850207
6-9 months     ki0047075b-MAL-ED         PERU         NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki1000109-EE              PAKISTAN     NA                   NA                0.2545881   0.2127069   0.2964693
6-9 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2018620   0.1756088   0.2281152
6-9 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1101329-Keneba          GAMBIA       NA                   NA                0.2019457   0.1892538   0.2146377
6-9 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1872663   0.1750716   0.1994611
6-9 months     ki1148112-LCNI-5          MALAWI       NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2387113   0.2332818   0.2441408
9-12 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1745300   0.1605119   0.1885482
9-12 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED         PERU         NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki1000109-EE              PAKISTAN     NA                   NA                0.2597774   0.2129342   0.3066206
9-12 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1940042   0.1780308   0.2099775
9-12 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1578129   0.1453187   0.1703072
9-12 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1419417   0.1290817   0.1548016
9-12 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1546030   0.1501980   0.1590079
12-15 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1360408   0.1198127   0.1522689
12-15 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki1000109-EE              PAKISTAN     NA                   NA                0.1548294   0.1084427   0.2012160
12-15 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1855182   0.1710991   0.1999372
12-15 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1876150   0.1774623   0.1977678
12-15 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1722034   0.1587499   0.1856570
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1301049   0.1256802   0.1345296
15-18 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1422772   0.1262424   0.1583121
15-18 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.1725504   0.1563874   0.1887134
15-18 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0830902   0.0429076   0.1232727
15-18 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1741261   0.1450974   0.2031549
15-18 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1583148   0.1480451   0.1685846
15-18 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2320613   0.2164969   0.2476258
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1596440   0.1546004   0.1646877
18-21 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1436485   0.1262881   0.1610088
18-21 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.1462090   0.1281722   0.1642458
18-21 months   ki1000109-EE              PAKISTAN     NA                   NA                0.1065643   0.0620028   0.1511258
18-21 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1529026   0.1419060   0.1638992
18-21 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1448468   0.1289722   0.1607215
18-21 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.2016785   0.1726437   0.2307133
21-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1538238   0.1384163   0.1692313
21-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.1738613   0.1535969   0.1941258
21-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1654935   0.1547926   0.1761944
21-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1761495   0.1516134   0.2006855
21-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.1779746   0.1356818   0.2202674


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0163021   -0.0934559    0.0608516
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1138207   -0.2660959    0.0384546
0-3 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0971753   -0.1903571   -0.0039934
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.2060130   -0.3343686   -0.0776574
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0433317   -0.0753314   -0.0113319
0-3 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0399999   -0.0635948   -0.0164050
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0436345   -0.0831781   -0.0040910
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0005948   -0.0069822    0.0081718
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0561143   -0.0912236   -0.0210050
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0132764   -0.0553603    0.0288074
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0583749   -0.2321574    0.1154076
3-6 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         0                    1                  0.0968490    0.0317207    0.1619774
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0964782   -0.0111936    0.2041500
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0176141   -0.0470938    0.0118656
3-6 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0117073   -0.0322580    0.0088434
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0096624   -0.0224428    0.0417676
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0013224   -0.0104259    0.0077812
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0059940   -0.0184806    0.0304686
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0320121   -0.0106986    0.0747229
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0791343   -0.2453904    0.0871218
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0079647   -0.0576945    0.0417652
6-9 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU         0                    1                  0.0671295    0.0062025    0.1280565
6-9 months     ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN     0                    1                  0.0414537   -0.1017144    0.1846219
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0261160   -0.0862950    0.1385270
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0109820   -0.0143516    0.0363157
6-9 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0301819   -0.0596400   -0.0007237
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0260267   -0.0088140    0.0608675
6-9 months     ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5          MALAWI       0                    1                  0.0493227   -0.0055474    0.1041928
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0088112   -0.0036114    0.0212337
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0267653   -0.0134054    0.0669360
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0137963   -0.1700787    0.1976712
9-12 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.0437041   -0.1013737    0.0139656
9-12 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN     0                    1                 -0.0472576   -0.1526584    0.0581433
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0446534   -0.1050363    0.0157295
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0077003   -0.0299251    0.0145244
9-12 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA       0                    1                  0.0350862    0.0092762    0.0608962
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0245840   -0.0061324    0.0553005
9-12 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0708471   -0.2260723    0.0843782
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0095493   -0.0002512    0.0193498
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0098209   -0.0484269    0.0680688
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0229957   -0.1521376    0.1981289
12-15 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN     0                    1                  0.0610623   -0.0508970    0.1730217
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0644837   -0.1771487    0.0481813
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0278607    0.0007427    0.0549787
12-15 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0024599   -0.0182426    0.0231624
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0046024   -0.0375417    0.0283369
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0138780    0.0035520    0.0242040
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0331440   -0.0867769    0.0204889
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.1198752    0.0044805    0.2352699
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0550574    0.0091610    0.1009539
15-18 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN     0                    1                  0.0619187   -0.0077012    0.1315387
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.1182437   -0.0708346    0.3073219
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0142197   -0.0103388    0.0387782
15-18 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0029443   -0.0186556    0.0245441
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0177429   -0.0204490    0.0559348
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0152367    0.0015019    0.0289715
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0378314   -0.0164996    0.0921624
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0925571    0.0275167    0.1575976
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0296957   -0.1030330    0.0436416
18-21 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN     0                    1                 -0.0170638   -0.1301624    0.0960347
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0212920   -0.0052499    0.0478340
18-21 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0231260   -0.0469612    0.0007093
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0355599   -0.0699022   -0.0012176
18-21 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0028156   -0.0761964    0.0818276
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0105642   -0.0571954    0.0360671
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0365427   -0.0536128    0.1266981
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0581165   -0.1086851   -0.0075479
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0116932   -0.0384519    0.0150656
21-24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0301858    0.0073197    0.0530519
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0283341   -0.0794525    0.0227844
21-24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0341067   -0.0655325    0.1337459


### Parameter: PAR


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0149275   -0.0829094    0.0530545
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1082567   -0.2524308    0.0359175
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0953757   -0.1862415   -0.0045099
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0056242   -0.0122648    0.0010165
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0331321   -0.0572312   -0.0090329
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0273367   -0.0434791   -0.0111944
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0123064   -0.0229421   -0.0016707
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0001408   -0.0015864    0.0018679
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0090548   -0.0147444   -0.0033652
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0111681   -0.0477665    0.0254303
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0546797   -0.2201920    0.1108326
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0950285    0.0315087    0.1585484
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0052360   -0.0000300    0.0105021
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0139901   -0.0366908    0.0087105
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0080429   -0.0228354    0.0067497
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0040448   -0.0046039    0.0126936
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0002981   -0.0024331    0.0018370
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0008104   -0.0028002    0.0044210
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0264918   -0.0109694    0.0639530
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0781475   -0.2351679    0.0788730
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0077837   -0.0562705    0.0407032
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0657596    0.0063438    0.1251753
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0046060   -0.0117607    0.0209727
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0007107   -0.0038116    0.0052329
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0090873   -0.0106926    0.0288672
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0225598   -0.0435794   -0.0015403
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0052795   -0.0033544    0.0139134
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                 0.0438279   -0.0027552    0.0904111
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0018719   -0.0006958    0.0044397
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0221610   -0.0134808    0.0578028
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0132628   -0.1610085    0.1875341
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0427742   -0.0990079    0.0134595
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0053702   -0.0181590    0.0074186
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0008598   -0.0033281    0.0016086
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0069884   -0.0242218    0.0102450
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0235726    0.0059007    0.0412445
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0051500   -0.0020493    0.0123493
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0673675   -0.1740525    0.0393175
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0025833    0.0003919    0.0047748
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0098944   -0.0416794    0.0614682
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0208327   -0.1454665    0.1871319
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0082517   -0.0083437    0.0248470
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0000976   -0.0040742    0.0038790
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0214902    0.0007160    0.0422645
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0017365   -0.0120956    0.0155686
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0009434   -0.0087238    0.0068371
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0028846    0.0004995    0.0052697
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0284227   -0.0747012    0.0178558
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1115998    0.0032288    0.2199708
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0537946    0.0090322    0.0985571
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0093816   -0.0036736    0.0224368
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0029802   -0.0044878    0.0104483
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0102586   -0.0083692    0.0288864
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0017483   -0.0125454    0.0160420
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0061842   -0.0033330    0.0157014
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0029623    0.0000864    0.0058381
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0319616   -0.0155411    0.0794643
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0866992    0.0251134    0.1482850
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0290146   -0.1005209    0.0424917
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0025094   -0.0192689    0.0142501
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0167623   -0.0036461    0.0371708
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0152031   -0.0313295    0.0009233
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0085991   -0.0169421   -0.0002562
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0072928   -0.0589756    0.0735612
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0087648   -0.0492392    0.0317096
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0357266   -0.0487269    0.1201801
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0567835   -0.1061015   -0.0074656
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0084602   -0.0289340    0.0120137
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0206652    0.0051331    0.0361974
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0071051   -0.0190807    0.0048706
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0277907   -0.0542224    0.1098038
