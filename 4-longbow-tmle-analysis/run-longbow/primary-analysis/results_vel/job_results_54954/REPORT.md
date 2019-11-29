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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                82     227  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               145     227  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                21     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               142     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 8     167  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               159     167  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                11     145  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               134     145  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1                85     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0               169     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2     186  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               184     186  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211     211  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1                33      37  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0                 4      37  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               368     501  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               133     501  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              9260   11961  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2701   11961  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2064    2466  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               402    2466  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                80     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               142     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                30     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               178     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                11     213  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               202     213  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                11     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               211     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1                90     266  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0               176     266  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               219     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     225  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               224     225  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1                34      38  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0                 4      38  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               338     464  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               126     464  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              5753    7502  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1749    7502  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              1516    1797  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               281    1797  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                76     217  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               141     217  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                29     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               169     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                11     213  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               202     213  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                12     220  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               208     220  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1                86     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0               159     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     210  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               207     210  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     214  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     214  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1                40      45  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0                 5      45  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     142  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               142     142  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               354     474  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               120     474  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         1                23     145  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         0               122     145  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2198    2769  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               571    2769  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                78     216  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               138     216  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                28     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               166     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                11     210  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               199     210  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                11     219  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               208     219  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1                82     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0               153     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     212  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     212  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     213  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212     213  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1                39      44  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0                 5      44  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     144  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               144     144  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               341     450  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               109     450  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         1                10      32  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         0                22      32  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              2453    3134  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               681    3134  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                73     204  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               131     204  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                27     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               157     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                11     209  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               198     209  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                11     220  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               209     220  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1                77     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0               147     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     214  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     214  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1                32      37  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0                 5      37  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     137  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               137     137  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               341     452  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               111     452  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         1                 0       1  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         0                 1       1  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2460    3148  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               688    3148  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                75     204  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     204  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                27     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               148     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                11     209  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               198     209  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1                75     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0               138     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     206  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               203     206  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     205  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204     205  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     129  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               129     129  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               347     461  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               114     461  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         1                 0       4  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         0                 4       4  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2467    3148  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               681    3148  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                75     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               127     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                25     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               142     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                10     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               199     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1                70     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0               132     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     213  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               210     213  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     192  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               191     192  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               325     426  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               101     426  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         1                29     170  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         0               141     170  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                73     200  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               127     200  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               140     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                10     208  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               198     208  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                12     218  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               206     218  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1                64     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0               125     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     214  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               211     214  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     192  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               191     192  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1                16      18  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0                 2      18  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               251     329  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                78     329  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         1                25     141  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         0               116     141  y_rate_haz       


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
![](/tmp/a2561305-589b-4be1-bacf-10a7c602fb2e/95fb63ec-f3a6-4227-b1b3-a5f00a758a74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a2561305-589b-4be1-bacf-10a7c602fb2e/95fb63ec-f3a6-4227-b1b3-a5f00a758a74/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a2561305-589b-4be1-bacf-10a7c602fb2e/95fb63ec-f3a6-4227-b1b3-a5f00a758a74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0980081   -0.1537159   -0.0423003
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1227292   -0.1662995   -0.0791588
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.2854366    0.1049419    0.4659314
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.1239889    0.0634094    0.1845685
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.1519059   -0.3354979    0.0316861
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0618553   -0.1121399   -0.0115708
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0832619   -0.1953867    0.0288629
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0658589    0.0158599    0.1158578
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.2282499   -0.2908788   -0.1656211
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.2709776   -0.3122326   -0.2297225
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0256666   -0.0544550    0.0031218
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0554430   -0.1088196   -0.0020663
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0584224    0.0518389    0.0650059
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0641677    0.0531630    0.0751724
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.2332346   -0.2620374   -0.2044318
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2987296   -0.3636773   -0.2337818
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0196230   -0.0634782    0.0242322
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0272390   -0.0560683    0.0015903
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0506321   -0.0525160    0.1537802
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0613824    0.0219067    0.1008581
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.1268472   -0.2236942   -0.0300002
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0408742   -0.0728546   -0.0088938
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0248564   -0.1409453    0.0912325
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0217660   -0.0503014    0.0067695
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0485032   -0.0104626    0.1074689
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                 0.0184031   -0.0194827    0.0562890
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1517680   -0.1731902   -0.1303458
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1891274   -0.2270275   -0.1512274
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0036537   -0.0106269    0.0033195
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0033979   -0.0148328    0.0080371
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0166471   -0.0317550   -0.0015392
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0214093   -0.0143433    0.0571619
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0724308   -0.1016543   -0.0432073
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0649550   -0.0870916   -0.0428184
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0764644   -0.0690718    0.2220007
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0017617   -0.0355936    0.0320702
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0791548   -0.1507973   -0.0075123
6-9 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0689702   -0.0933149   -0.0446255
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0904196   -0.1759576   -0.0048816
6-9 months     ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0336712   -0.0536230   -0.0137195
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0366965   -0.0796070    0.0062141
6-9 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.0327171   -0.0621880   -0.0032461
6-9 months     ki1000109-EE          PAKISTAN     1                    NA                -0.1102361   -0.1665884   -0.0538838
6-9 months     ki1000109-EE          PAKISTAN     0                    NA                -0.0939376   -0.1833491   -0.0045262
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0454793   -0.0633949   -0.0275638
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0480632   -0.0926870   -0.0034394
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                 0.0157762   -0.0610249    0.0925772
6-9 months     ki1148112-LCNI-5      MALAWI       0                    NA                 0.0060054   -0.0222906    0.0343013
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0296119   -0.0397099   -0.0195139
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0247896   -0.0454735   -0.0041057
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1053249   -0.1310849   -0.0795648
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0800188   -0.1006960   -0.0593416
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0418595   -0.1263027    0.0425836
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0158988   -0.0174264    0.0492241
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0101674   -0.0964612    0.0761263
9-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0896286   -0.1063801   -0.0728771
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1102269   -0.1481534   -0.0723004
9-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0609528   -0.0791471   -0.0427584
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0440286   -0.0785555   -0.0095016
9-12 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0404550   -0.0678882   -0.0130218
9-12 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1276355   -0.1664421   -0.0888290
9-12 months    ki1000109-EE          PAKISTAN     0                    NA                -0.1346832   -0.2415573   -0.0278091
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0836534   -0.0979295   -0.0693773
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0645467   -0.1021554   -0.0269379
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0561330   -0.1337026    0.0214367
9-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                -0.1338363   -0.2154807   -0.0521918
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0537858   -0.0628208   -0.0447509
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0497246   -0.0664748   -0.0329743
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0653547   -0.0895817   -0.0411278
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0483866   -0.0697947   -0.0269786
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0195507   -0.0755293    0.0364278
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0002294   -0.0249739    0.0245151
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0571971   -0.1225334    0.0081392
12-15 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0568771   -0.0733012   -0.0404530
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0443617   -0.1088001    0.0200767
12-15 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0587546   -0.0749810   -0.0425282
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0728071   -0.1017779   -0.0438363
12-15 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0622676   -0.0850686   -0.0394666
12-15 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0016762   -0.0345630    0.0312106
12-15 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0416377   -0.0932971    0.1765724
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0695616   -0.0802919   -0.0588313
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0720802   -0.0937673   -0.0503931
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0495169   -0.0567082   -0.0423257
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0317903   -0.0484995   -0.0150811
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0475633   -0.0708024   -0.0243241
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0462412   -0.0642900   -0.0281925
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0373228   -0.1015150    0.0268695
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0183252   -0.0413320    0.0046817
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0265919   -0.0763222    0.0231385
15-18 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0366571   -0.0502791   -0.0230352
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0206820   -0.0767095    0.0353454
15-18 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0560676   -0.0722421   -0.0398931
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0442325   -0.0680049   -0.0204601
15-18 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0313851   -0.0514643   -0.0113059
15-18 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0239930   -0.0525465    0.0045604
15-18 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0267957   -0.0572607    0.0036694
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0594837   -0.0740109   -0.0449564
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0893086   -0.1059619   -0.0726554
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0333228   -0.0405952   -0.0260504
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0281864   -0.0420651   -0.0143077
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0152577   -0.0352240    0.0047086
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0130708   -0.0290175    0.0028759
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0581493   -0.1139586   -0.0023399
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0140291   -0.0413903    0.0133321
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0309924   -0.0117160    0.0737007
18-21 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0074504   -0.0044801    0.0193809
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0676888   -0.1101741   -0.0252035
18-21 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0285916   -0.0422775   -0.0149056
18-21 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0158021   -0.0428280    0.0112237
18-21 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0048869   -0.0242684    0.0144947
18-21 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0093635   -0.0349812    0.0162542
18-21 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0265882   -0.0706485    0.0174721
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0158039    0.0003838    0.0312239
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0236778    0.0047815    0.0425741
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0579411   -0.2050877    0.0892055
18-21 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0012600   -0.0260323    0.0285523
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0247852    0.0027860    0.0467844
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0260964    0.0110869    0.0411058
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0209434   -0.0154637    0.0573504
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0158813   -0.0021107    0.0338734
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0329488   -0.0055613    0.0714590
21-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0303452    0.0185859    0.0421044
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0404652   -0.0228644    0.1037949
21-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0039081   -0.0103916    0.0182077
21-24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0450132    0.0149255    0.0751008
21-24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.0643252    0.0453830    0.0832673
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0453548    0.0284979    0.0622116
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0506159    0.0099854    0.0912463
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0073417   -0.0547499    0.0400665
21-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0123235   -0.0372698    0.0126228


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1184816   -0.1534627   -0.0835006
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0661691   -0.1149338   -0.0174045
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.0549995    0.0083296    0.1016694
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.2591669   -0.2929238   -0.2254100
0-3 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0320017   -0.0574984   -0.0065051
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                 0.0596909    0.0535305    0.0658514
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.2441243   -0.2705116   -0.2177371
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0242637   -0.0483310   -0.0001965
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0402849   -0.0709914   -0.0095783
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0219437   -0.0494813    0.0055938
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                 0.0265214   -0.0048238    0.0578666
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.1617717   -0.1805409   -0.1430025
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0036992   -0.0098266    0.0024282
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0106594   -0.0245209    0.0032020
6-9 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0677541   -0.0853832   -0.0501249
6-9 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0688970   -0.0921281   -0.0456658
6-9 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0368585   -0.0562650   -0.0174521
6-9 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki1000109-EE          PAKISTAN     NA                   NA                -0.1084252   -0.1595142   -0.0573361
6-9 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0453626   -0.0630368   -0.0276885
6-9 months     ki1148112-LCNI-5      MALAWI       NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0285987   -0.0378556   -0.0193419
9-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0895925   -0.1058429   -0.0733421
9-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0907785   -0.1072717   -0.0742853
9-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0633531   -0.0808095   -0.0458966
9-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki1000109-EE          PAKISTAN     NA                   NA                -0.1284364   -0.1649203   -0.0919525
9-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0795850   -0.0935763   -0.0655937
9-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0529092   -0.0609759   -0.0448426
12-15 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0539793   -0.0699671   -0.0379916
12-15 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0564380   -0.0722459   -0.0406302
12-15 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0581047   -0.0738902   -0.0423192
12-15 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki1000109-EE          PAKISTAN     NA                   NA                 0.0041770   -0.0299533    0.0383073
12-15 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0700044   -0.0796323   -0.0603764
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0457929   -0.0524470   -0.0391387
15-18 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0465524   -0.0603507   -0.0327542
15-18 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0368191   -0.0499234   -0.0237147
15-18 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0540981   -0.0695896   -0.0386065
15-18 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki1000109-EE          PAKISTAN     NA                   NA                -0.0244177   -0.0490831    0.0002477
15-18 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0665082   -0.0782160   -0.0548005
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0322067   -0.0387357   -0.0256778
18-21 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0136918   -0.0255600   -0.0018237
18-21 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED     INDIA        NA                   NA                 0.0056606   -0.0059781    0.0172993
18-21 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0305803   -0.0437450   -0.0174157
18-21 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki1000109-EE          PAKISTAN     NA                   NA                -0.0119733   -0.0348121    0.0108655
18-21 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                 0.0165107    0.0043866    0.0286347
18-21 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
21-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                 0.0256240    0.0132472    0.0380008
21-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                 0.0308252    0.0194990    0.0421515
21-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.0061413   -0.0078495    0.0201321
21-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                 0.0465624    0.0306829    0.0624420
21-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0247211   -0.0940700    0.0446279
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1614477   -0.3522131    0.0293177
0-3 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.0900506   -0.1003032    0.2804044
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.1491208    0.0258930    0.2723486
0-3 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0427276   -0.1192108    0.0337555
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0297764   -0.0902829    0.0307302
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0057453   -0.0057006    0.0171912
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0654949   -0.1362108    0.0052210
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0076160   -0.0606675    0.0454355
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0107503   -0.0997082    0.1212089
3-6 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.0859730   -0.0157860    0.1877320
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.0030904   -0.1164234    0.1226043
3-6 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         0                    1                 -0.0301000   -0.1002260    0.0400259
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0373594   -0.0808686    0.0061498
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0002558   -0.0127486    0.0132603
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0380565   -0.0008554    0.0769683
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0074758   -0.0292257    0.0441772
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0782262   -0.2280901    0.0716377
6-9 months     ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA        0                    1                  0.0101846   -0.0653778    0.0857470
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL        0                    1                  0.0567483   -0.0312225    0.1447192
6-9 months     ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU         0                    1                  0.0039794   -0.0482051    0.0561639
6-9 months     ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE          PAKISTAN     0                    1                  0.0162985   -0.0893897    0.1219867
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0025839   -0.0501165    0.0449488
6-9 months     ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5      MALAWI       0                    1                 -0.0097708   -0.0915055    0.0719639
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0048223   -0.0177418    0.0273864
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0253060   -0.0075723    0.0581844
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0577584   -0.0331984    0.1487151
9-12 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.0794612   -0.1675755    0.0086532
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.0492741    0.0069697    0.0915785
9-12 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU         0                    1                  0.0035736   -0.0409287    0.0480758
9-12 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE          PAKISTAN     0                    1                 -0.0070477   -0.1207491    0.1066537
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0191068   -0.0208311    0.0590447
9-12 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.0777033   -0.1926261    0.0372195
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0040613   -0.0148409    0.0229635
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0169681   -0.0154552    0.0493914
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0193213   -0.0419207    0.0805633
12-15 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0003200   -0.0671337    0.0677737
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0143929   -0.0807656    0.0519798
12-15 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0105395   -0.0262392    0.0473181
12-15 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE          PAKISTAN     0                    1                  0.0433139   -0.0955707    0.1821984
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0025186   -0.0267327    0.0216955
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0177266   -0.0002894    0.0357426
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0013220   -0.0281003    0.0307443
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0189976   -0.0493201    0.0873153
15-18 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0100653   -0.0616956    0.0415651
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0353856   -0.0937429    0.0229718
15-18 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0128474   -0.0183426    0.0440375
15-18 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE          PAKISTAN     0                    1                 -0.0028026   -0.0445569    0.0389516
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0298250   -0.0518129   -0.0078370
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                  0.0051364   -0.0101578    0.0204306
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0021869   -0.0244597    0.0288335
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0441202   -0.0182726    0.1065129
18-21 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0235420   -0.0678026    0.0207187
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.0390972   -0.0057031    0.0838975
18-21 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0109153   -0.0232616    0.0450921
18-21 months   ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE          PAKISTAN     0                    1                 -0.0172247   -0.0681912    0.0337417
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0078739   -0.0172412    0.0329891
18-21 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0592011   -0.0909840    0.2093863
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0013112   -0.0253879    0.0280102
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0050620   -0.0457611    0.0356371
21-24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.0026036   -0.0428505    0.0376432
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0365572   -0.1014749    0.0283606
21-24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0193120   -0.0170417    0.0556657
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0052611   -0.0387708    0.0492931
21-24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5      MALAWI       0                    1                 -0.0049818   -0.0586429    0.0486794


### Parameter: PAR


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0204735   -0.0661930    0.0252460
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1407783   -0.3085912    0.0270346
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0857368   -0.0955219    0.2669954
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1382614    0.0224047    0.2541181
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0309170   -0.0822887    0.0204548
0-3 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0063352   -0.0223104    0.0096401
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0012685   -0.0013187    0.0038557
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0108897   -0.0220229    0.0002436
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0046408   -0.0389997    0.0297182
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0090971   -0.0860227    0.1042169
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0865623   -0.0099626    0.1830872
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0029127   -0.1118902    0.1177155
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0219818   -0.0698764    0.0259129
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0100037   -0.0219340    0.0019266
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000455   -0.0030813    0.0029904
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0059877    0.0000663    0.0119091
6-9 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0046767   -0.0196899    0.0290433
6-9 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0676811   -0.1974780    0.0621159
6-9 months     ki0047075b-MAL-ED     INDIA        1                    NA                 0.0102579   -0.0620642    0.0825799
6-9 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0535610   -0.0304680    0.1375901
6-9 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0031180   -0.0309370    0.0371731
6-9 months     ki1000109-EE          PAKISTAN     1                    NA                 0.0018109   -0.0100293    0.0136512
6-9 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0001167   -0.0117335    0.0119669
6-9 months     ki1148112-LCNI-5      MALAWI       1                    NA                -0.0061900   -0.0752043    0.0628243
6-9 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0010132   -0.0035986    0.0056250
9-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0157324   -0.0055133    0.0369780
9-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0500379   -0.0298474    0.1299233
9-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0806110   -0.1648982    0.0036761
9-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0468738    0.0064217    0.0873260
9-12 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0021025   -0.0272398    0.0314448
9-12 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0008009   -0.0137388    0.0121370
9-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0040684   -0.0052718    0.0134086
9-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0491444   -0.1251887    0.0268999
9-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008766   -0.0031989    0.0049521
12-15 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0113754   -0.0099153    0.0326661
12-15 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0165077   -0.0361623    0.0691776
12-15 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0007591   -0.0637554    0.0652735
12-15 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0137430   -0.0765690    0.0490830
12-15 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0074539   -0.0175760    0.0324838
12-15 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0058532   -0.0135283    0.0252347
12-15 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0004428   -0.0063618    0.0054762
12-15 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0037241   -0.0000857    0.0075338
15-18 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0010108   -0.0183522    0.0203739
15-18 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0169806   -0.0422582    0.0762193
15-18 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0102272   -0.0596416    0.0391872
15-18 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0334160   -0.0893891    0.0225570
15-18 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0081760   -0.0119068    0.0282588
15-18 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0004246   -0.0067606    0.0059113
15-18 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0070246   -0.0125709   -0.0014783
15-18 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0011161   -0.0021217    0.0043538
18-21 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0015659   -0.0153513    0.0184830
18-21 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0377903   -0.0165038    0.0920844
18-21 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0253318   -0.0676108    0.0169472
18-21 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0371084   -0.0054297    0.0796466
18-21 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0076880   -0.0146262    0.0300023
18-21 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0026098   -0.0106230    0.0054034
18-21 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0007068   -0.0054301    0.0068437
18-21 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0487128   -0.0767841    0.1742097
21-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0008388   -0.0161618    0.0178394
21-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0044563   -0.0394119    0.0304992
21-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0021236   -0.0405583    0.0363111
21-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0343239   -0.0958911    0.0272432
21-24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0119612   -0.0127014    0.0366238
21-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0012077   -0.0090362    0.0114515
21-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0042831   -0.0493678    0.0408016
