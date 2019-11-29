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

**Intervention Variable:** predexfd6

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

agecat         studyid                    country                        predexfd6    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                84     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               146     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                30     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               180     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1                11     216  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0               205     216  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                11     219  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               208     219  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1                92     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0               178     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     234  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               231     234  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     219  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               218     219  y_rate_wtkg      
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
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              9440   12207  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2767   12207  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2056    2449  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               393    2449  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                81     224  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               143     224  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                30     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               178     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1                11     213  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0               202     213  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                11     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               211     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1                90     266  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0               176     266  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               219     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     225  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               224     225  y_rate_wtkg      
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
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              5812    7576  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1764    7576  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              1504    1775  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               271    1775  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                76     217  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               141     217  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                29     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               169     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1                11     213  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0               202     213  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                12     220  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               208     220  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1                86     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0               159     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     210  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               207     210  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     214  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     214  y_rate_wtkg      
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
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2212    2786  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               574    2786  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                78     216  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               138     216  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                28     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               166     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1                11     210  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0               199     210  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                11     219  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               208     219  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1                82     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0               153     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     212  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     212  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     213  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212     213  y_rate_wtkg      
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
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              2462    3148  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               686    3148  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                73     204  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               131     204  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                27     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               157     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1                11     209  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0               198     209  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                11     220  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               209     220  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1                77     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0               147     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     214  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     214  y_rate_wtkg      
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
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2460    3151  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               691    3151  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                75     204  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     204  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                27     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               148     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1                11     209  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0               198     209  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1                75     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0               139     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               203     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     208  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               207     208  y_rate_wtkg      
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
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2443    3114  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               671    3114  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                75     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               127     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                25     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               142     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1                10     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0               199     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1                70     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0               132     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     213  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               210     213  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     196  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               195     196  y_rate_wtkg      
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
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                73     200  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               127     200  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               140     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1                10     208  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0               198     208  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1                64     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0               125     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     214  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               211     214  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     194  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               193     194  y_rate_wtkg      
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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/c2d7360a-49d5-4d8c-994d-6b63828f6efb/b80c4628-deb2-4153-98be-55bcae8d1cef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c2d7360a-49d5-4d8c-994d-6b63828f6efb/b80c4628-deb2-4153-98be-55bcae8d1cef/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c2d7360a-49d5-4d8c-994d-6b63828f6efb/b80c4628-deb2-4153-98be-55bcae8d1cef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8814704    0.8435588   0.9193820
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8814524    0.8491127   0.9137921
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                1.1689239    1.0606585   1.2771893
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                1.0555445    1.0194020   1.0916870
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                0.7505324    0.6434151   0.8576497
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                0.7588256    0.7350524   0.7825988
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                0.8177683    0.6772260   0.9583106
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                0.9591346    0.9309277   0.9873414
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                1.0111071    0.9686082   1.0536059
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                0.9519024    0.9193101   0.9844947
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.7909090    0.7730413   0.8087768
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5848960    0.4650105   0.7047816
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.9291450    0.9022216   0.9560683
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8906391    0.8731897   0.9080886
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                0.9525794    0.9338867   0.9712722
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                0.9144152    0.9004860   0.9283445
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8387897    0.8190708   0.8585086
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7999785    0.7654506   0.8345064
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.8566774    0.8526735   0.8606814
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.8570664    0.8501500   0.8639829
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.7628280    0.7481231   0.7775328
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.7051834    0.6739577   0.7364091
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4771828    0.4517609   0.5026047
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4744757    0.4519535   0.4969978
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                0.6036810    0.5227223   0.6846396
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                0.5743407    0.5402810   0.6084004
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                0.4194641    0.3392598   0.4996683
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                0.4436721    0.4251369   0.4622073
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                0.4065637    0.3028505   0.5102770
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                0.5271068    0.5058709   0.5483428
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                0.4948772    0.4624499   0.5273046
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                0.5000254    0.4763743   0.5236764
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.4486193    0.4260666   0.4711720
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5450975    0.4502057   0.6399893
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5006127    0.4748014   0.5264241
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4850385    0.4698260   0.5002509
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                0.4519909    0.4344871   0.4694947
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                0.4433829    0.4320331   0.4547326
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4933390    0.4774522   0.5092257
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5052655    0.4772967   0.5332343
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4404896    0.4363007   0.4446786
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4388267    0.4305458   0.4471075
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4382895    0.4285415   0.4480374
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4421329    0.4198004   0.4644654
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2313372    0.2031288   0.2595455
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2474027    0.2298790   0.2649263
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                0.4249760    0.3385994   0.5113526
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                0.3841564    0.3571502   0.4111625
6-9 months     ki0047075b-MAL-ED         INDIA        1                    NA                0.2338274    0.1854083   0.2822466
6-9 months     ki0047075b-MAL-ED         INDIA        0                    NA                0.2385303    0.2231232   0.2539375
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                0.3217437    0.2800619   0.3634256
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    NA                0.2696862    0.2541184   0.2852540
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                0.2528540    0.2328111   0.2728969
6-9 months     ki0047075b-MAL-ED         PERU         0                    NA                0.2678056    0.2464114   0.2891999
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                0.2499821    0.2062696   0.2936946
6-9 months     ki1000109-EE              PAKISTAN     0                    NA                0.2914358    0.1551041   0.4277675
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2011514    0.1761538   0.2261489
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272674    0.1076294   0.3469054
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2390654    0.2181638   0.2599670
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2519301    0.2378409   0.2660192
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                0.2216397    0.1957328   0.2475466
6-9 months     ki1101329-Keneba          GAMBIA       0                    NA                0.1943472    0.1799492   0.2087452
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1813620    0.1690824   0.1936415
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2076308    0.1756454   0.2396161
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                0.2637295    0.2181979   0.3092612
6-9 months     ki1148112-LCNI-5          MALAWI       0                    NA                0.2911121    0.2623975   0.3198267
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2364245    0.2303092   0.2425397
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2477893    0.2365054   0.2590731
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1595881    0.1359178   0.1832584
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1827166    0.1652972   0.2001360
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                0.2949257    0.2078725   0.3819789
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                0.2870696    0.2526692   0.3214700
9-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.2444584    0.1846684   0.3042484
9-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1771595    0.1616193   0.1926998
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                0.1217440    0.0128567   0.2306313
9-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                0.1866996    0.1716167   0.2017824
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                0.1674548    0.1422943   0.1926152
9-12 months    ki0047075b-MAL-ED         PERU         0                    NA                0.1982039    0.1788523   0.2175555
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                0.2651476    0.2138835   0.3164117
9-12 months    ki1000109-EE              PAKISTAN     0                    NA                0.2178900    0.1257959   0.3099842
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1948639    0.1799620   0.2097659
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1502105    0.0814577   0.2189634
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1829233    0.1635391   0.2023075
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1761666    0.1655256   0.1868076
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1330118    0.1111036   0.1549200
9-12 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1694569    0.1546257   0.1842880
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1367383    0.1220043   0.1514723
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1581953    0.1303886   0.1860019
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.2144087    0.0558842   0.3729332
9-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.1585571    0.0764030   0.2407111
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1520505    0.1471653   0.1569356
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1614282    0.1524752   0.1703812
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1158668    0.0875452   0.1441884
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1475531    0.1282382   0.1668680
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.1932094    0.1168046   0.2696141
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.2138810    0.1875410   0.2402211
12-15 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.0951035   -0.0252813   0.2154883
12-15 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.1809334    0.1642462   0.1976205
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1521598    0.0639051   0.2404146
12-15 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.1480753    0.1305832   0.1655673
12-15 months   ki0047075b-MAL-ED         PERU         1                    NA                0.1331836    0.1069010   0.1594661
12-15 months   ki0047075b-MAL-ED         PERU         0                    NA                0.1455734    0.1232491   0.1678976
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                0.1465777    0.0958703   0.1972852
12-15 months   ki1000109-EE              PAKISTAN     0                    NA                0.2076400    0.1078220   0.3074581
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1856157    0.1746788   0.1965527
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1211321    0.0010982   0.2411659
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1589885    0.1345959   0.1833812
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1858600    0.1726730   0.1990469
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1849157    0.1671953   0.2026361
12-15 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1896970    0.1777133   0.2016808
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1729838    0.1578916   0.1880760
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1692908    0.1394652   0.1991163
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1276228    0.1226788   0.1325669
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1401988    0.1306851   0.1497125
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1590436    0.1326233   0.1854638
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1320206    0.1125242   0.1515171
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.1345070    0.0755304   0.1934835
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.2170177    0.1879213   0.2461140
15-18 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.2588863    0.1719809   0.3457916
15-18 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.1626888    0.1469720   0.1784057
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1477501    0.1161492   0.1793509
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.1746377    0.1576696   0.1916058
15-18 months   ki0047075b-MAL-ED         PERU         1                    NA                0.1194237    0.0865437   0.1523038
15-18 months   ki0047075b-MAL-ED         PERU         0                    NA                0.1606033    0.1376737   0.1835329
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                0.0737086    0.0281881   0.1192290
15-18 months   ki1000109-EE              PAKISTAN     0                    NA                0.1356273    0.0829507   0.1883039
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1711459    0.1465871   0.1957048
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2893896    0.0839430   0.4948361
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1446105    0.1227087   0.1665122
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1602402    0.1467324   0.1737480
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1517592    0.1346730   0.1688453
15-18 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1619669    0.1493265   0.1746073
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2259808    0.2085020   0.2434597
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2475950    0.2138067   0.2813833
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1564962    0.1509557   0.1620367
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1720144    0.1587243   0.1853045
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1298901    0.0998706   0.1599095
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1524274    0.1322930   0.1725617
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.1048793    0.0553326   0.1544259
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.1716808    0.1450100   0.1983516
18-21 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1762441    0.0847196   0.2677686
18-21 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.1720418    0.1568318   0.1872518
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1707312    0.1045485   0.2369139
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.1450994    0.1262846   0.1639141
18-21 months   ki0047075b-MAL-ED         PERU         1                    NA                0.1723127    0.1409371   0.2036883
18-21 months   ki0047075b-MAL-ED         PERU         0                    NA                0.1586413    0.1348845   0.1823981
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                0.1090737    0.0599290   0.1582184
18-21 months   ki1000109-EE              PAKISTAN     0                    NA                0.0920099   -0.0098532   0.1938729
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1181416    0.0947827   0.1415004
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1372961    0.1241430   0.1504492
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1699776    0.1501850   0.1897703
18-21 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1435279    0.1306454   0.1564103
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1540181    0.1353311   0.1727051
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1136684    0.0847321   0.1426047
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.2062023    0.1349838   0.2774208
18-21 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.1973065    0.1655148   0.2290982
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1560822    0.1323748   0.1797895
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1524816    0.1325067   0.1724565
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.1329825    0.0522833   0.2136817
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.1452584    0.1213656   0.1691513
21-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.2247572    0.1598678   0.2896465
21-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.1532568    0.1395191   0.1669944
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.2398122    0.1832541   0.2963702
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.1717077    0.1505478   0.1928676
21-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.1778163    0.1470582   0.2085743
21-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.1840963    0.1590097   0.2091828
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1514937    0.1272670   0.1757204
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1387831    0.1260745   0.1514917
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1439321    0.1252679   0.1625962
21-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1750958    0.1618899   0.1883016
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1834314    0.1541487   0.2127141
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1529196    0.1106516   0.1951875
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.1233879    0.0371286   0.2096473
21-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.1849296    0.1360684   0.2337907


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.8815161   0.8573098   0.9057224
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.0702868   1.0355019   1.1050717
0-3 months     ki0047075b-MAL-ED         INDIA        NA                   NA                0.7615268   0.7382819   0.7847718
0-3 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                0.9570869   0.9295107   0.9846631
0-3 months     ki0047075b-MAL-ED         PERU         NA                   NA                0.9722590   0.9463823   0.9981357
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.7852849   0.7678149   0.8027549
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                0.9263104   0.9149216   0.9376991
0-3 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.8262343   0.8091204   0.8433482
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.8567813   0.8531554   0.8604071
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.7536287   0.7402358   0.7670217
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4752798   0.4582021   0.4923576
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED         INDIA        NA                   NA                0.4421852   0.4242493   0.4601211
3-6 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                0.5212498   0.5005373   0.5419623
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                0.4986791   0.4796733   0.5176848
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.4538554   0.4355388   0.4721719
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                0.4467297   0.4371593   0.4563000
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4969184   0.4830319   0.5108048
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4401107   0.4363074   0.4439140
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4390246   0.4301757   0.4478736
6-9 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2415793   0.2267676   0.2563910
6-9 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED         INDIA        NA                   NA                0.2373787   0.2225426   0.2522148
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
9-12 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1775294   0.1625008   0.1925581
9-12 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                0.1836863   0.1687462   0.1986264
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
12-15 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.1767774   0.1598803   0.1936745
12-15 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.1491675   0.1320356   0.1662994
12-15 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki1000109-EE              PAKISTAN     NA                   NA                0.1548294   0.1084427   0.2012160
12-15 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1855182   0.1710991   0.1999372
12-15 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1876150   0.1774623   0.1977678
12-15 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1722034   0.1587499   0.1856570
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1301049   0.1256802   0.1345296
15-18 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1422772   0.1262424   0.1583121
15-18 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.1652193   0.1495522   0.1808865
15-18 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.1725504   0.1563874   0.1887134
15-18 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0830902   0.0429076   0.1232727
15-18 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1741261   0.1450974   0.2031549
15-18 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1583148   0.1480451   0.1685846
15-18 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2320613   0.2164969   0.2476258
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1596440   0.1546004   0.1646877
18-21 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1436485   0.1262881   0.1610088
18-21 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.1695319   0.1543435   0.1847203
18-21 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.1462090   0.1281722   0.1642458
18-21 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki1000109-EE              PAKISTAN     NA                   NA                0.1065643   0.0620028   0.1511258
18-21 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1529026   0.1419060   0.1638992
18-21 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1448468   0.1289722   0.1607215
18-21 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.2016785   0.1726437   0.2307133
21-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1538238   0.1384163   0.1692313
21-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.1538219   0.1403825   0.1672614
21-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.1738613   0.1535969   0.1941258
21-24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1654935   0.1547926   0.1761944
21-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1761495   0.1516134   0.2006855
21-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.1779746   0.1356818   0.2202674


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0000180   -0.0499845    0.0499485
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1133794   -0.2274511    0.0006923
0-3 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        0                    1                  0.0082932   -0.1013591    0.1179455
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.1413663   -0.0023128    0.2850454
0-3 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0592046   -0.1131299   -0.0052794
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.2060130   -0.3343686   -0.0776574
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0385059   -0.0706282   -0.0063836
0-3 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0381642   -0.0609334   -0.0153949
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0388112   -0.0786606    0.0010381
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0003890   -0.0072004    0.0079785
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0576446   -0.0922060   -0.0230832
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0027071   -0.0367128    0.0312985
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0293402   -0.1173350    0.0586545
3-6 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        0                    1                  0.0242080   -0.0581884    0.1066045
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.1205431    0.0150650    0.2260213
3-6 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         0                    1                  0.0051482   -0.0350669    0.0453632
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0964782   -0.0111936    0.2041500
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0155743   -0.0455641    0.0144156
3-6 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0086080   -0.0293356    0.0121195
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0119265   -0.0201247    0.0439777
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0016630   -0.0108129    0.0074870
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0038434   -0.0205975    0.0282843
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0160655   -0.0174341    0.0495651
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0408196   -0.1317185    0.0500792
6-9 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA        0                    1                  0.0047029   -0.0459648    0.0553706
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0520575   -0.0967412   -0.0073739
6-9 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU         0                    1                  0.0149517   -0.0145281    0.0444315
6-9 months     ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN     0                    1                  0.0414537   -0.1017144    0.1846219
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0261160   -0.0862950    0.1385270
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0128647   -0.0119938    0.0377231
6-9 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0272925   -0.0568168    0.0022318
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0262688   -0.0080218    0.0605595
6-9 months     ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5          MALAWI       0                    1                  0.0273826   -0.0272634    0.0820285
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0113648   -0.0012181    0.0239477
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0231285   -0.0063713    0.0526282
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0078561   -0.1022280    0.0865158
9-12 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA        0                    1                 -0.0672988   -0.1291125   -0.0054851
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.0649556   -0.0449986    0.1749097
9-12 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU         0                    1                  0.0307491   -0.0011693    0.0626675
9-12 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN     0                    1                 -0.0472576   -0.1526584    0.0581433
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0446534   -0.1050363    0.0157295
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0067567   -0.0288176    0.0153041
9-12 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA       0                    1                  0.0364451    0.0105354    0.0623548
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0214570   -0.0101400    0.0530540
9-12 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0558516   -0.2371885    0.1254852
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0093778   -0.0005675    0.0193230
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0316862   -0.0024454    0.0658179
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0206717   -0.0603328    0.1016761
12-15 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0858299   -0.0356748    0.2073345
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0040846   -0.0943442    0.0861751
12-15 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0123898   -0.0222332    0.0470128
12-15 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN     0                    1                  0.0610623   -0.0508970    0.1730217
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0644837   -0.1771487    0.0481813
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0268714   -0.0006348    0.0543777
12-15 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0047813   -0.0161060    0.0256686
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0036930   -0.0371584    0.0297723
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0125759    0.0019991    0.0231527
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0270229   -0.0597738    0.0057280
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0825107    0.0165010    0.1485204
15-18 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.0961974   -0.1844247   -0.0079702
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0268876   -0.0089356    0.0627108
15-18 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0411796    0.0011170    0.0812421
15-18 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN     0                    1                  0.0619187   -0.0077012    0.1315387
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.1182437   -0.0708346    0.3073219
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0156297   -0.0094858    0.0407453
15-18 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0102077   -0.0105290    0.0309445
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0216142   -0.0163894    0.0596177
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0155182    0.0010993    0.0299372
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0225373   -0.0128923    0.0579669
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0668016    0.0101591    0.1234440
18-21 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.0042023   -0.0969137    0.0885092
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0256318   -0.0943917    0.0431281
18-21 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU         0                    1                 -0.0136714   -0.0531013    0.0257585
18-21 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN     0                    1                 -0.0170638   -0.1301624    0.0960347
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0191545   -0.0076951    0.0460041
18-21 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0264498   -0.0496884   -0.0032111
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0403497   -0.0747200   -0.0059794
18-21 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5          MALAWI       0                    1                 -0.0088958   -0.0870537    0.0692621
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0036006   -0.0343493    0.0271482
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0122759   -0.0719692    0.0965210
21-24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.0715004   -0.1378612   -0.0051396
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0681045   -0.1284100   -0.0077990
21-24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0062800   -0.0334323    0.0459923
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0127106   -0.0396212    0.0142000
21-24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0311637    0.0082721    0.0540554
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0305119   -0.0815553    0.0205316
21-24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0615416   -0.0377751    0.1608583


