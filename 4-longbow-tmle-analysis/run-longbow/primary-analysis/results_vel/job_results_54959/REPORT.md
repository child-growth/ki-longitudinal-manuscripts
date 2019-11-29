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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 6       6  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       6  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1                33      37  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0                 4      37  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               411     432  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                21     432  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               159     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               481     640  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         1               391    1207  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         0               816    1207  y_rate_haz       
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
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                16      16  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      16  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1                34      38  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0                 4      38  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               361     379  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     379  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               139     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               459     598  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         1               377    1331  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         0               954    1331  y_rate_haz       
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
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                18      18  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      18  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1                40      45  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0                 5      45  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1               326     341  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                15     341  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     142  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               142     142  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               126     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               439     565  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         1               242     815  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         0               573     815  y_rate_haz       
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
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                17      17  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      17  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1                 0      14  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0                14      14  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1                39      44  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0                 5      44  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               348     361  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                13     361  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     144  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               144     144  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               131     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               435     566  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         1               254     793  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         0               539     793  y_rate_haz       
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
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                17      17  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      17  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1                 0      14  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0                14      14  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1                32      37  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0                 5      37  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1               346     357  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                11     357  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     137  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               137     137  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               126     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               406     532  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         1               410    1236  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         0               826    1236  y_rate_haz       
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
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                14      14  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      14  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1                 0      14  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0                14      14  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1               338     350  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                12     350  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     129  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               129     129  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               129     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               399     528  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         1               431    1249  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         0               818    1249  y_rate_haz       
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
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                12      12  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      12  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1                 0      12  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0                12      12  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               126     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               415     541  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         1               421    1233  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         0               812    1233  y_rate_haz       
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
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                15      15  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      15  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1                 0      12  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0                12      12  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1                16      18  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0                 2      18  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               111     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               360     471  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         1               373    1123  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         0               750    1123  y_rate_haz       
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/1811441b-8931-43a7-ad6c-75e92adb9250/7c9f743f-5675-4c6a-834c-05bc6b1cc27f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1811441b-8931-43a7-ad6c-75e92adb9250/7c9f743f-5675-4c6a-834c-05bc6b1cc27f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1811441b-8931-43a7-ad6c-75e92adb9250/7c9f743f-5675-4c6a-834c-05bc6b1cc27f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1047521   -0.1617317   -0.0477725
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1218692   -0.1665919   -0.0771466
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2877614    0.1065515    0.4689714
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.1271894    0.0662928    0.1880859
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.1519059   -0.3354979    0.0316861
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0618553   -0.1121399   -0.0115708
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0755496   -0.1921537    0.0410545
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0653261    0.0154824    0.1151698
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.2363929   -0.2958592   -0.1769266
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.2732307   -0.3141713   -0.2322901
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.1257104   -0.1530267   -0.0983942
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.3105682   -0.3875824   -0.2335540
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.1797261   -0.2110461   -0.1484062
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1895172   -0.2100370   -0.1689974
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.2789172   -0.3215902   -0.2362442
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.2866205   -0.3170838   -0.2561571
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0263564   -0.0550036    0.0022907
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0431438   -0.0961660    0.0098784
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0583446    0.0517838    0.0649053
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0646576    0.0537047    0.0756106
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.2321951   -0.2607857   -0.2036045
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.3074752   -0.3730830   -0.2418675
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0185647   -0.0615493    0.0244199
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0306463   -0.0583994   -0.0028932
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0493610   -0.0565566    0.1552785
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0598734    0.0206070    0.0991398
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.0313928   -0.0809859    0.1437715
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0401650   -0.0720966   -0.0082334
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0453482   -0.1320427    0.0413463
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0220806   -0.0506047    0.0064434
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0336554   -0.0228192    0.0901300
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                 0.0239195   -0.0137779    0.0616168
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0392874   -0.0742063   -0.0043685
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0493342   -0.1680670    0.2667354
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0028306   -0.0339887    0.0283276
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0349302   -0.0532679   -0.0165925
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0301670   -0.0638726    0.0035387
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0127426   -0.0356973    0.0102121
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.1521714   -0.1736517   -0.1306910
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1872226   -0.2253029   -0.1491423
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0038149   -0.0107815    0.0031517
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0034318   -0.0149047    0.0080411
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0166686   -0.0318045   -0.0015327
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0224539   -0.0139800    0.0588878
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0708481   -0.1015344   -0.0401617
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0639367   -0.0863783   -0.0414951
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0613433   -0.0737789    0.1964656
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0004387   -0.0331442    0.0340216
6-9 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0662319   -0.1435679    0.0111040
6-9 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0690436   -0.0932410   -0.0448462
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0973279   -0.1927534   -0.0019024
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0341585   -0.0540548   -0.0142622
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0297520   -0.0717985    0.0122945
6-9 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.0312537   -0.0605805   -0.0019270
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                -0.1102361   -0.1665884   -0.0538838
6-9 months     ki1000109-EE              PAKISTAN     0                    NA                -0.0939376   -0.1833491   -0.0045262
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0843619   -0.1216004   -0.0471234
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1655348   -0.3145653   -0.0165043
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0740631   -0.0965912   -0.0515349
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0570856   -0.0693979   -0.0447733
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                 0.0146854   -0.0322821    0.0616530
6-9 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0263596   -0.0535644    0.0008452
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0454692   -0.0634015   -0.0275369
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0474492   -0.0921217   -0.0027767
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                 0.0203023   -0.0555366    0.0961411
6-9 months     ki1148112-LCNI-5          MALAWI       0                    NA                 0.0078900   -0.0204803    0.0362604
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0296077   -0.0397438   -0.0194716
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0243481   -0.0454108   -0.0032854
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1057821   -0.1321553   -0.0794090
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0804863   -0.1010919   -0.0598806
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0470580   -0.1321100    0.0379940
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0163017   -0.0169361    0.0495395
9-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.1617124   -0.2767302   -0.0466947
9-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.0899808   -0.1067156   -0.0732460
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0953276   -0.1385179   -0.0521372
9-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0606495   -0.0788684   -0.0424306
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0424937   -0.0783486   -0.0066388
9-12 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0406739   -0.0679501   -0.0133977
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                -0.1276355   -0.1664421   -0.0888290
9-12 months    ki1000109-EE              PAKISTAN     0                    NA                -0.1346832   -0.2415573   -0.0278091
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0905296   -0.1197786   -0.0612805
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0522216   -0.0596752    0.1641184
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0770061   -0.0994226   -0.0545896
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0595347   -0.0719930   -0.0470764
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1062457   -0.1373475   -0.0751439
9-12 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0965408   -0.1191306   -0.0739510
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0840014   -0.0982581   -0.0697447
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0650516   -0.1032339   -0.0268693
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0851028   -0.1642160   -0.0059896
9-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                -0.1343847   -0.2119637   -0.0568058
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0540231   -0.0630958   -0.0449504
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0494052   -0.0660541   -0.0327563
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0651716   -0.0892999   -0.0410433
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0482200   -0.0698211   -0.0266189
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0038474   -0.0619845    0.0542897
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0029676   -0.0275966    0.0216614
12-15 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0665686   -0.1260130   -0.0071242
12-15 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0569481   -0.0733621   -0.0405341
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0607880   -0.1225651    0.0009891
12-15 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0585238   -0.0747771   -0.0422705
12-15 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0757043   -0.1033886   -0.0480200
12-15 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0608365   -0.0836288   -0.0380443
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0016762   -0.0345630    0.0312106
12-15 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0416377   -0.0932971    0.1765724
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0780904   -0.1070778   -0.0491030
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1499139   -0.2572906   -0.0425372
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0361882   -0.0542909   -0.0180855
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0414424   -0.0534274   -0.0294574
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0462892   -0.0654543   -0.0271240
12-15 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0529046   -0.0685486   -0.0372606
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0692693   -0.0799709   -0.0585677
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0702087   -0.0918492   -0.0485683
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0496236   -0.0567681   -0.0424792
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0329547   -0.0491774   -0.0167319
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0421811   -0.0640859   -0.0202763
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0460209   -0.0641368   -0.0279050
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0349077   -0.0884443    0.0186289
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0190973   -0.0420507    0.0038562
15-18 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0318463   -0.0757279    0.0120352
15-18 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0363960   -0.0500448   -0.0227472
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0229495   -0.0831262    0.0372272
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0559555   -0.0721500   -0.0397610
15-18 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0450978   -0.0709394   -0.0192562
15-18 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0321089   -0.0519597   -0.0122581
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0239930   -0.0525465    0.0045604
15-18 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0267957   -0.0572607    0.0036694
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0173193   -0.0380203    0.0033816
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0450344   -0.1392428    0.2293117
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0515528   -0.0699089   -0.0331966
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0341769   -0.0441267   -0.0242271
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0260107   -0.0488823   -0.0031391
15-18 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0318652   -0.0465271   -0.0172033
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0600689   -0.0745985   -0.0455393
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0912535   -0.1078909   -0.0746160
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0336528   -0.0409375   -0.0263681
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0279956   -0.0415575   -0.0144337
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0185973   -0.0378692    0.0006746
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0105474   -0.0263277    0.0052328
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0579932   -0.1061757   -0.0098107
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0142650   -0.0416323    0.0131023
18-21 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0194489   -0.0797088    0.0408110
18-21 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0072632   -0.0046708    0.0191972
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0805110   -0.1282747   -0.0327473
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0288624   -0.0426290   -0.0150957
18-21 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0134339   -0.0415697    0.0147018
18-21 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0053876   -0.0238904    0.0131153
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0093635   -0.0349812    0.0162542
18-21 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0265882   -0.0706485    0.0174721
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0242289   -0.0413608   -0.0070971
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0070427   -0.0162953    0.0022099
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0233942   -0.0459659   -0.0008226
18-21 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0219080   -0.0376062   -0.0062098
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0144515   -0.0007939    0.0296968
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0246812    0.0063575    0.0430050
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0462144   -0.1769494    0.0845206
18-21 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0013203   -0.0286075    0.0259670
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0254873    0.0030727    0.0479020
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0255365    0.0105135    0.0405594
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0189877   -0.0172079    0.0551833
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0159606   -0.0019429    0.0338641
21-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0509258    0.0133626    0.0884891
21-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0306607    0.0188958    0.0424256
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0676000    0.0296265    0.1055735
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0041123   -0.0102203    0.0184449
21-24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0501323    0.0200880    0.0801767
21-24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.0612255    0.0422096    0.0802414
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0426797    0.0245999    0.0607595
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0483818    0.0384043    0.0583593
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0063699   -0.0155224    0.0282622
21-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0201505    0.0061934    0.0341076
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0452840    0.0282852    0.0622827
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0504608    0.0084438    0.0924779
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0153204   -0.0643981    0.0337573
21-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0105340   -0.0357143    0.0146463


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1184816   -0.1534627   -0.0835006
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0661691   -0.1149338   -0.0174045
0-3 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.0549995    0.0083296    0.1016694
0-3 months     ki0047075b-MAL-ED         PERU         NA                   NA                -0.2591669   -0.2929238   -0.2254100
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.1347598   -0.1669848   -0.1025348
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.2849946   -0.3097468   -0.2602425
0-3 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0320017   -0.0574984   -0.0065051
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                 0.0596909    0.0535305    0.0658514
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.2441243   -0.2705116   -0.2177371
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0242637   -0.0483310   -0.0001965
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0402849   -0.0709914   -0.0095783
3-6 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0219437   -0.0494813    0.0055938
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                 0.0265214   -0.0048238    0.0578666
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0357951   -0.0659472   -0.0056430
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.0174002   -0.0363928    0.0015925
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.1617717   -0.1805409   -0.1430025
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.0036992   -0.0098266    0.0024282
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0106594   -0.0245209    0.0032020
6-9 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0677541   -0.0853832   -0.0501249
6-9 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0688970   -0.0921281   -0.0456658
6-9 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0368585   -0.0562650   -0.0174521
6-9 months     ki0047075b-MAL-ED         PERU         NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki1000109-EE              PAKISTAN     NA                   NA                -0.1084252   -0.1595142   -0.0573361
6-9 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0842147   -0.1210357   -0.0473936
6-9 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.0130897   -0.0366228    0.0104435
6-9 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0453626   -0.0630368   -0.0276885
6-9 months     ki1148112-LCNI-5          MALAWI       NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0285987   -0.0378556   -0.0193419
9-12 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0895925   -0.1058429   -0.0733421
9-12 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0907785   -0.1072717   -0.0742853
9-12 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0633531   -0.0808095   -0.0458966
9-12 months    ki0047075b-MAL-ED         PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.1284364   -0.1649203   -0.0919525
9-12 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0874131   -0.1167860   -0.0580402
9-12 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1002256   -0.1180868   -0.0823644
9-12 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0795850   -0.0935763   -0.0655937
9-12 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0529092   -0.0609759   -0.0448426
12-15 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0539793   -0.0699671   -0.0379916
12-15 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0564380   -0.0722459   -0.0406302
12-15 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0581047   -0.0738902   -0.0423192
12-15 months   ki0047075b-MAL-ED         PERU         NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki1000109-EE              PAKISTAN     NA                   NA                 0.0041770   -0.0299533    0.0383073
12-15 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0801725   -0.1084262   -0.0519187
12-15 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0508881   -0.0630216   -0.0387547
12-15 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0700044   -0.0796323   -0.0603764
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0457929   -0.0524470   -0.0391387
15-18 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0465524   -0.0603507   -0.0327542
15-18 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0368191   -0.0499234   -0.0237147
15-18 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0540981   -0.0695896   -0.0386065
15-18 months   ki0047075b-MAL-ED         PERU         NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki1000109-EE              PAKISTAN     NA                   NA                -0.0244177   -0.0490831    0.0002477
15-18 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0159336   -0.0379140    0.0060468
15-18 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0301774   -0.0421851   -0.0181698
15-18 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0665082   -0.0782160   -0.0548005
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0322067   -0.0387357   -0.0256778
18-21 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0136918   -0.0255600   -0.0018237
18-21 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED         INDIA        NA                   NA                 0.0056606   -0.0059781    0.0172993
18-21 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0305803   -0.0437450   -0.0174157
18-21 months   ki0047075b-MAL-ED         PERU         NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki1000109-EE              PAKISTAN     NA                   NA                -0.0119733   -0.0348121    0.0108655
18-21 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0224639   -0.0348440   -0.0100838
18-21 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                 0.0165107    0.0043866    0.0286347
18-21 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
21-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                 0.0256240    0.0132472    0.0380008
21-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                 0.0308252    0.0194990    0.0421515
21-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.0061413   -0.0078495    0.0201321
21-24 months   ki0047075b-MAL-ED         PERU         NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                 0.0160955    0.0044320    0.0277591
21-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                 0.0465624    0.0306829    0.0624420
21-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0171171   -0.0884756    0.0542414
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1605721   -0.3525452    0.0314010
0-3 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        0                    1                  0.0900506   -0.1003032    0.2804044
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.1408757    0.0142785    0.2674728
0-3 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0368378   -0.1087384    0.0350627
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.1848578   -0.2573389   -0.1123766
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0097910   -0.0469634    0.0273813
0-3 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0077033   -0.0597281    0.0443215
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0167874   -0.0767125    0.0431377
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0063130   -0.0050207    0.0176468
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0752801   -0.1464104   -0.0041499
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0120816   -0.0634178    0.0392546
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0105125   -0.1025418    0.1235667
3-6 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        0                    1                 -0.0715578   -0.1884997    0.0453840
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.0232676   -0.0682775    0.1148126
3-6 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0097359   -0.0770907    0.0576188
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0886216   -0.1456419    0.3228850
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0320997   -0.0681252    0.0039259
3-6 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       0                    1                  0.0174244   -0.0232081    0.0580568
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0350512   -0.0788178    0.0087154
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0003831   -0.0126392    0.0134054
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0391225   -0.0004228    0.0786678
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0069113   -0.0313162    0.0451389
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0609046   -0.2003881    0.0785788
6-9 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA        0                    1                 -0.0028117   -0.0838971    0.0782737
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.0631694   -0.0344622    0.1608010
6-9 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0015017   -0.0530435    0.0500400
6-9 months     ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN     0                    1                  0.0162985   -0.0893897    0.1219867
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0811729   -0.2268372    0.0644914
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0169774   -0.0086692    0.0426241
6-9 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0410450   -0.0957274    0.0136374
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0019800   -0.0497311    0.0457710
6-9 months     ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5          MALAWI       0                    1                 -0.0124122   -0.0935115    0.0686870
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0052596   -0.0177602    0.0282794
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0252958   -0.0081253    0.0587169
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0633597   -0.0279894    0.1547089
9-12 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.0717316   -0.0444849    0.1879481
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.0346781   -0.0123796    0.0817359
9-12 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU         0                    1                  0.0018198   -0.0433993    0.0470388
9-12 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN     0                    1                 -0.0070477   -0.1207491    0.1066537
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.1427512    0.0422034    0.2432990
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0174714   -0.0079943    0.0429371
9-12 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA       0                    1                  0.0097049   -0.0288858    0.0482956
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0189498   -0.0219714    0.0598710
9-12 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0492819   -0.1652979    0.0667340
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0046179   -0.0142060    0.0234418
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0169516   -0.0155325    0.0494358
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0008798   -0.0623134    0.0640731
12-15 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0096205   -0.0521519    0.0713928
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0022642   -0.0615437    0.0660721
12-15 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0148678   -0.0209645    0.0507000
12-15 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN     0                    1                  0.0433139   -0.0955707    0.1821984
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0718234   -0.1807653    0.0371184
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0052542   -0.0269418    0.0164333
12-15 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0066154   -0.0312489    0.0180181
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0009395   -0.0250875    0.0232086
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0166690   -0.0009008    0.0342388
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0038398   -0.0326704    0.0249908
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0158104   -0.0425291    0.0741500
15-18 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.0045497   -0.0503932    0.0412939
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0330060   -0.0953607    0.0293486
15-18 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0129889   -0.0196976    0.0456754
15-18 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN     0                    1                 -0.0028026   -0.0445569    0.0389516
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0623537   -0.1184034    0.2431109
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0173759   -0.0035246    0.0382763
15-18 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0058544   -0.0330696    0.0213607
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0311846   -0.0533085   -0.0090607
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0056572   -0.0093263    0.0206407
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0080499   -0.0169824    0.0330822
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0437282   -0.0113567    0.0988132
18-21 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0267121   -0.0350061    0.0884304
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0516486    0.0018203    0.1014770
18-21 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0080464   -0.0255968    0.0416896
18-21 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN     0                    1                 -0.0172247   -0.0681912    0.0337417
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0171862   -0.0022549    0.0366273
18-21 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0014862   -0.0260859    0.0290583
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0102297   -0.0141472    0.0346067
18-21 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0448941   -0.0889174    0.1787057
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0000491   -0.0268297    0.0269279
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0030271   -0.0434447    0.0373905
21-24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.0202652   -0.0595880    0.0190577
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0634877   -0.1041894   -0.0227860
21-24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0110932   -0.0247869    0.0469732
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0057021   -0.0151326    0.0265368
21-24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0137806   -0.0123281    0.0398893
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0051769   -0.0402143    0.0505681
21-24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0047864   -0.0505700    0.0601428


