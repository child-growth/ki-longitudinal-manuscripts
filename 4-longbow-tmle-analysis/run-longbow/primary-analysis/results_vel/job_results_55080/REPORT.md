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

**Intervention Variable:** predfeed6

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

agecat         studyid                    country                        predfeed6    n_cell       n  outcome_variable 
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
0-3 months     ki1000109-EE               PAKISTAN                       1                35      39  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       0                 4      39  y_rate_wtkg      
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
3-6 months     ki1000109-EE               PAKISTAN                       1                33      37  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       0                 4      37  y_rate_wtkg      
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
6-9 months     ki1000109-EE               PAKISTAN                       1                40      45  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       0                 5      45  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     139  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               139     139  y_rate_wtkg      
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
9-12 months    ki1000109-EE               PAKISTAN                       1                39      44  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       0                 5      44  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     138  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               138     138  y_rate_wtkg      
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
12-15 months   ki1000109-EE               PAKISTAN                       1                32      37  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       0                 5      37  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     137  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               137     137  y_rate_wtkg      
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
15-18 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     129  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               129     129  y_rate_wtkg      
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
18-21 months   ki1000109-EE               PAKISTAN                       1                29      34  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       0                 5      34  y_rate_wtkg      
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
21-24 months   ki1000109-EE               PAKISTAN                       1                16      18  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       0                 2      18  y_rate_wtkg      
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
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/fd1acc2d-1574-4d9a-847f-d195a60ede33/9ca97b49-806f-45d2-8b0f-d3e6d69f6570/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fd1acc2d-1574-4d9a-847f-d195a60ede33/9ca97b49-806f-45d2-8b0f-d3e6d69f6570/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fd1acc2d-1574-4d9a-847f-d195a60ede33/9ca97b49-806f-45d2-8b0f-d3e6d69f6570/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8765649    0.8388928   0.9142369
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8852676    0.8539781   0.9165570
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                1.1139823    1.0096093   1.2183554
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                1.0530792    1.0169424   1.0892160
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                0.8314182    0.7136503   0.9491861
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                0.7590807    0.7352712   0.7828902
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                0.8434550    0.7095478   0.9773622
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                0.9591849    0.9309837   0.9873861
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                1.0143633    0.9706417   1.0580849
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                0.9516447    0.9184987   0.9847908
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8384129    0.8189188   0.8579071
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7874599    0.7533765   0.8215433
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.8566776    0.8526629   0.8606922
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.8570901    0.8501764   0.8640038
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.7629343    0.7482993   0.7775693
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.7040269    0.6727376   0.7353161
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4776798    0.4516367   0.5037229
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4749958    0.4521241   0.4978676
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                0.5890076    0.4990880   0.6789272
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                0.5744159    0.5401085   0.6087234
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                0.3750252    0.3003421   0.4497084
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                0.4435044    0.4249567   0.4620520
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                0.3729685    0.2838058   0.4621312
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                0.5260230    0.5048359   0.5472100
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                0.4973956    0.4647734   0.5300177
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                0.4992828    0.4756670   0.5228987
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4938006    0.4778727   0.5097284
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5040900    0.4753099   0.5328700
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4405543    0.4363667   0.4447419
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4392863    0.4310049   0.4475677
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4387158    0.4290156   0.4484160
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4409204    0.4189183   0.4629225
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2271181    0.2008862   0.2533500
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2489958    0.2311110   0.2668806
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                0.3911865    0.3023972   0.4799758
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                0.3833707    0.3563627   0.4103787
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                0.2342882    0.1849916   0.2835849
6-9 months     ki0047075b-MAL-ED     INDIA        0                    NA                0.2389825    0.2235334   0.2544316
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    NA                0.2802893    0.2396040   0.3209746
6-9 months     ki0047075b-MAL-ED     NEPAL        0                    NA                0.2697687    0.2542236   0.2853137
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                0.2500833    0.2302470   0.2699196
6-9 months     ki0047075b-MAL-ED     PERU         0                    NA                0.2675761    0.2463537   0.2887984
6-9 months     ki1000109-EE          PAKISTAN     1                    NA                0.2499821    0.2062696   0.2936946
6-9 months     ki1000109-EE          PAKISTAN     0                    NA                0.2914358    0.1551041   0.4277675
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1821450    0.1698196   0.1944703
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2023505    0.1697791   0.2349219
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                0.2264503    0.1787912   0.2741095
6-9 months     ki1148112-LCNI-5      MALAWI       0                    NA                0.2890711    0.2602167   0.3179255
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2364629    0.2303315   0.2425943
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2470008    0.2357051   0.2582966
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1628666    0.1402612   0.1854720
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1819689    0.1645989   0.1993388
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                0.2846007    0.1976677   0.3715337
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                0.2873467    0.2528677   0.3218257
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.2180133    0.1465633   0.2894633
9-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1769478    0.1614027   0.1924928
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                0.1293569    0.0315604   0.2271534
9-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                0.1866359    0.1715611   0.2017106
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1721775    0.1465286   0.1978265
9-12 months    ki0047075b-MAL-ED     PERU         0                    NA                0.1953550    0.1756440   0.2150659
9-12 months    ki1000109-EE          PAKISTAN     1                    NA                0.2651476    0.2138835   0.3164117
9-12 months    ki1000109-EE          PAKISTAN     0                    NA                0.2178900    0.1257959   0.3099842
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1367349    0.1219910   0.1514788
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1485620    0.1231325   0.1739915
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3261856    0.1691432   0.4832280
9-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.1798949    0.0964144   0.2633754
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1520818    0.1471751   0.1569886
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1616579    0.1522003   0.1711155
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1146773    0.0858358   0.1435187
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1479527    0.1286010   0.1673045
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.1891922    0.1141951   0.2641894
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.2141335    0.1877591   0.2405080
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1054893   -0.0375340   0.2485125
12-15 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1808460    0.1641677   0.1975243
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.1454676    0.0313480   0.2595872
12-15 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.1483945    0.1309644   0.1658247
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                0.1375675    0.1121822   0.1629528
12-15 months   ki0047075b-MAL-ED     PERU         0                    NA                0.1444271    0.1223085   0.1665457
12-15 months   ki1000109-EE          PAKISTAN     1                    NA                0.1465777    0.0958703   0.1972852
12-15 months   ki1000109-EE          PAKISTAN     0                    NA                0.2076400    0.1078220   0.3074581
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1732276    0.1581346   0.1883206
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1653474    0.1352888   0.1954061
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1274285    0.1224743   0.1323827
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1393875    0.1295890   0.1491860
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1574105    0.1308425   0.1839785
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1329937    0.1130083   0.1529792
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.1536395    0.0943757   0.2129032
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.2179424    0.1886145   0.2472702
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.2457598    0.1666335   0.3248862
15-18 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1628718    0.1471381   0.1786054
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.1281410    0.0911355   0.1651465
15-18 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.1746132    0.1576622   0.1915641
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                0.1225830    0.0900569   0.1551090
15-18 months   ki0047075b-MAL-ED     PERU         0                    NA                0.1600378    0.1368618   0.1832137
15-18 months   ki1000109-EE          PAKISTAN     1                    NA                0.0737086    0.0281881   0.1192290
15-18 months   ki1000109-EE          PAKISTAN     0                    NA                0.1356273    0.0829507   0.1883039
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2261249    0.2086495   0.2436003
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2537717    0.2195021   0.2880413
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1564465    0.1509303   0.1619627
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1717386    0.1588723   0.1846048
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1296084    0.0971457   0.1620711
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1537077    0.1332530   0.1741623
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.0880060    0.0400275   0.1359845
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.1715890    0.1449024   0.1982756
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0570645   -0.0356305   0.1497595
18-21 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1715429    0.1563450   0.1867408
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.1382271    0.0776680   0.1987863
18-21 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.1453219    0.1265349   0.1641089
18-21 months   ki0047075b-MAL-ED     PERU         1                    NA                0.1679744    0.1367480   0.1992009
18-21 months   ki0047075b-MAL-ED     PERU         0                    NA                0.1579633    0.1341190   0.1818076
18-21 months   ki1000109-EE          PAKISTAN     1                    NA                0.1090737    0.0599290   0.1582184
18-21 months   ki1000109-EE          PAKISTAN     0                    NA                0.0920099   -0.0098532   0.1938729
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1539070    0.1353055   0.1725084
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1177600    0.0886276   0.1468923
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.2707257    0.2102410   0.3312104
18-21 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.2007318    0.1687877   0.2326759
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1501821    0.1264898   0.1738743
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1534029    0.1331908   0.1736150
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.1477967    0.0674189   0.2281745
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.1457493    0.1218943   0.1696044
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.2060271    0.1401362   0.2719180
21-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1530646    0.1393386   0.1667905
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.2036772    0.1479689   0.2593856
21-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.1717196    0.1505181   0.1929211
21-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.1771098    0.1460513   0.2081683
21-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.1837804    0.1586163   0.2089444
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1838287    0.1544272   0.2132303
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1504042    0.1096733   0.1911350
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.1424614    0.0658933   0.2190295
21-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.1836398    0.1360866   0.2311930


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8815161   0.8573098   0.9057224
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.0702868   1.0355019   1.1050717
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                0.7615268   0.7382819   0.7847718
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                0.9570869   0.9295107   0.9846631
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                0.9722590   0.9463823   0.9981357
0-3 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.8262343   0.8091204   0.8433482
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.8567813   0.8531554   0.8604071
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.7536287   0.7402358   0.7670217
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4752798   0.4582021   0.4923576
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                0.4421852   0.4242493   0.4601211
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                0.5212498   0.5005373   0.5419623
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                0.4986791   0.4796733   0.5176848
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4969184   0.4830319   0.5108048
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4401107   0.4363074   0.4439140
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4390246   0.4301757   0.4478736
6-9 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2415793   0.2267676   0.2563910
6-9 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED     INDIA        NA                   NA                0.2373787   0.2225426   0.2522148
6-9 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2701634   0.2553060   0.2850207
6-9 months     ki0047075b-MAL-ED     PERU         NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki1000109-EE          PAKISTAN     NA                   NA                0.2545881   0.2127069   0.2964693
6-9 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1872663   0.1750716   0.1994611
6-9 months     ki1148112-LCNI-5      MALAWI       NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2387113   0.2332818   0.2441408
9-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1745300   0.1605119   0.1885482
9-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.1775294   0.1625008   0.1925581
9-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1836863   0.1687462   0.1986264
9-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2597774   0.2129342   0.3066206
9-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1419417   0.1290817   0.1548016
9-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1546030   0.1501980   0.1590079
12-15 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1360408   0.1198127   0.1522689
12-15 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1767774   0.1598803   0.1936745
12-15 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1491675   0.1320356   0.1662994
12-15 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki1000109-EE          PAKISTAN     NA                   NA                0.1548294   0.1084427   0.2012160
12-15 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1722034   0.1587499   0.1856570
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1301049   0.1256802   0.1345296
15-18 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1422772   0.1262424   0.1583121
15-18 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1652193   0.1495522   0.1808865
15-18 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1725504   0.1563874   0.1887134
15-18 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0830902   0.0429076   0.1232727
15-18 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2320613   0.2164969   0.2476258
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1596440   0.1546004   0.1646877
18-21 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1436485   0.1262881   0.1610088
18-21 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1695319   0.1543435   0.1847203
18-21 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1462090   0.1281722   0.1642458
18-21 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki1000109-EE          PAKISTAN     NA                   NA                0.1065643   0.0620028   0.1511258
18-21 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1448468   0.1289722   0.1607215
18-21 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.2016785   0.1726437   0.2307133
21-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1538238   0.1384163   0.1692313
21-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1538219   0.1403825   0.1672614
21-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1738613   0.1535969   0.1941258
21-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1761495   0.1516134   0.2006855
21-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1779746   0.1356818   0.2202674


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0087027   -0.0402101    0.0576155
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0609031   -0.1710366    0.0492304
0-3 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        0                    1                 -0.0723375   -0.1923834    0.0477083
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.1157299   -0.0214033    0.2528631
0-3 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0627186   -0.1176945   -0.0077426
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0509531   -0.0899222   -0.0119840
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0004126   -0.0071935    0.0080187
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0589074   -0.0933720   -0.0244428
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0026840   -0.0379186    0.0325507
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0145917   -0.1111893    0.0820059
3-6 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.0684791   -0.0084778    0.1454361
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.1530545    0.0615011    0.2446078
3-6 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         0                    1                  0.0018873   -0.0386484    0.0424229
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0102894   -0.0226606    0.0432394
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0012680   -0.0104246    0.0078886
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0022046   -0.0218419    0.0262511
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0218777   -0.0102683    0.0540237
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0078158   -0.1005227    0.0848910
6-9 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.0046943   -0.0468414    0.0562300
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0105206   -0.0539663    0.0329250
6-9 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU         0                    1                  0.0174928   -0.0116584    0.0466439
6-9 months     ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE          PAKISTAN     0                    1                  0.0414537   -0.1017144    0.1846219
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0202055   -0.0147889    0.0552000
6-9 months     ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI       0                    1                  0.0626208    0.0064607    0.1187808
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0105379   -0.0021111    0.0231869
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0191023   -0.0095009    0.0477054
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0027460   -0.0912993    0.0967912
9-12 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.0410655   -0.1143433    0.0322122
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.0572789   -0.0417743    0.1563322
9-12 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU         0                    1                  0.0231774   -0.0098069    0.0561617
9-12 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE          PAKISTAN     0                    1                 -0.0472576   -0.1526584    0.0581433
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0118271   -0.0176393    0.0412934
9-12 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.1462907   -0.3301555    0.0375741
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0095761   -0.0008322    0.0199844
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0332755   -0.0016168    0.0681677
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0249413   -0.0542725    0.1041551
12-15 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0753567   -0.0685871    0.2193006
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.0029269   -0.1127989    0.1186527
12-15 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0068596   -0.0268393    0.0405585
12-15 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE          PAKISTAN     0                    1                  0.0610623   -0.0508970    0.1730217
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0078802   -0.0416948    0.0259345
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0119590    0.0011009    0.0228171
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0244168   -0.0583601    0.0095265
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0643029   -0.0019742    0.1305799
15-18 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0828881   -0.1632020   -0.0025742
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.0464722    0.0057243    0.0872202
15-18 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0374548   -0.0025696    0.0774791
15-18 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE          PAKISTAN     0                    1                  0.0619187   -0.0077012    0.1315387
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0276468   -0.0108085    0.0661021
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0152921    0.0012243    0.0293598
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0240993   -0.0142038    0.0624024
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0835830    0.0284791    0.1386869
18-21 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.1144784    0.0205010    0.2084557
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.0070947   -0.0564289    0.0706183
18-21 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU         0                    1                 -0.0100111   -0.0493763    0.0293541
18-21 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE          PAKISTAN     0                    1                 -0.0170638   -0.1301624    0.0960347
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0361470   -0.0706335   -0.0016604
18-21 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI       0                    1                 -0.0699939   -0.1385406   -0.0014472
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0032208   -0.0280387    0.0344803
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0020473   -0.0858310    0.0817363
21-24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0529625   -0.1203349    0.0144099
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0319576   -0.0915934    0.0276781
21-24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0066706   -0.0336771    0.0470183
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0334246   -0.0831244    0.0162752
21-24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0411784   -0.0503688    0.1327255


