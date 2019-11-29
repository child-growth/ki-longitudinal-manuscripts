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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                33     227  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               194     227  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 7     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               156     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 1     167  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               166     167  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 4     145  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               141     145  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1                 3     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0               251     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     186  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               186     186  y_rate_len       
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
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              9246   11961  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2715   11961  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2060    2466  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               406    2466  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                33     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               189     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                12     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               196     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 2     213  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               211     213  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 4     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               218     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1                 5     266  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0               261     266  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     225  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               225     225  y_rate_len       
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
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              5741    7502  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1761    7502  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              1514    1797  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               283    1797  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                32     217  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               185     217  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                12     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               186     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                 2     213  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               211     213  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                 5     220  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               215     220  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1                 5     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0               240     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     210  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               210     210  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     214  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214     214  y_rate_len       
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
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2191    2769  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               578    2769  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                30     216  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               186     216  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                12     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               182     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                 2     210  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               208     210  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                 4     219  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               215     219  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1                 5     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0               230     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     212  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               212     212  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     213  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     213  y_rate_len       
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
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              2443    3134  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               691    3134  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                28     204  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               176     204  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                12     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               172     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                 4     220  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               216     220  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1                 4     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0               220     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     209  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     209  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     214  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214     214  y_rate_len       
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
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2450    3148  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               698    3148  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                30     204  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     204  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                12     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               163     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1                 4     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0               209     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     206  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     206  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     205  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               205     205  y_rate_len       
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
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2458    3148  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               690    3148  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                29     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               173     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                11     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               156     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1                 3     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0               199     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     213  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     213  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     192  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               192     192  y_rate_len       
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
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                29     200  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               171     200  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               154     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                 2     208  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               206     208  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1                 2     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0               187     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     214  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               214     214  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     192  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               192     192  y_rate_len       
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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
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
![](/tmp/833eef49-3473-4e20-b5eb-51b9a69484a3/5212d2cb-c524-4139-b007-0500df8ee03e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/833eef49-3473-4e20-b5eb-51b9a69484a3/5212d2cb-c524-4139-b007-0500df8ee03e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/833eef49-3473-4e20-b5eb-51b9a69484a3/5212d2cb-c524-4139-b007-0500df8ee03e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                3.3893170   3.2408401   3.5377938
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                3.3416150   3.2666098   3.4166201
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                4.1001464   3.4832446   4.7170481
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                3.8064228   3.6939940   3.9188516
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                3.3695026   3.3106339   3.4283713
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                2.9240440   2.7812046   3.0668835
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                3.2576854   3.1913681   3.3240028
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                3.2579271   3.2140165   3.3018377
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                3.1108635   3.0275178   3.1942091
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                3.1021736   3.0426937   3.1616534
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                3.6086209   3.5501702   3.6670716
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                3.5825556   3.4745781   3.6905331
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                3.6633078   3.6498621   3.6767534
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                3.6766858   3.6539793   3.6993923
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                3.0917713   3.0384192   3.1451234
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                2.9357176   2.8105903   3.0608448
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.9726731   1.7580555   2.1872908
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.9174759   1.8644539   1.9704979
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                2.3223975   1.9862237   2.6585713
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                2.1344653   2.0521326   2.2167981
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                2.3622909   2.0228505   2.7017313
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                2.0104898   1.9431975   2.0777821
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.8959468   1.8172862   1.9746075
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                2.0175913   1.4898496   2.5453330
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                2.0123653   1.9459774   2.0787532
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.9526626   1.9133559   1.9919692
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                1.9608199   1.8889538   2.0326860
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                2.0045344   1.9556831   2.0533857
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                1.7338087   1.6881076   1.7795099
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                1.6611934   1.5821262   1.7402606
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.9192943   1.9041009   1.9344877
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.9173849   1.8930549   1.9417148
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.8823663   1.8494645   1.9152682
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.9684118   1.8902771   2.0465465
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.2643760   1.1607586   1.3679935
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.2536631   1.2089299   1.2983963
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                1.3156032   1.0749115   1.5562950
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                1.4864946   1.4019345   1.5710547
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                1.2396783   1.0117486   1.4676080
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    NA                1.3547135   1.3095232   1.3999037
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                1.2198364   1.1255361   1.3141367
6-9 months     ki0047075b-MAL-ED         PERU         0                    NA                1.3220832   1.2664382   1.3777282
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                1.1144238   0.9844462   1.2444013
6-9 months     ki1000109-EE              PAKISTAN     0                    NA                1.2194058   1.0438676   1.3949439
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.2109523   1.1268945   1.2950101
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.0649253   0.7601232   1.3697273
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.2533917   1.2005990   1.3061844
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.2928321   1.2641256   1.3215385
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                1.4694519   1.3566393   1.5822645
6-9 months     ki1101329-Keneba          GAMBIA       0                    NA                1.3708199   1.3095887   1.4320511
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                1.3144508   1.2728812   1.3560204
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                1.2997800   1.1939801   1.4055798
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                1.4732515   1.2702604   1.6762426
6-9 months     ki1148112-LCNI-5          MALAWI       0                    NA                1.4335992   1.3671197   1.5000786
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.3243596   1.3009358   1.3477835
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.3270606   1.2806926   1.3734286
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.9169948   0.8162556   1.0177339
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.9956100   0.9530377   1.0381823
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                1.1791129   0.8665181   1.4917077
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                1.3075223   1.2301431   1.3849015
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                1.0867030   0.9036721   1.2697339
9-12 months    ki0047075b-MAL-ED         PERU         0                    NA                1.0987691   1.0467589   1.1507794
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                0.8435058   0.7523586   0.9346530
9-12 months    ki1000109-EE              PAKISTAN     0                    NA                0.8866775   0.6533943   1.1199607
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.9762588   0.9017504   1.0507673
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.3559211   1.0361250   1.6757171
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.0250666   0.9689929   1.0811402
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.0597347   1.0291517   1.0903177
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                0.9699742   0.8954003   1.0445482
9-12 months    ki1101329-Keneba          GAMBIA       0                    NA                0.9888908   0.9358082   1.0419733
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.9915438   0.9568757   1.0262118
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                1.0373006   0.9505716   1.1240295
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.9597051   0.7340663   1.1853439
9-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.8718743   0.6806639   1.0630846
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.0693105   1.0471026   1.0915183
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.0655744   1.0268355   1.1043134
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.9370641   0.8380745   1.0360537
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.9182147   0.8720789   0.9643505
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                1.2825775   1.0432794   1.5218757
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                1.1321915   1.0710261   1.1933569
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                0.9994382   0.9109531   1.0879233
12-15 months   ki1000109-EE              PAKISTAN     0                    NA                1.1691763   0.8641761   1.4741764
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.8475489   0.7723789   0.9227190
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5882719   0.3290880   0.8474557
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.9647016   0.9186764   1.0107269
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.9575376   0.9265009   0.9885744
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                0.9615291   0.9133934   1.0096649
12-15 months   ki1101329-Keneba          GAMBIA       0                    NA                0.9336067   0.8943445   0.9728689
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8744271   0.8460027   0.9028515
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8580947   0.8000102   0.9161791
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.9309109   0.9119653   0.9498564
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.9681033   0.9262551   1.0099515
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.9268248   0.8431381   1.0105115
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8085966   0.7670232   0.8501700
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.9736823   0.6849684   1.2623962
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                1.0011745   0.9402736   1.0620754
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.8276007   0.7021974   0.9530041
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8429471   0.7991561   0.8867381
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                0.8264950   0.7398782   0.9131119
15-18 months   ki1000109-EE              PAKISTAN     0                    NA                0.9035877   0.8122406   0.9949348
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.8867079   0.8293956   0.9440202
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.0927792   0.5595774   1.6259809
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8267594   0.7739703   0.8795485
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8662404   0.8392278   0.8932531
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8991263   0.8367162   0.9615364
15-18 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8764261   0.8377050   0.9151473
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.7809860   0.7410107   0.8209612
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6919674   0.6457909   0.7381440
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.8594510   0.8396298   0.8792722
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.8623543   0.8248654   0.8998433
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.7476438   0.6276689   0.8676187
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8314516   0.7946274   0.8682759
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.8728019   0.7300557   1.0155481
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.9254952   0.8502775   1.0007128
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.6943747   0.5519923   0.8367570
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8135873   0.7744237   0.8527509
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                0.7829057   0.6977684   0.8680431
18-21 months   ki1000109-EE              PAKISTAN     0                    NA                0.8103374   0.7102740   0.9104008
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8055727   0.7559707   0.8551746
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8528056   0.8255862   0.8800250
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8222222   0.7563445   0.8880999
18-21 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8107384   0.7660796   0.8553973
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8969125   0.8539874   0.9398376
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.9362162   0.8875349   0.9848975
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.7108615   0.4400220   0.9817010
18-21 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.8769679   0.7953834   0.9585523
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.7782964   0.6777374   0.8788554
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.7720043   0.7323656   0.8116429
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.8002241   0.6800972   0.9203509
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.7990727   0.7525076   0.8456378
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                1.0103156   0.7162814   1.3043497
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.7809671   0.7390545   0.8228797
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7474793   0.6967550   0.7982036
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.7708611   0.7415300   0.8001922
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.6976432   0.6286391   0.7666474
21-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.7269667   0.6854023   0.7685310
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.7854573   0.7362038   0.8347108
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8272332   0.7051734   0.9492931
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.7361596   0.5985076   0.8738115
21-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.7329474   0.6556922   0.8102026


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                3.3482498   3.2804281   3.4160715
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                3.3522434   3.2847848   3.4197021
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                3.1044617   3.0557519   3.1531714
0-3 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                3.5982617   3.5465367   3.6499867
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                3.6664276   3.6538579   3.6789973
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                3.0659983   3.0164756   3.1155211
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                1.9247979   1.8735932   1.9760025
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                2.0171026   1.9506965   2.0835088
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                1.9051097   1.8384221   1.9717974
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                1.9931730   1.9526530   2.0336930
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                1.7086613   1.6690533   1.7482692
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                1.9190532   1.9057476   1.9323587
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                1.8947099   1.8645495   1.9248703
6-9 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                1.2541293   1.2135456   1.2947130
6-9 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
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
12-15 months   ki1000109-EE              PAKISTAN     NA                   NA                1.0223758   0.9334119   1.1113396
12-15 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.8406400   0.7684485   0.9128315
12-15 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.9424871   0.9117122   0.9732620
12-15 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.8704063   0.8447703   0.8960424
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.9393119   0.9219119   0.9567119
15-18 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.8230330   0.7852223   0.8608436
15-18 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.8425951   0.7997829   0.8854074
15-18 months   ki1000109-EE              PAKISTAN     NA                   NA                0.8381757   0.7627800   0.9135715
15-18 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.8909184   0.8304593   0.9513775
15-18 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.8848169   0.8522726   0.9173611
15-18 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.7603933   0.7281594   0.7926271
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.8612746   0.8433730   0.8791761
18-21 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.8195860   0.7845702   0.8546019
18-21 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.8108531   0.7724296   0.8492765
18-21 months   ki1000109-EE              PAKISTAN     NA                   NA                0.7870620   0.7131718   0.8609522
18-21 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.8142039   0.7785744   0.8498334
18-21 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.9058703   0.8708102   0.9409303
18-21 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
21-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.7717324   0.7354003   0.8080644
21-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.7862274   0.7444562   0.8279985
21-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.7172946   0.6823819   0.7522072
21-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.7949572   0.7486969   0.8412176
21-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0477020   -0.2140326    0.1186287
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.2937235   -0.9207865    0.3333394
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.4454586   -0.5939152   -0.2970019
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0002417   -0.0788924    0.0793757
0-3 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0086899   -0.1102873    0.0929075
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0260653   -0.1484793    0.0963487
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0133780   -0.0103495    0.0371055
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1560537   -0.2907756   -0.0213318
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0551972   -0.2770174    0.1666230
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1879322   -0.5326017    0.1567374
3-6 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.3518011   -0.6978474   -0.0057548
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.1216445   -0.4499236    0.6932125
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0597027   -0.1369142    0.0175088
3-6 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       0                    1                  0.0437145   -0.0431445    0.1305735
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0726153   -0.1640247    0.0187940
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0019094   -0.0296425    0.0258237
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0860455    0.0012912    0.1707997
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0107130   -0.1236994    0.1022734
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    1                  0.1708913   -0.0847901    0.4265727
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.1150352   -0.1173312    0.3474015
6-9 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU         0                    1                  0.1022468   -0.0072471    0.2117407
6-9 months     ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN     0                    1                  0.1049820   -0.1134392    0.3234031
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.1460270   -0.4785521    0.1864982
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0394403   -0.0205546    0.0994353
6-9 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0986320   -0.2280763    0.0308123
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0146708   -0.1273417    0.0980001
6-9 months     ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5          MALAWI       0                    1                 -0.0396523   -0.2563527    0.1770480
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0027009   -0.0480403    0.0534422
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0786152   -0.0309034    0.1881339
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    1                  0.1284094   -0.1940156    0.4508344
9-12 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU         0                    1                  0.0120661   -0.1782110    0.2023432
9-12 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN     0                    1                  0.0431716   -0.2072856    0.2936289
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.3796622    0.0973657    0.6619588
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0346681   -0.0287817    0.0981180
9-12 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA       0                    1                  0.0189165   -0.0729484    0.1107814
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0457568   -0.0477162    0.1392298
9-12 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0878309   -0.3966438    0.2209821
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0037360   -0.0481634    0.0406913
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0188494   -0.1280079    0.0903091
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1503860   -0.3969537    0.0961817
12-15 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN     0                    1                  0.1697381   -0.1478382    0.4873144
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.2592771   -0.5410201    0.0224660
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0071640   -0.0624140    0.0480860
12-15 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0279224   -0.0897374    0.0338926
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0163325   -0.0811264    0.0484615
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0371924   -0.0083252    0.0827100
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1182282   -0.2117057   -0.0247507
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0274922   -0.2677910    0.3227754
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0153464   -0.1174830    0.1481758
15-18 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN     0                    1                  0.0770926   -0.0487913    0.2029766
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.2060712   -0.3184693    0.7306118
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0394810   -0.0198668    0.0988288
15-18 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0227001   -0.0958000    0.0503997
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0890185   -0.1502067   -0.0278304
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0029033   -0.0380565    0.0438631
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0838078   -0.0417776    0.2093933
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0526933   -0.1096825    0.2150690
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.1192127   -0.0284576    0.2668829
18-21 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN     0                    1                  0.0274317   -0.1039496    0.1588129
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0472329   -0.0092992    0.1037649
18-21 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0114838   -0.0913593    0.0683917
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0393037   -0.0254362    0.1040435
18-21 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1661064   -0.1187378    0.4509505
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0062921   -0.1150312    0.1024469
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0011514   -0.1320827    0.1297800
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.2293485   -0.5263548    0.0676578
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0233818   -0.0352702    0.0820337
21-24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0293234   -0.0518716    0.1105185
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0417760   -0.0902377    0.1737896
21-24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5          MALAWI       0                    1                 -0.0032121   -0.1607112    0.1542869


### Parameter: PAR


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0410672   -0.1838776    0.1017432
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.2811096   -0.8813136    0.3190943
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0172592   -0.0279700   -0.0065484
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0000044   -0.0595418    0.0595330
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0064018   -0.0753848    0.0625812
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0103591   -0.0428950    0.0221767
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0031198   -0.0022689    0.0085086
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0257729   -0.0469573   -0.0045886
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0478753   -0.2447001    0.1489495
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1763160   -0.5044021    0.1517702
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.3451883   -0.6826324   -0.0077441
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0091629   -0.0111747    0.0295005
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0466196   -0.1059314    0.0126923
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                 0.0323531   -0.0300080    0.0947143
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0251474   -0.0502816   -0.0000132
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0002411   -0.0067590    0.0062768
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0123436   -0.0006235    0.0253106
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0102468   -0.1086218    0.0881282
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1675127   -0.0747160    0.4097414
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1124208   -0.1141478    0.3389893
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.1001601   -0.0066119    0.2069321
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0116647   -0.0144891    0.0378184
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0008870   -0.0169575    0.0151834
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0290268   -0.0177154    0.0757689
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0651596   -0.1583931    0.0280739
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0004209   -0.0284815    0.0276398
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                -0.0359911   -0.2206058    0.1486235
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0007718   -0.0097024    0.0112460
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0678176   -0.0280748    0.1637100
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1191430   -0.1896970    0.4279831
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0118094   -0.1737109    0.1973297
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0049059   -0.0238483    0.0336600
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0063687   -0.0031400    0.0158774
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0249084   -0.0240065    0.0738233
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0119021   -0.0513317    0.0751360
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0066486   -0.0159333    0.0292305
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0109293   -0.2126639    0.2345226
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0003541   -0.0095644    0.0102726
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0170729   -0.1146358    0.0804900
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1404002   -0.3723425    0.0915422
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0229376   -0.0239780    0.0698531
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0069089   -0.0163630    0.0025452
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0049516   -0.0471473    0.0372442
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0190420   -0.0604898    0.0224057
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0040208   -0.0198312    0.0117897
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0084010   -0.0013430    0.0181450
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1037918   -0.1838296   -0.0237540
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0284291   -0.2489416    0.3057997
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0149944   -0.1145146    0.1445034
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0116807   -0.0096621    0.0330235
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0042105   -0.0123389    0.0207598
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0293404   -0.0156676    0.0743483
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0143094   -0.0630919    0.0344731
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0205927   -0.0361135   -0.0050719
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0018236   -0.0068937    0.0105408
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0719423   -0.0379325    0.1818170
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0432739   -0.1098901    0.1964379
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1164784   -0.0275197    0.2604765
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0041563   -0.0160395    0.0243522
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0337650   -0.0096922    0.0772222
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0080183   -0.0612455    0.0452089
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0089578   -0.0063409    0.0242565
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.1311158   -0.0878515    0.3500832
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0065640   -0.1006805    0.0875525
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0040722   -0.1282938    0.1201494
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2240882   -0.5137054    0.0655290
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0156598   -0.0292855    0.0606051
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0196513   -0.0355194    0.0748220
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0094999   -0.0205528    0.0395527
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0019027   -0.1321681    0.1283628
