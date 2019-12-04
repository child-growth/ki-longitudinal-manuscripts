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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 6       6  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       6  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1                33      37  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0                 4      37  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               411     432  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                21     432  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               159     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               481     640  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         1               391    1207  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         0               816    1207  y_rate_len       
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
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                16      16  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      16  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1                34      38  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0                 4      38  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               361     379  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     379  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               139     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               459     598  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         1               377    1331  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         0               954    1331  y_rate_len       
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
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                18      18  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      18  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1                 0      14  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0                14      14  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1                40      45  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0                 5      45  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1               326     341  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                15     341  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     142  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               142     142  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               126     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               439     565  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         1               242     815  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         0               573     815  y_rate_len       
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
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                17      17  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      17  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1                 0      14  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0                14      14  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1                39      44  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0                 5      44  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               348     361  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                13     361  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     144  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               144     144  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               131     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               435     566  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         1               254     793  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         0               539     793  y_rate_len       
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
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                17      17  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      17  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1                 0      14  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0                14      14  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1                32      37  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0                 5      37  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1               346     357  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                11     357  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     137  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               137     137  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               126     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               406     532  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         1               410    1236  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         0               826    1236  y_rate_len       
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
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                14      14  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      14  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1                 0      14  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0                14      14  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1               338     350  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                12     350  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     129  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               129     129  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               129     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               399     528  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         1               431    1249  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         0               818    1249  y_rate_len       
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
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                12      12  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      12  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1                 0      12  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0                12      12  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1                28      33  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0                 5      33  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               126     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               415     541  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         1               421    1233  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         0               812    1233  y_rate_len       
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
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                15      15  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      15  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1                 0      12  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0                12      12  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1                16      18  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0                 2      18  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               111     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               360     471  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         1               373    1123  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         0               750    1123  y_rate_len       
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
![](/tmp/fe78869a-b6eb-4a23-adc9-2d9d90a71293/f1584e67-d894-4939-8573-5e33de01743f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fe78869a-b6eb-4a23-adc9-2d9d90a71293/f1584e67-d894-4939-8573-5e33de01743f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fe78869a-b6eb-4a23-adc9-2d9d90a71293/f1584e67-d894-4939-8573-5e33de01743f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                3.3428077   3.2311695   3.4544459
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                3.3518208   3.2669701   3.4366715
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                4.0308355   3.6923303   4.3693408
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                3.7879561   3.6707097   3.9052025
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                3.1975488   2.8853961   3.5097015
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                3.3449364   3.2480037   3.4418691
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                3.3673436   3.1264481   3.6082391
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                3.6494593   3.5490482   3.7498705
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                3.1166225   3.0019222   3.2313227
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                3.0295969   2.9489437   3.1102500
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                3.3695026   3.3106339   3.4283713
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                2.9240440   2.7812046   3.0668835
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                3.2628904   3.1954710   3.3303099
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                3.2581751   3.2140838   3.3022663
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                3.1163469   3.0333996   3.1992942
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                3.1038505   3.0440274   3.1636736
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                3.6067759   3.5481359   3.6654159
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                3.5750878   3.4664260   3.6837495
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                3.6635836   3.6501565   3.6770108
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                3.6761680   3.6532688   3.6990671
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                3.0901218   3.0363978   3.1438458
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                2.9445193   2.8189391   3.0700995
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.9397062   1.8393754   2.0400370
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.9132512   1.8508969   1.9756055
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                2.1838685   1.9612780   2.4064591
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                2.1498297   2.0647595   2.2348999
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                1.8171591   1.5871664   2.0471518
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                1.8841892   1.8153255   1.9530529
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                1.8701633   1.5999715   2.1403550
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                1.9708945   1.9105953   2.0311937
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                2.0343292   1.9165763   2.1520821
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                2.0080893   1.9278418   2.0883368
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.8959468   1.8172862   1.9746075
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                2.0175913   1.4898496   2.5453330
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                2.0121712   1.9454829   2.0788595
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.9520437   1.9127480   1.9913393
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                1.9565821   1.8845838   2.0285804
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                2.0062051   1.9574088   2.0550013
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                1.7297102   1.6839451   1.7754754
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                1.6469365   1.5685728   1.7253002
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.9190580   1.9038965   1.9342194
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.9169583   1.8923065   1.9416101
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.8832169   1.8502259   1.9162078
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.9536911   1.8728020   2.0345801
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.2509513   1.1819461   1.3199565
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.2603970   1.2094482   1.3113458
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                1.6868394   1.3687427   2.0049360
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                1.4666804   1.3888323   1.5445285
6-9 months     ki0047075b-MAL-ED         INDIA        1                    NA                1.1428422   1.0106476   1.2750369
6-9 months     ki0047075b-MAL-ED         INDIA        0                    NA                1.2505974   1.1954637   1.3057311
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                1.2185460   1.0170556   1.4200363
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    NA                1.3605982   1.3147780   1.4064183
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                1.3006773   1.2064679   1.3948867
6-9 months     ki0047075b-MAL-ED         PERU         0                    NA                1.3160289   1.2506641   1.3813938
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     ki1000109-EE              PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.2109523   1.1268945   1.2950101
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.0649253   0.7601232   1.3697273
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.2489054   1.1962580   1.3015528
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.2927858   1.2642570   1.3213145
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                1.4683137   1.3597612   1.5768662
6-9 months     ki1101329-Keneba          GAMBIA       0                    NA                1.3802244   1.3180153   1.4424335
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                1.3153892   1.2741541   1.3566242
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                1.3182014   1.2131113   1.4232915
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                1.4229572   1.2034721   1.6424423
6-9 months     ki1148112-LCNI-5          MALAWI       0                    NA                1.4402345   1.3720721   1.5083968
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.3240109   1.3005485   1.3474732
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.3283724   1.2832732   1.3734717
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.9416989   0.8761233   1.0072746
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.0085201   0.9593002   1.0577401
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                1.2850674   1.1084708   1.4616640
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                1.3183394   1.2379912   1.3986875
9-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.9092973   0.6995942   1.1190004
9-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.9860691   0.9456514   1.0264868
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                0.9401295   0.8243876   1.0558714
9-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                1.0920719   1.0482124   1.1359314
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                1.0986024   1.0150797   1.1821251
9-12 months    ki0047075b-MAL-ED         PERU         0                    NA                1.0994936   1.0343942   1.1645931
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    ki1000109-EE              PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.9762588   0.9017504   1.0507673
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.3559211   1.0361250   1.6757171
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.0169711   0.9614621   1.0724801
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.0594082   1.0288051   1.0900114
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                0.9584978   0.8860373   1.0309583
9-12 months    ki1101329-Keneba          GAMBIA       0                    NA                0.9925407   0.9393272   1.0457543
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.9887119   0.9542805   1.0231434
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                1.0250030   0.9341552   1.1158508
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                1.1080417   0.8880623   1.3280210
9-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.9065781   0.7118159   1.1013403
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.0690857   1.0471569   1.0910145
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.0707999   1.0315064   1.1100933
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8912344   0.8314192   0.9510496
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.9358159   0.8806736   0.9909582
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                1.1426494   0.9930506   1.2922483
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                1.1446683   1.0798037   1.2095328
12-15 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.8831158   0.6972370   1.0689945
12-15 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.9121393   0.8698067   0.9544719
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.8977413   0.7182616   1.0772211
12-15 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.9471583   0.9058418   0.9884747
12-15 months   ki0047075b-MAL-ED         PERU         1                    NA                0.8718954   0.8002356   0.9435552
12-15 months   ki0047075b-MAL-ED         PERU         0                    NA                0.8955280   0.8378286   0.9532274
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   ki1000109-EE              PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.8475489   0.7723789   0.9227190
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5882719   0.3290880   0.8474557
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.9648385   0.9187204   1.0109565
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.9582536   0.9272465   0.9892607
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                0.9598818   0.9116584   1.0081051
12-15 months   ki1101329-Keneba          GAMBIA       0                    NA                0.9369019   0.8971621   0.9766417
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8738600   0.8454669   0.9022532
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8607548   0.8028703   0.9186394
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.9308010   0.9118692   0.9497328
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.9696458   0.9285752   1.0107165
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8170634   0.7571416   0.8769852
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8257739   0.7765540   0.8749938
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.9573790   0.7944955   1.1202626
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                1.0056926   0.9411745   1.0702107
15-18 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.7389124   0.6220933   0.8557315
15-18 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.8505460   0.8120144   0.8890776
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                1.0003480   0.8758498   1.1248461
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8390970   0.7944823   0.8837117
15-18 months   ki0047075b-MAL-ED         PERU         1                    NA                0.8344416   0.7626550   0.9062282
15-18 months   ki0047075b-MAL-ED         PERU         0                    NA                0.8607879   0.8068151   0.9147606
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   ki1000109-EE              PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.8867079   0.8293956   0.9440202
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.0927792   0.5595774   1.6259809
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8227374   0.7693527   0.8761221
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8661901   0.8391762   0.8932040
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8966488   0.8339075   0.9593901
15-18 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8786253   0.8389069   0.9183437
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.7833913   0.7436430   0.8231395
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6994233   0.6535611   0.7452854
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.8595468   0.8397599   0.8793337
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.8613398   0.8240348   0.8986447
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.7987080   0.7382250   0.8591910
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8324465   0.7867393   0.8781538
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.8465450   0.7083388   0.9847513
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.9398656   0.8606131   1.0191181
18-21 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.8478081   0.7022565   0.9933598
18-21 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.8857512   0.8490519   0.9224504
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.7122083   0.5794887   0.8449280
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8182672   0.7784558   0.8580785
18-21 months   ki0047075b-MAL-ED         PERU         1                    NA                0.8168180   0.7322794   0.9013566
18-21 months   ki0047075b-MAL-ED         PERU         0                    NA                0.8559530   0.7993496   0.9125564
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                0.7829057   0.6977684   0.8680431
18-21 months   ki1000109-EE              PAKISTAN     0                    NA                0.8103374   0.7102740   0.9104008
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7987702   0.7490488   0.8484917
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8524305   0.8252424   0.8796186
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8229366   0.7578823   0.8879910
18-21 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8123280   0.7676079   0.8570481
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.9034013   0.8596662   0.9471364
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.9278576   0.8744421   0.9812732
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.7894869   0.5644388   1.0145349
18-21 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.8771139   0.7939027   0.9603250
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.7857768   0.7206834   0.8508702
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.7645266   0.7180333   0.8110199
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.7607865   0.6739834   0.8475897
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.7965081   0.7465131   0.8465032
21-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.7428247   0.5895442   0.8961051
21-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.8280069   0.7946957   0.8613182
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                1.0006287   0.7992739   1.2019835
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.7782483   0.7353278   0.8211689
21-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.7417145   0.6523886   0.8310404
21-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.7727399   0.7152187   0.8302611
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7500816   0.6991496   0.8010135
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.7686855   0.7392359   0.7981350
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.6997107   0.6319577   0.7674638
21-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.7246554   0.6835340   0.7657768
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.7854590   0.7363842   0.8345339
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8191956   0.7029814   0.9354098
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.7299535   0.5928050   0.8671020
21-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.7326977   0.6549480   0.8104474


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                3.3482498   3.2804281   3.4160715
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     ki0047075b-MAL-ED         INDIA        NA                   NA                3.3378760   3.2442606   3.4314913
0-3 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                3.6205791   3.5251464   3.7160118
0-3 months     ki0047075b-MAL-ED         PERU         NA                   NA                3.0614469   2.9957442   3.1271496
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                3.3522434   3.2847848   3.4197021
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                3.1044617   3.0557519   3.1531714
0-3 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                3.5982617   3.5465367   3.6499867
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                3.6664276   3.6538579   3.6789973
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                3.0659983   3.0164756   3.1155211
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                1.9247979   1.8735932   1.9760025
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED         INDIA        NA                   NA                1.8843292   1.8181080   1.9505504
3-6 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                1.9668794   1.9086855   2.0250732
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                2.0171026   1.9506965   2.0835088
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                1.9051097   1.8384221   1.9717974
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                1.9931730   1.9526530   2.0336930
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                1.7086613   1.6690533   1.7482692
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                1.9190532   1.9057476   1.9323587
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                1.8947099   1.8645495   1.9248703
6-9 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                1.2541293   1.2135456   1.2947130
6-9 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED         INDIA        NA                   NA                1.2497455   1.1971145   1.3023766
6-9 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                1.3520991   1.3076136   1.3965845
6-9 months     ki0047075b-MAL-ED         PERU         NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki1000109-EE              PAKISTAN     NA                   NA                1.1260884   1.0085133   1.2436636
6-9 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                1.2100652   1.1296030   1.2905275
6-9 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1101329-Keneba          GAMBIA       NA                   NA                1.4042923   1.3508641   1.4577205
6-9 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                1.3140299   1.2729534   1.3551064
6-9 months     ki1148112-LCNI-5          MALAWI       NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                1.3251314   1.3038170   1.3464459
9-12 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.9848124   0.9457805   1.0238444
9-12 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.9824181   0.9426109   1.0222252
9-12 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                1.0864239   1.0443515   1.1284963
9-12 months    ki0047075b-MAL-ED         PERU         NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki1000109-EE              PAKISTAN     NA                   NA                0.8484117   0.7632855   0.9335379
9-12 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.9826276   0.9088962   1.0563590
9-12 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.9818764   0.9392834   1.0244694
9-12 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.9981924   0.9647527   1.0316321
9-12 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                1.0696646   1.0503114   1.0890177
12-15 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.9199912   0.8786810   0.9613015
12-15 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.9104871   0.8696624   0.9513117
12-15 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.9495446   0.9093518   0.9897373
12-15 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki1000109-EE              PAKISTAN     NA                   NA                1.0223758   0.9334119   1.1113396
12-15 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.8406400   0.7684485   0.9128315
12-15 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.9424871   0.9117122   0.9732620
12-15 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.8704063   0.8447703   0.8960424
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.9393119   0.9219119   0.9567119
15-18 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.8230330   0.7852223   0.8608436
15-18 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.8475479   0.8106803   0.8844155
15-18 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.8425951   0.7997829   0.8854074
15-18 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki1000109-EE              PAKISTAN     NA                   NA                0.8381757   0.7627800   0.9135715
15-18 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.8909184   0.8304593   0.9513775
15-18 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.8848169   0.8522726   0.9173611
15-18 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.7603933   0.7281594   0.7926271
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.8612746   0.8433730   0.8791761
18-21 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.8195860   0.7845702   0.8546019
18-21 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.8782845   0.8424042   0.9141648
18-21 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.8108531   0.7724296   0.8492765
18-21 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki1000109-EE              PAKISTAN     NA                   NA                0.7870620   0.7131718   0.8609522
18-21 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.8142039   0.7785744   0.8498334
18-21 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.9058703   0.8708102   0.9409303
18-21 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
21-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.7717324   0.7354003   0.8080644
21-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.8278900   0.7955176   0.8602624
21-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.7862274   0.7444562   0.8279985
21-24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.7172946   0.6823819   0.7522072
21-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.7949572   0.7486969   0.8412176
21-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0090131   -0.1309721    0.1489982
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.2428794   -0.6009691    0.1152102
0-3 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        0                    1                  0.1473877   -0.1794690    0.4742443
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.2821157    0.0219586    0.5422728
0-3 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0870256   -0.2287988    0.0547476
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.4454586   -0.5939152   -0.2970019
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0047154   -0.0853588    0.0759281
0-3 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0124964   -0.1147146    0.0897218
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0316881   -0.1551256    0.0917494
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0125843   -0.0113259    0.0364945
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1456025   -0.2812784   -0.0099265
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0264550   -0.1479715    0.0950615
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0340388   -0.2725674    0.2044897
3-6 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        0                    1                  0.0670301   -0.1730708    0.3071311
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.1007312   -0.1771843    0.3786468
3-6 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.0262399   -0.1678964    0.1154166
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.1216445   -0.4499236    0.6932125
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0601275   -0.1375441    0.0172891
3-6 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       0                    1                  0.0496230   -0.0371710    0.1364170
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0827737   -0.1734798    0.0079324
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0020997   -0.0301225    0.0259232
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0704742   -0.0171237    0.1580721
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0094457   -0.0766206    0.0955120
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.2201590   -0.5477544    0.1074364
6-9 months     ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA        0                    1                  0.1077552   -0.0361671    0.2516775
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.1420522   -0.0646695    0.3487739
6-9 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU         0                    1                  0.0153517   -0.1014785    0.1321819
6-9 months     ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.1460270   -0.4785521    0.1864982
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0438804   -0.0155917    0.1033524
6-9 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0880893   -0.2135379    0.0373592
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0028122   -0.1099320    0.1155565
6-9 months     ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5          MALAWI       0                    1                  0.0172772   -0.2200047    0.2545592
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0043615   -0.0453221    0.0540452
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0668212   -0.0151614    0.1488038
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0332719   -0.1610734    0.2276173
9-12 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.0767718   -0.1370497    0.2905932
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.1519424    0.0278977    0.2759871
9-12 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU         0                    1                  0.0008913   -0.1049966    0.1067792
9-12 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.3796622    0.0973657    0.6619588
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0424371   -0.0205884    0.1054627
9-12 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA       0                    1                  0.0340429   -0.0561708    0.1242566
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0362911   -0.0610329    0.1336152
9-12 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.2014636   -0.4995505    0.0966233
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0017142   -0.0429763    0.0464046
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0445815   -0.0370266    0.1261896
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0020188   -0.1608864    0.1649241
12-15 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0290235   -0.1614307    0.2194778
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0494169   -0.1349585    0.2337924
12-15 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0236326   -0.0680907    0.1153560
12-15 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.2592771   -0.5410201    0.0224660
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0065849   -0.0618798    0.0487100
12-15 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0229799   -0.0853523    0.0393925
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0131052   -0.0774162    0.0512057
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0388448   -0.0060792    0.0837688
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0087105   -0.0691804    0.0866014
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0483136   -0.1273258    0.2239530
15-18 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.1116336   -0.0116359    0.2349031
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1612510   -0.2938841   -0.0286178
15-18 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0263463   -0.0639900    0.1166826
15-18 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.2060712   -0.3184693    0.7306118
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0434527   -0.0164091    0.1033145
15-18 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0180235   -0.0919512    0.0559043
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0839680   -0.1447859   -0.0231501
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0017930   -0.0389529    0.0425388
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0337385   -0.0424153    0.1098923
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0933206   -0.0662455    0.2528866
18-21 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0379430   -0.1114727    0.1873588
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.1060588   -0.0324493    0.2445669
18-21 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0391350   -0.0642377    0.1425077
18-21 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN     0                    1                  0.0274317   -0.1039496    0.1588129
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0536603   -0.0028165    0.1101371
18-21 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0106086   -0.0898832    0.0686659
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0244563   -0.0452477    0.0941603
18-21 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0876270   -0.1535359    0.3287899
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0212502   -0.1026215    0.0601211
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0357216   -0.0646564    0.1360997
21-24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0851823   -0.0716899    0.2420545
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.2223804   -0.4288623   -0.0158985
21-24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0310254   -0.0752530    0.1373038
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0186039   -0.0403205    0.0775283
21-24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0249447   -0.0551036    0.1049930
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0337365   -0.0925366    0.1600096
21-24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0027442   -0.1550631    0.1605516


### Parameter: PAR


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0054421   -0.0853016    0.0961858
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.2117988   -0.5256062    0.1020086
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.1403272   -0.1709085    0.4515629
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.2532355    0.0095004    0.4969707
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0551756   -0.1507056    0.0403545
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0172592   -0.0279700   -0.0065484
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0052094   -0.0660248    0.0556060
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0118852   -0.0810040    0.0572336
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0085142   -0.0410721    0.0240437
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0028440   -0.0025618    0.0082497
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0241235   -0.0450462   -0.0032008
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0149083   -0.0944618    0.0646452
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0377870   -0.2429718    0.1673978
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.0671701   -0.1618243    0.2961645
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0967161   -0.1698311    0.3632633
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0172265   -0.1113312    0.0768781
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0091629   -0.0111747    0.0295005
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0464255   -0.1060061    0.0131552
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                 0.0365910   -0.0258744    0.0990563
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0210489   -0.0457383    0.0036404
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0000048   -0.0065451    0.0065355
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0114931   -0.0015353    0.0245214
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0031780   -0.0539704    0.0603264
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.2037234   -0.4854739    0.0780270
6-9 months     ki0047075b-MAL-ED         INDIA        1                    NA                 0.1069033   -0.0307693    0.2445759
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1335531   -0.0638728    0.3309789
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0193193   -0.0586429    0.0972814
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0008870   -0.0169575    0.0151834
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0335131   -0.0128554    0.0798816
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0640214   -0.1530028    0.0249599
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0013593   -0.0303409    0.0276223
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                 0.0143031   -0.1881899    0.2167961
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0011206   -0.0092628    0.0115039
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0431135   -0.0102678    0.0964948
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0131885   -0.1526719    0.1790489
9-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.0731208   -0.1299108    0.2761523
9-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1462944    0.0274852    0.2651036
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0000900   -0.0693945    0.0692146
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0063687   -0.0031400    0.0158774
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0330039   -0.0154999    0.0815077
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0233786   -0.0382520    0.0850091
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0094805   -0.0129975    0.0319585
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.1374072   -0.3488855    0.0740711
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0005789   -0.0092009    0.0103587
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0287568   -0.0240403    0.0815539
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0004721   -0.1407606    0.1398165
12-15 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0273713   -0.1552059    0.2099485
12-15 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0518033   -0.1246184    0.2282249
12-15 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0198326   -0.0420055    0.0816707
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0069089   -0.0163630    0.0025452
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0050884   -0.0473506    0.0371738
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0173946   -0.0590738    0.0242845
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0034537   -0.0190198    0.0121125
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0085109   -0.0011643    0.0181860
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0059696   -0.0432660    0.0552051
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0447323   -0.1055609    0.1950256
15-18 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.1086355   -0.0095019    0.2267728
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1577528   -0.2837698   -0.0317359
15-18 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0189892   -0.0402090    0.0781873
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0042105   -0.0123389    0.0207598
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0333624   -0.0121741    0.0788989
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0118319   -0.0609664    0.0373026
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0229980   -0.0383740   -0.0076219
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0017278   -0.0069802    0.0104357
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0208780   -0.0288106    0.0705666
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0695308   -0.0677942    0.2068558
18-21 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0304764   -0.1129596    0.1739123
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0986447   -0.0327861    0.2300756
18-21 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0246259   -0.0445023    0.0937541
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0405675   -0.0028446    0.0839795
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0087328   -0.0613069    0.0438414
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0024690   -0.0142688    0.0192067
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0524905   -0.1258197    0.2308006
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0140444   -0.0667693    0.0386805
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0353654   -0.0501691    0.1208999
21-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0850653   -0.0651156    0.2352463
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2144014   -0.4104982   -0.0183045
21-24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0193361   -0.0529440    0.0916162
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0130575   -0.0320504    0.0581654
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0175838   -0.0367779    0.0719456
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0094982   -0.0203834    0.0393798
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0043034   -0.1258145    0.1344212