### Parameter: PAR


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0049512   -0.0266596    0.0365620
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0436955   -0.1385078    0.0511167
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0698914   -0.1847201    0.0449374
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1136319   -0.0176251    0.2448889
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0421043   -0.0792188   -0.0049898
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0121787   -0.0225927   -0.0017646
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001037   -0.0016201    0.0018275
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0093056   -0.0148284   -0.0037827
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0024000   -0.0254364    0.0206365
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0108101   -0.0950660    0.0734459
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0671600   -0.0063677    0.1406877
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1482813    0.0603368    0.2362258
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0012835   -0.0257790    0.0283460
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0031178   -0.0057215    0.0119571
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0004436   -0.0025633    0.0016761
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0003088   -0.0032344    0.0038520
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0144612   -0.0064534    0.0353758
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0080367   -0.0878660    0.0717927
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0030905   -0.0461942    0.0523752
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0101259   -0.0513385    0.0310866
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0113100   -0.0077153    0.0303353
6-9 months     ki1000109-EE          PAKISTAN     1                    NA                 0.0046060   -0.0117607    0.0209727
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0051213   -0.0034824    0.0137251
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                 0.0564672    0.0083095    0.1046249
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0022484   -0.0002988    0.0047955
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0116634   -0.0064811    0.0298080
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0000084   -0.0811978    0.0811809
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0404839   -0.1106651    0.0296974
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0543294   -0.0406566    0.1493154
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0153031   -0.0064674    0.0370736
9-12 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0053702   -0.0181590    0.0074186
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0052068   -0.0019917    0.0124052
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.1412192   -0.2755934   -0.0068449
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0025211    0.0003528    0.0046894
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0213635   -0.0012107    0.0439377
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0210023   -0.0473348    0.0893395
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0712881   -0.0671308    0.2097070
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0036999   -0.1079369    0.1153367
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0041715   -0.0181970    0.0265400
12-15 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0082517   -0.0083437    0.0248470
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0010242   -0.0089622    0.0069138
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0026764    0.0003279    0.0050249
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0151333   -0.0370338    0.0067672
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0497800   -0.0067937    0.1063537
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0805405   -0.1565040   -0.0045770
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0444094    0.0055447    0.0832742
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0236059   -0.0030256    0.0502374
15-18 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0093816   -0.0036736    0.0224368
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0059364   -0.0034495    0.0153223
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0031975    0.0003035    0.0060916
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0140401   -0.0115515    0.0396317
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0726431    0.0255640    0.1197222
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.1124674    0.0221269    0.2028078
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0079819   -0.0524472    0.0684109
18-21 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0064092   -0.0326250    0.0198066
18-21 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0025094   -0.0192689    0.0142501
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0090601   -0.0174326   -0.0006876
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0690472   -0.1259050   -0.0121894
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0036417   -0.0163079    0.0235914
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0043066   -0.0764215    0.0678082
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0522051   -0.1165679    0.0121576
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0298159   -0.0863319    0.0267002
21-24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0043573   -0.0230973    0.0318118
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0076793   -0.0194554    0.0040969
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0355132   -0.0416517    0.1126780