### Parameter: PAR


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0137295   -0.0597181    0.0322590
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1431031   -0.3122270    0.0260208
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.0857368   -0.0955219    0.2669954
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1305491    0.0104945    0.2506036
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0227740   -0.0709726    0.0254245
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0090494   -0.0146012   -0.0034975
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0083141   -0.0363236    0.0196955
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0060775   -0.0415266    0.0293716
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0056453   -0.0214902    0.0101996
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0013464   -0.0012115    0.0039042
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0119292   -0.0229761   -0.0008823
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0056990   -0.0397000    0.0283019
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0103682   -0.0872557    0.1079921
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0716777   -0.1834812    0.0401259
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0234045   -0.0640290    0.1108380
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0071340   -0.0519938    0.0377257
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0034923   -0.0063212    0.0133058
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0241319   -0.0518806    0.0036168
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                 0.0127668   -0.0164960    0.0420297
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0096003   -0.0215467    0.0023461
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0001157   -0.0029144    0.0031458
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0060092    0.0000667    0.0119516
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0030940   -0.0227910    0.0289790
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0525600   -0.1722820    0.0671621
6-9 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0026650   -0.0804142    0.0750841
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0604694   -0.0335193    0.1544580
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0038264   -0.0376376    0.0299847
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0018109   -0.0100293    0.0136512
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0001472   -0.0062279    0.0065224
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0126367   -0.0073505    0.0326238
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0277751   -0.0665596    0.0110094
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0001066   -0.0119225    0.0121356
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                -0.0107161   -0.0792226    0.0577904
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0010090   -0.0036497    0.0056676
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0161896   -0.0056087    0.0379879
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0552364   -0.0246001    0.1350729
9-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.0709340   -0.0414065    0.1832744
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0319745   -0.0129585    0.0769075
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0005676   -0.0293527    0.0304880
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0008009   -0.0137388    0.0121370
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0031165   -0.0003309    0.0065639
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0139591   -0.0056491    0.0335673
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0060201   -0.0205241    0.0325642
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0044164   -0.0052254    0.0140581
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0201745   -0.1016255    0.0612764
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0011139   -0.0029774    0.0052052
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0111923   -0.0099526    0.0323372
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0008044   -0.0535814    0.0551902
12-15 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0101306   -0.0486055    0.0688667
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0026834   -0.0578138    0.0631805
12-15 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0103511   -0.0135992    0.0343015
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0058532   -0.0135283    0.0252347
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0020820   -0.0054357    0.0012716
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0047225   -0.0213517    0.0119067
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0045990   -0.0211558    0.0119578
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0007351   -0.0066250    0.0051548
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0038308    0.0000347    0.0076268
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0043714   -0.0229220    0.0141793
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0145655   -0.0350255    0.0641565
15-18 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0049727   -0.0487210    0.0387756
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0311486   -0.0910662    0.0287691
15-18 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0090413   -0.0128832    0.0309658
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0004246   -0.0067606    0.0059113
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0013857   -0.0044708    0.0072422
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0139090   -0.0019693    0.0297873
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0041667   -0.0221509    0.0138175
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0064393   -0.0120236   -0.0008551
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0014461   -0.0017954    0.0046875
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0049055   -0.0110986    0.0209096
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0376342   -0.0096160    0.0848845
18-21 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0251095   -0.0339505    0.0841694
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0499306    0.0019189    0.0979424
18-21 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0053198   -0.0171857    0.0278254
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0026098   -0.0106230    0.0054034
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0132890   -0.0016604    0.0282384
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0009303   -0.0172509    0.0191115
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0020592   -0.0037858    0.0079042
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0369861   -0.0722694    0.1462416
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0001366   -0.0172067    0.0174800
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0025007   -0.0371020    0.0321006
21-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0201006   -0.0576514    0.0174502
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0614587   -0.0991424   -0.0237750
21-24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0068421   -0.0175763    0.0312604
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0035545   -0.0123947    0.0195038
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0097256   -0.0078641    0.0273153
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0012785   -0.0090473    0.0116043
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0036956   -0.0429582    0.0503494
