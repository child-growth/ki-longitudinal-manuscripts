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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                33     227  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               194     227  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 7     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               156     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 1     167  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               166     167  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 4     145  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               141     145  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1                 3     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0               251     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     186  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               186     186  y_rate_haz       
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
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              9246   11961  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2715   11961  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2060    2466  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               406    2466  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                33     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               189     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                12     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               196     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 2     213  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               211     213  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 4     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               218     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1                 5     266  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0               261     266  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     225  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               225     225  y_rate_haz       
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
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              5741    7502  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1761    7502  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              1514    1797  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               283    1797  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                32     217  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               185     217  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                12     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               186     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                 2     213  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               211     213  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                 5     220  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               215     220  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1                 5     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0               240     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     210  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               210     210  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     214  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214     214  y_rate_haz       
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
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              2191    2769  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               578    2769  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                30     216  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               186     216  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                12     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               182     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                 2     210  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               208     210  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                 4     219  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               215     219  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1                 5     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0               230     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     212  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               212     212  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     213  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213     213  y_rate_haz       
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
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              2443    3134  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               691    3134  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                28     204  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               176     204  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                12     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               172     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                 4     220  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               216     220  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1                 4     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0               220     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     209  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     209  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     214  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214     214  y_rate_haz       
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
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2450    3148  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               698    3148  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                30     204  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     204  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                12     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               163     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1                 4     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0               209     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     206  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     206  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     205  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               205     205  y_rate_haz       
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
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2458    3148  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               690    3148  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                29     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               173     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                11     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               156     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                 2     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               207     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1                 3     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0               199     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     213  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     213  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     192  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               192     192  y_rate_haz       
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
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                29     200  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               171     200  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               154     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                 2     208  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               206     208  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     218  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               213     218  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1                 2     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0               187     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     214  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               214     214  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     192  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               192     192  y_rate_haz       
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
![](/tmp/9a5e71b8-bf17-42be-a3e5-f5bf8b8499a3/e7239db7-f5bd-448b-9e77-916f2543d12d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9a5e71b8-bf17-42be-a3e5-f5bf8b8499a3/e7239db7-f5bd-448b-9e77-916f2543d12d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9a5e71b8-bf17-42be-a3e5-f5bf8b8499a3/e7239db7-f5bd-448b-9e77-916f2543d12d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0645487   -0.1512751    0.0221777
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1223909   -0.1606953   -0.0840866
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2966143   -0.0211040    0.6143325
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.1378398    0.0796403    0.1960393
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.1257104   -0.1530267   -0.0983942
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.3105682   -0.3875824   -0.2335540
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.1847015   -0.2167466   -0.1526564
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1896098   -0.2101977   -0.1690220
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.2779110   -0.3190286   -0.2367933
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.2861422   -0.3163148   -0.2559695
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0255582   -0.0544602    0.0033439
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0485483   -0.1023199    0.0052233
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0581829    0.0516106    0.0647551
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0642135    0.0532899    0.0751372
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.2329099   -0.2614806   -0.2043391
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.3015887   -0.3664780   -0.2366994
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0089754   -0.0812308    0.0632800
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0290479   -0.0538768   -0.0042190
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1389741   -0.0200286    0.2979768
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0551537    0.0174260    0.0928814
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.1763089    0.0068862    0.3457315
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                 0.0236519   -0.0080991    0.0554029
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0392874   -0.0742063   -0.0043685
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0493342   -0.1680670    0.2667354
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0009233   -0.0302110    0.0320576
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0349219   -0.0532830   -0.0165608
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0284290   -0.0618599    0.0050019
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0137393   -0.0366397    0.0091611
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.1520168   -0.1734784   -0.1305551
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1906871   -0.2290325   -0.1523417
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0037492   -0.0107164    0.0032181
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0033362   -0.0146852    0.0080129
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0171563   -0.0323485   -0.0019641
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0243878   -0.0111819    0.0599576
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0707473   -0.1151056   -0.0263890
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0666720   -0.0861023   -0.0472417
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0047505   -0.1404594    0.1309583
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0115099   -0.0251366    0.0481564
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0901638   -0.1918341    0.0115066
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0356189   -0.0553206   -0.0159172
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.0737873   -0.1136321   -0.0339426
6-9 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.0327407   -0.0574401   -0.0080413
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                -0.1102361   -0.1665884   -0.0538838
6-9 months     ki1000109-EE              PAKISTAN     0                    NA                -0.0939376   -0.1833491   -0.0045262
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0843619   -0.1216004   -0.0471234
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1655348   -0.3145653   -0.0165043
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0775633   -0.1001674   -0.0549591
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0576254   -0.0699777   -0.0452731
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                 0.0146067   -0.0337451    0.0629584
6-9 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0253411   -0.0525941    0.0019120
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0455109   -0.0635124   -0.0275093
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0507924   -0.0952894   -0.0062953
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                 0.0075362   -0.0665370    0.0816093
6-9 months     ki1148112-LCNI-5          MALAWI       0                    NA                 0.0078153   -0.0205757    0.0362063
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0290660   -0.0391552   -0.0189767
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0265037   -0.0471412   -0.0058662
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1007551   -0.1458478   -0.0556623
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0870977   -0.1049812   -0.0692143
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0343424   -0.1377835    0.0690986
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0118857   -0.0203637    0.0441352
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0353182   -0.1171395    0.0465032
9-12 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0420697   -0.0639794   -0.0201600
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                -0.1276355   -0.1664421   -0.0888290
9-12 months    ki1000109-EE              PAKISTAN     0                    NA                -0.1346832   -0.2415573   -0.0278091
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0905296   -0.1197786   -0.0612805
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0522216   -0.0596752    0.1641184
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0755172   -0.0980747   -0.0529597
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0596127   -0.0720676   -0.0471578
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1078693   -0.1382617   -0.0774770
9-12 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0958289   -0.1181366   -0.0735212
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0844737   -0.0987064   -0.0702410
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0713781   -0.1086540   -0.0341022
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0398989   -0.1252008    0.0454030
9-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                -0.1308002   -0.2081627   -0.0534378
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0539296   -0.0630828   -0.0447764
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0516023   -0.0682342   -0.0349704
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0588778   -0.0946112   -0.0231444
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0529073   -0.0707266   -0.0350881
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0044932   -0.1100635    0.1010772
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0071520   -0.0303003    0.0159963
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0016762   -0.0345630    0.0312106
12-15 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0416377   -0.0932971    0.1765724
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0780904   -0.1070778   -0.0491030
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1499139   -0.2572906   -0.0425372
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0378369   -0.0555831   -0.0200907
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0412060   -0.0532068   -0.0292051
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0437787   -0.0627657   -0.0247917
12-15 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0538465   -0.0694504   -0.0382425
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0693133   -0.0800393   -0.0585872
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0708395   -0.0926749   -0.0490040
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0499216   -0.0570735   -0.0427697
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0325577   -0.0487885   -0.0163269
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0133598   -0.0495042    0.0227846
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0529861   -0.0681766   -0.0377956
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0050002   -0.0814652    0.0914657
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0221384   -0.0439237   -0.0003531
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0623720   -0.1122360   -0.0125080
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0539038   -0.0697401   -0.0380676
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0239930   -0.0525465    0.0045604
15-18 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0267957   -0.0572607    0.0036694
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0173193   -0.0380203    0.0033816
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0450344   -0.1392428    0.2293117
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0482640   -0.0664274   -0.0301007
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0337522   -0.0436814   -0.0238231
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0276430   -0.0500950   -0.0051911
15-18 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0319230   -0.0462375   -0.0176085
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0599384   -0.0744245   -0.0454523
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0882241   -0.1050882   -0.0713600
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0334990   -0.0407899   -0.0262082
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0307274   -0.0446697   -0.0167850
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0216442   -0.0533277    0.0100392
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0107448   -0.0235278    0.0020382
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0528278   -0.0977936   -0.0078621
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0187465   -0.0446365    0.0071434
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0729293   -0.1201994   -0.0256593
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0295862   -0.0430048   -0.0161677
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0093635   -0.0349812    0.0162542
18-21 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0265882   -0.0706485    0.0174721
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0211879   -0.0383446   -0.0040312
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0069531   -0.0161839    0.0022777
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0218815   -0.0443987    0.0006358
18-21 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0236350   -0.0391176   -0.0081523
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0133274   -0.0016364    0.0282913
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0260559    0.0094020    0.0427097
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0460260   -0.1632002    0.0711482
18-21 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0012613   -0.0284567    0.0259340
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0378367    0.0037576    0.0719158
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0247383    0.0110814    0.0383952
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0115337   -0.0591635    0.0360961
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0173617    0.0005242    0.0341993
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0818375   -0.0062005    0.1698756
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0043644   -0.0097178    0.0184466
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0407761    0.0229023    0.0586499
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0478623    0.0379648    0.0577597
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0072332   -0.0150388    0.0295051
21-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0206813    0.0067653    0.0345974
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0437964    0.0271258    0.0604670
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0542663    0.0105928    0.0979399
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0146362   -0.0620456    0.0327732
21-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0111724   -0.0363249    0.0139801


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1184816   -0.1534627   -0.0835006
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.1347598   -0.1669848   -0.1025348
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.2849946   -0.3097468   -0.2602425
0-3 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0320017   -0.0574984   -0.0065051
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                 0.0596909    0.0535305    0.0658514
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.2441243   -0.2705116   -0.2177371
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0242637   -0.0483310   -0.0001965
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                 0.0265214   -0.0048238    0.0578666
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0357951   -0.0659472   -0.0056430
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.0174002   -0.0363928    0.0015925
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.1617717   -0.1805409   -0.1430025
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.0036992   -0.0098266    0.0024282
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0106594   -0.0245209    0.0032020
6-9 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0677541   -0.0853832   -0.0501249
6-9 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
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
12-15 months   ki1000109-EE              PAKISTAN     NA                   NA                 0.0041770   -0.0299533    0.0383073
12-15 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0801725   -0.1084262   -0.0519187
12-15 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0508881   -0.0630216   -0.0387547
12-15 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0700044   -0.0796323   -0.0603764
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0457929   -0.0524470   -0.0391387
15-18 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0465524   -0.0603507   -0.0327542
15-18 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0540981   -0.0695896   -0.0386065
15-18 months   ki1000109-EE              PAKISTAN     NA                   NA                -0.0244177   -0.0490831    0.0002477
15-18 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0159336   -0.0379140    0.0060468
15-18 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0301774   -0.0421851   -0.0181698
15-18 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0665082   -0.0782160   -0.0548005
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0322067   -0.0387357   -0.0256778
18-21 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0136918   -0.0255600   -0.0018237
18-21 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0305803   -0.0437450   -0.0174157
18-21 months   ki1000109-EE              PAKISTAN     NA                   NA                -0.0119733   -0.0348121    0.0108655
18-21 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0224639   -0.0348440   -0.0100838
18-21 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                 0.0165107    0.0043866    0.0286347
18-21 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
21-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                 0.0256240    0.0132472    0.0380008
21-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.0061413   -0.0078495    0.0201321
21-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                 0.0160955    0.0044320    0.0277591
21-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                 0.0465624    0.0306829    0.0624420
21-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0578422   -0.1527389    0.0370545
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1587745   -0.4817792    0.1642303
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.1848578   -0.2573389   -0.1123766
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0049084   -0.0430211    0.0332044
0-3 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0082312   -0.0585366    0.0420742
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0229901   -0.0840460    0.0380657
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0060307   -0.0053076    0.0173689
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0686789   -0.1389008    0.0015430
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0200725   -0.0965624    0.0564174
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0838204   -0.2476264    0.0799856
3-6 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         0                    1                 -0.1526569   -0.3250291    0.0197152
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0886216   -0.1456419    0.3228850
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0358452   -0.0718865    0.0001961
3-6 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       0                    1                  0.0146897   -0.0257686    0.0551481
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0386704   -0.0826846    0.0053439
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0004130   -0.0124506    0.0132766
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0415441    0.0026862    0.0804020
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0040753   -0.0444266    0.0525772
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0162605   -0.1251728    0.1576937
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL        0                    1                  0.0545449   -0.0490168    0.1581066
6-9 months     ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU         0                    1                  0.0410466   -0.0058327    0.0879259
6-9 months     ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN     0                    1                  0.0162985   -0.0893897    0.1219867
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0811729   -0.2268372    0.0644914
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0199379   -0.0057992    0.0456751
6-9 months     ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA       0                    1                 -0.0399478   -0.0957154    0.0158199
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0052815   -0.0529579    0.0423950
6-9 months     ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5          MALAWI       0                    1                  0.0002791   -0.0789068    0.0794650
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0025623   -0.0199649    0.0250895
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0136573   -0.0348990    0.0622136
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0462282   -0.0622847    0.1547410
9-12 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.0067516   -0.0914555    0.0779524
9-12 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN     0                    1                 -0.0070477   -0.1207491    0.1066537
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.1427512    0.0422034    0.2432990
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0159045   -0.0096872    0.0414962
9-12 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA       0                    1                  0.0120404   -0.0258863    0.0499671
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0130956   -0.0266414    0.0528326
9-12 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0909013   -0.2078482    0.0260455
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0023273   -0.0165107    0.0211653
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0059704   -0.0340787    0.0460196
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0026588   -0.1109023    0.1055846
12-15 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN     0                    1                  0.0433139   -0.0955707    0.1821984
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0718234   -0.1807653    0.0371184
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0033691   -0.0247363    0.0179981
12-15 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0100678   -0.0346570    0.0145214
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0015262   -0.0258801    0.0228278
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0173639   -0.0002364    0.0349642
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0396263   -0.0786554   -0.0005973
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0271386   -0.1163609    0.0620837
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0084682   -0.0438501    0.0607865
15-18 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN     0                    1                 -0.0028026   -0.0445569    0.0389516
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.0623537   -0.1184034    0.2431109
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0145118   -0.0061327    0.0351563
15-18 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0042800   -0.0308682    0.0223083
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0282857   -0.0506005   -0.0059710
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                  0.0027717   -0.0125760    0.0181193
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0108994   -0.0230995    0.0448983
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0340813   -0.0172331    0.0853957
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0433431   -0.0057946    0.0924808
18-21 months   ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN     0                    1                 -0.0172247   -0.0681912    0.0337417
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0142348   -0.0052174    0.0336870
18-21 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0017535   -0.0291941    0.0256871
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0127284   -0.0096829    0.0351397
18-21 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0447647   -0.0756562    0.1651856
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0130984   -0.0498143    0.0236175
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0288954   -0.0218328    0.0796236
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0774731   -0.1666304    0.0116841
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0070862   -0.0133285    0.0275009
21-24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA       0                    1                  0.0134482   -0.0129233    0.0398196
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0104699   -0.0364911    0.0574310
21-24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0034638   -0.0504089    0.0573365


### Parameter: PAR


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0539329   -0.1367798    0.0289140
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1519559   -0.4611291    0.1572172
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0090494   -0.0146012   -0.0034975
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0033387   -0.0320266    0.0253492
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0070837   -0.0411073    0.0269400
0-3 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0064436   -0.0226536    0.0097664
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0015081   -0.0010646    0.0040807
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0112145   -0.0224285   -0.0000004
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0152883   -0.0804273    0.0498507
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0792449   -0.2354199    0.0769300
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.1497875   -0.3178688    0.0182939
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0034923   -0.0063212    0.0133058
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0278858   -0.0556217   -0.0001499
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                 0.0110289   -0.0180060    0.0400637
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0097549   -0.0217043    0.0021945
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0000500   -0.0029772    0.0030771
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0064968    0.0004765    0.0125172
6-9 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0029933   -0.0392285    0.0452150
6-9 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0135339   -0.1208385    0.1479063
6-9 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0533052   -0.0476732    0.1542836
6-9 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0402089   -0.0055042    0.0859220
6-9 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0018109   -0.0100293    0.0136512
6-9 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0001472   -0.0062279    0.0065224
6-9 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0161369   -0.0038947    0.0361685
6-9 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0276963   -0.0675094    0.0121167
6-9 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0001483   -0.0119298    0.0122263
6-9 months     ki1148112-LCNI-5          MALAWI       1                    NA                 0.0020500   -0.0640668    0.0681668
6-9 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0004673   -0.0041692    0.0051037
9-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0111626   -0.0322240    0.0545491
9-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0425208   -0.0602627    0.1453044
9-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0066079   -0.0891944    0.0759785
9-12 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0008009   -0.0137388    0.0121370
9-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0031165   -0.0003309    0.0065639
9-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0124702   -0.0072406    0.0321810
9-12 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0076437   -0.0183350    0.0336224
9-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0048887   -0.0044641    0.0142414
9-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0653785   -0.1483080    0.0175510
9-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0010204   -0.0031634    0.0052042
12-15 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0048985   -0.0301305    0.0399274
12-15 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0014501   -0.1007851    0.1036854
12-15 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0058532   -0.0135283    0.0252347
12-15 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0020820   -0.0054357    0.0012716
12-15 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0030738   -0.0193508    0.0132031
12-15 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0071095   -0.0235395    0.0093206
12-15 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0006911   -0.0066070    0.0052248
12-15 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0041287    0.0002984    0.0079591
15-18 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0331926   -0.0675974    0.0012121
15-18 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0253424   -0.1086331    0.0579482
15-18 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0082739   -0.0427367    0.0592846
15-18 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0004246   -0.0067606    0.0059113
15-18 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0013857   -0.0044708    0.0072422
15-18 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0106203   -0.0049906    0.0262312
15-18 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0025344   -0.0200718    0.0150030
15-18 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0065699   -0.0121542   -0.0009855
15-18 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0012923   -0.0019373    0.0045219
18-21 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0079524   -0.0215115    0.0374163
18-21 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0324689   -0.0158666    0.0808043
18-21 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0423490   -0.0055680    0.0902660
18-21 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0026098   -0.0106230    0.0054034
18-21 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0102480   -0.0047396    0.0252357
18-21 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0005825   -0.0187648    0.0175999
18-21 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0031832   -0.0020619    0.0084283
18-21 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0367977   -0.0591193    0.1327147
21-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0122127   -0.0443017    0.0198763
21-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0280207   -0.0196728    0.0757143
21-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0756962   -0.1626382    0.0112457
21-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0054581   -0.0101910    0.0211072
21-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0088624   -0.0089926    0.0267173
21-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0027660   -0.0075983    0.0131304
21-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0030114   -0.0419338    0.0479566
