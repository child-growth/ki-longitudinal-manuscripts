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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                82     227  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               145     227  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                21     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               142     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 8     167  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               159     167  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                11     145  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               134     145  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1                85     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0               169     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2     186  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               184     186  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211     211  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1                33      37  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0                 4      37  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               368     501  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               133     501  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              9260   11961  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2701   11961  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2064    2466  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               402    2466  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                80     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               142     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                30     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               178     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                11     213  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               202     213  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                11     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               211     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1                90     266  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0               176     266  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               219     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     225  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               224     225  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1                34      38  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0                 4      38  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               338     464  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               126     464  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              5753    7502  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1749    7502  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              1516    1797  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               281    1797  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                76     217  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               141     217  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                29     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               169     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                11     213  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               202     213  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                12     220  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               208     220  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1                86     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0               159     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     210  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               207     210  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     214  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     214  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1                40      45  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0                 5      45  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     142  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               142     142  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               354     474  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               120     474  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         1                23     145  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         0               122     145  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2198    2769  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               571    2769  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                78     216  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               138     216  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                28     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               166     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                11     210  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               199     210  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                11     219  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               208     219  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1                82     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0               153     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     212  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     212  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     213  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212     213  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1                39      44  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0                 5      44  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     144  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               144     144  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               341     450  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               109     450  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         1                10      32  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         0                22      32  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              2453    3134  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               681    3134  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                73     204  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               131     204  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                27     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               157     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                11     209  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               198     209  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                11     220  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               209     220  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1                77     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0               147     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     214  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     214  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1                32      37  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0                 5      37  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     137  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               137     137  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               341     452  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               111     452  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         1                 0       1  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         0                 1       1  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2460    3148  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               688    3148  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                75     204  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     204  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                27     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               148     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                11     209  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               198     209  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1                75     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0               138     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     206  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               203     206  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     205  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204     205  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     129  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               129     129  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               347     461  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               114     461  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         1                 0       4  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         0                 4       4  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2467    3148  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               681    3148  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                75     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               127     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                25     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               142     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                10     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               199     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1                70     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0               132     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     213  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               210     213  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     192  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               191     192  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               325     426  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               101     426  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         1                29     170  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         0               141     170  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                73     200  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               127     200  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               140     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                10     208  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               198     208  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1                64     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0               125     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     214  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               211     214  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     192  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               191     192  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1                16      18  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0                 2      18  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               251     329  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                78     329  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         1                25     141  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         0               116     141  y_rate_len       


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/04b640aa-fece-4b25-8d4b-30b67000052b/6a3108d8-f524-481f-bb31-55b801ce6adc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/04b640aa-fece-4b25-8d4b-30b67000052b/6a3108d8-f524-481f-bb31-55b801ce6adc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/04b640aa-fece-4b25-8d4b-30b67000052b/6a3108d8-f524-481f-bb31-55b801ce6adc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.3508754   3.2442974   3.4574534
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.3487540   3.2636563   3.4338517
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.0411404   3.6720217   4.4102592
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                3.7861833   3.6684619   3.9039047
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                3.1975488   2.8853961   3.5097015
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                3.3449364   3.2480037   3.4418691
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                3.2812514   2.9934272   3.5690755
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                3.6480433   3.5475916   3.7484950
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.1194179   3.0027471   3.2360887
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.0344162   2.9539272   3.1149053
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                3.6081270   3.5494189   3.6668351
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                3.5869768   3.4785730   3.6953805
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.6636891   3.6502601   3.6771181
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6755150   3.6526325   3.6983976
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.0873946   3.0335401   3.1412491
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                2.9549828   2.8349564   3.0750092
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.9470845   1.8527096   2.0414594
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.9110567   1.8493513   1.9727622
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.1131727   1.8912001   2.3351453
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1498523   2.0647512   2.2349534
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.9745304   1.7314605   2.2176003
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8842888   1.8153789   1.9531986
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                1.9677823   1.7458119   2.1897527
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.9694564   1.9092464   2.0296665
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                2.0302009   1.9105527   2.1498491
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                2.0063167   1.9260768   2.0865565
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7323531   1.6865039   1.7782023
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6474345   1.5661944   1.7286745
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.9192867   1.9040948   1.9344786
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9188382   1.8942152   1.9434612
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8824670   1.8495134   1.9154206
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.9517714   1.8762459   2.0272969
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.2514678   1.1799060   1.3230296
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.2611065   1.2108896   1.3113234
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                1.5441564   1.2226547   1.8656581
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                1.4596899   1.3820465   1.5373334
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.3305594   1.1937941   1.4673248
6-9 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.2510731   1.1958427   1.3063035
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    NA                1.2012799   0.9998982   1.4026616
6-9 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.3604120   1.3147106   1.4061135
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                1.3263050   1.2271923   1.4254177
6-9 months     ki0047075b-MAL-ED     PERU         0                    NA                1.3137547   1.2488339   1.3786754
6-9 months     ki1000109-EE          PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     ki1000109-EE          PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.3158718   1.2746014   1.3571423
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.3112500   1.2046552   1.4178449
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                1.4941599   1.2798870   1.7084327
6-9 months     ki1148112-LCNI-5      MALAWI       0                    NA                1.4295719   1.3622754   1.4968684
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.3245948   1.3011756   1.3480139
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.3297853   1.2840585   1.3755121
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.9446524   0.8805383   1.0087666
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.0054693   0.9561912   1.0547473
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.2509670   1.0558663   1.4460676
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3166971   1.2362762   1.3971180
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                1.0543206   0.8594091   1.2492320
9-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.9865881   0.9461544   1.0270218
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                0.9563044   0.8443141   1.0682946
9-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                1.0921419   1.0482972   1.1359866
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                1.1019296   1.0192972   1.1845620
9-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.1021758   1.0369672   1.1673844
9-12 months    ki1000109-EE          PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    ki1000109-EE          PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.9915112   0.9567515   1.0262709
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.0393239   0.9529611   1.1256868
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.2028823   0.9903452   1.4154193
9-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.9234871   0.7305155   1.1164586
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.0685301   1.0464934   1.0905667
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.0699192   1.0291887   1.1106497
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8913580   0.8305269   0.9521890
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.9345877   0.8789264   0.9902490
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                1.1525971   1.0106317   1.2945625
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                1.1456355   1.0808260   1.2104449
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.9193217   0.7456320   1.0930114
12-15 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.9122305   0.8698950   0.9545661
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    NA                1.0805869   0.8895704   1.2716034
12-15 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.9475742   0.9062404   0.9889080
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8808273   0.8054393   0.9562152
12-15 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8982396   0.8388935   0.9575857
12-15 months   ki1000109-EE          PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   ki1000109-EE          PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8739314   0.8454513   0.9024115
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8590027   0.8010776   0.9169278
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.9312496   0.9123688   0.9501304
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.9675171   0.9256051   1.0094291
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8176718   0.7552057   0.8801378
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8262000   0.7767939   0.8756061
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                1.1086075   0.9617258   1.2554893
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                1.0110191   0.9467142   1.0753240
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.7874058   0.6806654   0.8941463
15-18 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8505471   0.8120139   0.8890803
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.9070278   0.7797600   1.0342956
15-18 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8389202   0.7942962   0.8835442
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8349542   0.7662576   0.9036507
15-18 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8639142   0.8100514   0.9177769
15-18 months   ki1000109-EE          PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   ki1000109-EE          PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.7811063   0.7412048   0.8210077
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6935395   0.6465516   0.7405275
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8588235   0.8390998   0.8785472
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8659635   0.8278611   0.9040658
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8093649   0.7474574   0.8712724
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8306905   0.7867547   0.8746264
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.7402417   0.5882379   0.8922456
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9401435   0.8602342   1.0200528
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8426705   0.7046004   0.9807406
18-21 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8859476   0.8492509   0.9226443
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.6938577   0.5530372   0.8346782
18-21 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8179430   0.7781754   0.8577106
18-21 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8257268   0.7447013   0.9067522
18-21 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8506881   0.7955708   0.9058053
18-21 months   ki1000109-EE          PAKISTAN     1                    NA                0.7829057   0.6977684   0.8680431
18-21 months   ki1000109-EE          PAKISTAN     0                    NA                0.8103374   0.7102740   0.9104008
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8997892   0.8560431   0.9435354
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.9264499   0.8756136   0.9772862
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.7294199   0.3987694   1.0600704
18-21 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.8745619   0.7946930   0.9544307
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.7754201   0.7124130   0.8384271
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7695114   0.7232780   0.8157448
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.7791902   0.6907064   0.8676740
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.7960733   0.7463530   0.8457936
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8076813   0.6376801   0.9776825
21-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8284524   0.7951147   0.8617902
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.9652813   0.7703116   1.1602510
21-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.7795243   0.7367017   0.8223470
21-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.7421130   0.6504823   0.8337436
21-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.7725083   0.7148009   0.8302157
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.7838344   0.7348387   0.8328302
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8039209   0.6872205   0.9206213
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.7514640   0.6120029   0.8909251
21-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.7328952   0.6554058   0.8103845


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                3.3482498   3.2804281   3.4160715
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                3.3378760   3.2442606   3.4314913
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                3.6205791   3.5251464   3.7160118
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                3.0614469   2.9957442   3.1271496
0-3 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                3.5982617   3.5465367   3.6499867
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                3.6664276   3.6538579   3.6789973
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                3.0659983   3.0164756   3.1155211
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.9247979   1.8735932   1.9760025
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.8843292   1.8181080   1.9505504
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                1.9668794   1.9086855   2.0250732
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                2.0171026   1.9506965   2.0835088
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.7086613   1.6690533   1.7482692
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.9190532   1.9057476   1.9323587
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.8947099   1.8645495   1.9248703
6-9 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.2541293   1.2135456   1.2947130
6-9 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.2497455   1.1971145   1.3023766
6-9 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                1.3520991   1.3076136   1.3965845
6-9 months     ki0047075b-MAL-ED     PERU         NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki1000109-EE          PAKISTAN     NA                   NA                1.1260884   1.0085133   1.2436636
6-9 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.3140299   1.2729534   1.3551064
6-9 months     ki1148112-LCNI-5      MALAWI       NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.3251314   1.3038170   1.3464459
9-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.9848124   0.9457805   1.0238444
9-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.9824181   0.9426109   1.0222252
9-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                1.0864239   1.0443515   1.1284963
9-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki1000109-EE          PAKISTAN     NA                   NA                0.8484117   0.7632855   0.9335379
9-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.9981924   0.9647527   1.0316321
9-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.0696646   1.0503114   1.0890177
12-15 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.9199912   0.8786810   0.9613015
12-15 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.9104871   0.8696624   0.9513117
12-15 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.9495446   0.9093518   0.9897373
12-15 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki1000109-EE          PAKISTAN     NA                   NA                1.0223758   0.9334119   1.1113396
12-15 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.8704063   0.8447703   0.8960424
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.9393119   0.9219119   0.9567119
15-18 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8230330   0.7852223   0.8608436
15-18 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8475479   0.8106803   0.8844155
15-18 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.8425951   0.7997829   0.8854074
15-18 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki1000109-EE          PAKISTAN     NA                   NA                0.8381757   0.7627800   0.9135715
15-18 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.7603933   0.7281594   0.7926271
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.8612746   0.8433730   0.8791761
18-21 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8195860   0.7845702   0.8546019
18-21 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8782845   0.8424042   0.9141648
18-21 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.8108531   0.7724296   0.8492765
18-21 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki1000109-EE          PAKISTAN     NA                   NA                0.7870620   0.7131718   0.8609522
18-21 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.9058703   0.8708102   0.9409303
18-21 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
21-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.7717324   0.7354003   0.8080644
21-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8278900   0.7955176   0.8602624
21-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.7862274   0.7444562   0.8279985
21-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.7949572   0.7486969   0.8412176
21-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0021214   -0.1345090    0.1302662
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.2549572   -0.6423047    0.1323904
0-3 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.1473877   -0.1794690    0.4742443
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.3667920    0.0617846    0.6717993
0-3 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0850017   -0.2281185    0.0581151
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0211502   -0.1445958    0.1022953
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0118259   -0.0120905    0.0357424
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1324118   -0.2629837   -0.0018399
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0360278   -0.1507722    0.0787167
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0366796   -0.2012159    0.2745751
3-6 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        0                    1                 -0.0902417   -0.3429189    0.1624356
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.0016741   -0.2283462    0.2316944
3-6 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0238843   -0.1679172    0.1201486
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0849187   -0.1787277    0.0088904
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0004485   -0.0285456    0.0276485
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0693044   -0.0128666    0.1514755
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0096387   -0.0784414    0.0977188
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0844664   -0.4153964    0.2464636
6-9 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA        0                    1                 -0.0794863   -0.2270718    0.0680991
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.1591321   -0.0471932    0.3654574
6-9 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0125503   -0.1316349    0.1065343
6-9 months     ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE          PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0046218   -0.1176665    0.1084229
6-9 months     ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI       0                    1                 -0.0645880   -0.2961525    0.1669766
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0051905   -0.0451653    0.0555464
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0608168   -0.0200902    0.1417239
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0657301   -0.1454169    0.2768772
9-12 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.0677325   -0.2666829    0.1312179
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.1358375    0.0157184    0.2559566
9-12 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU         0                    1                  0.0002462   -0.1052622    0.1057546
9-12 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE          PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0478127   -0.0454411    0.1410666
9-12 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.2793952   -0.5714121    0.0126217
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0013892   -0.0447275    0.0475059
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0432298   -0.0394999    0.1259595
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0069616   -0.1629077    0.1489845
12-15 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0070912   -0.1858225    0.1716401
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.1330127   -0.3286093    0.0625838
12-15 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0174123   -0.0797689    0.1145935
12-15 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE          PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0149287   -0.0795226    0.0496652
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0362675   -0.0092526    0.0817876
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0085282   -0.0717451    0.0888015
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0975885   -0.2587563    0.0635793
15-18 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0631413   -0.0505948    0.1768773
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0681076   -0.2026995    0.0664844
15-18 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0289600   -0.0587552    0.1166751
15-18 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE          PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0875668   -0.1495122   -0.0256213
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0071399   -0.0344119    0.0486918
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0213257   -0.0548298    0.0974811
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1999017    0.0277808    0.3720227
18-21 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0432771   -0.0983980    0.1849522
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.1240852   -0.0223044    0.2704749
18-21 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0249613   -0.0732009    0.1231235
18-21 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE          PAKISTAN     0                    1                  0.0274317   -0.1039496    0.1588129
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0266607   -0.0409470    0.0942683
18-21 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.1451419   -0.1961664    0.4864503
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0059087   -0.0842421    0.0724248
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0168831   -0.0845455    0.1183116
21-24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0207711   -0.1527228    0.1942651
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.1857569   -0.3856019    0.0140880
21-24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0303953   -0.0783798    0.1391704
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0200865   -0.1067790    0.1469520
21-24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI       0                    1                 -0.0185689   -0.1791549    0.1420172