### Parameter: PAR


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000457   -0.0317270    0.0318184
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0986371   -0.1967183   -0.0005559
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.0109944   -0.0937306    0.1157194
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1393187    0.0018188    0.2768185
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0388481   -0.0747866   -0.0029095
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0056242   -0.0122648    0.0010165
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0274978   -0.0517101   -0.0032856
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0262690   -0.0418902   -0.0106479
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0125554   -0.0232341   -0.0018767
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0001039   -0.0016159    0.0018236
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0091993   -0.0148030   -0.0035955
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0019030   -0.0241078    0.0203019
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0254834   -0.1011284    0.0501617
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.0227211   -0.0559793    0.1014216
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1146861    0.0128446    0.2165275
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0038018   -0.0230773    0.0306809
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0052360   -0.0000300    0.0105021
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0115516   -0.0347056    0.0116024
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0052612   -0.0202506    0.0097281
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0035794   -0.0050564    0.0122152
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0003789   -0.0025121    0.0017543
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0007352   -0.0028915    0.0043618
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0102421   -0.0120444    0.0325286
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0418262   -0.1201357    0.0364834
6-9 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.0035513   -0.0446663    0.0517689
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0515804   -0.0944251   -0.0087357
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0085393   -0.0107638    0.0278424
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0046060   -0.0117607    0.0209727
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0007107   -0.0038116    0.0052329
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0100999   -0.0092758    0.0294757
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0196940   -0.0406883    0.0013004
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0059044   -0.0027176    0.0145264
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                 0.0191880   -0.0276183    0.0659943
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0022868   -0.0002469    0.0048205
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0149419   -0.0041772    0.0340611
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0103334   -0.0915185    0.0708517
9-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0669289   -0.1261359   -0.0077220
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0619423   -0.0440261    0.1679108
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0200259   -0.0010168    0.0410686
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0053702   -0.0181590    0.0074186
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0008598   -0.0033281    0.0016086
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0053917   -0.0223985    0.0116151
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0248012    0.0071076    0.0424948
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0052034   -0.0020072    0.0124139
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0294423   -0.1560286    0.0971441
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0025525    0.0003596    0.0047454
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0201740   -0.0018103    0.0421582
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0169852   -0.0527904    0.0867608
12-15 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0816739   -0.0342860    0.1976338
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0029923   -0.0888713    0.0828867
12-15 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0085554   -0.0145793    0.0316901
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0082517   -0.0083437    0.0248470
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0000976   -0.0040742    0.0038790
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0210438   -0.0000772    0.0421648
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0026993   -0.0112963    0.0166948
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0007804   -0.0085938    0.0070331
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0024821    0.0001608    0.0048033
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0167663   -0.0376981    0.0041654
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0689125    0.0127511    0.1250739
15-18 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0936669   -0.1778589   -0.0094750
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0248004   -0.0091764    0.0587771
15-18 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0267652    0.0003722    0.0531581
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0093816   -0.0036736    0.0224368
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0029802   -0.0044878    0.0104483
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0117410   -0.0073153    0.0307973
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0065557   -0.0072321    0.0203434
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0060805   -0.0033528    0.0155138
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0031478    0.0002757    0.0060199
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0137584   -0.0092013    0.0367181
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0557699    0.0071082    0.1044315
18-21 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0067122   -0.0951491    0.0817248
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0245222   -0.0901735    0.0411291
18-21 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0107475   -0.0373134    0.0158185
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0025094   -0.0192689    0.0142501
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0143466   -0.0063178    0.0350110
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0170750   -0.0326236   -0.0015265
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0091712   -0.0175076   -0.0008348
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0045238   -0.0697835    0.0607358
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0022584   -0.0221128    0.0175960
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0105075   -0.0613863    0.0824013
21-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0709352   -0.1344649   -0.0074056
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0659508   -0.1233720   -0.0085296
21-24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0036508   -0.0234000    0.0307017
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0095232   -0.0302260    0.0111796
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0215614    0.0060085    0.0371144
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0072820   -0.0191506    0.0045866
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0545866   -0.0287179    0.1378912