### Parameter: PAR


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0026256   -0.0878016    0.0825504
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.2221037   -0.5653529    0.1211455
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.1403272   -0.1709085    0.4515629
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.3393278    0.0519417    0.6267139
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0579710   -0.1540557    0.0381137
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0098653   -0.0426417    0.0229111
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0027385   -0.0026672    0.0081443
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0213963   -0.0422287   -0.0005638
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0222866   -0.0977616    0.0531883
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0329088   -0.1714438    0.2372614
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0902012   -0.3317612    0.1513588
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0009029   -0.2201284    0.2183225
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0130983   -0.1090151    0.0828185
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0236919   -0.0490032    0.0016195
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0002335   -0.0067962    0.0063292
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0122429   -0.0005942    0.0250800
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0026615   -0.0567130    0.0620359
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0610404   -0.3463654    0.2242845
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0808139   -0.2218214    0.0601936
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1508192   -0.0461144    0.3477527
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0063084   -0.0856820    0.0730651
6-9 months     ki1000109-EE          PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0018420   -0.0296522    0.0259683
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                -0.0568995   -0.2535210    0.1397220
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0005367   -0.0098385    0.0109118
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0401600   -0.0117927    0.0921128
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0472890   -0.1344039    0.2289818
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0719025   -0.2609170    0.1171120
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1301195    0.0151769    0.2450622
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0034172   -0.0723302    0.0654957
9-12 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0066812   -0.0159600    0.0293224
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.2322478   -0.4434004   -0.0210953
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0011345   -0.0087022    0.0109713
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0286333   -0.0247885    0.0820550
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0104197   -0.1438155    0.1229761
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0088346   -0.1797712    0.1621020
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1310423   -0.3181691    0.0560845
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0109007   -0.0539628    0.0757642
12-15 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0035250   -0.0192847    0.0122346
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0080623   -0.0016063    0.0177310
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0053612   -0.0462577    0.0569801
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1064962   -0.2435549    0.0305625
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0601420   -0.0480613    0.1683454
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0644326   -0.1918613    0.0629961
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0184766   -0.0385602    0.0755134
15-18 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0207130   -0.0363443   -0.0050818
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0024510   -0.0062374    0.0111395
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0102212   -0.0411824    0.0616248
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1758341    0.0263503    0.3253179
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0356139   -0.0999074    0.1711352
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1169953   -0.0223688    0.2563595
18-21 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0157171   -0.0494522    0.0808864
18-21 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0060810   -0.0103922    0.0225543
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.1125574   -0.1619971    0.3871120
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0036877   -0.0540888    0.0467133
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0169617   -0.0698934    0.1038168
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0202087   -0.1464222    0.1868397
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1790539   -0.3690460    0.0109382
21-24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0189376   -0.0554258    0.0933010
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0111228   -0.0188092    0.0410548
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0172071   -0.1501634    0.1157491
