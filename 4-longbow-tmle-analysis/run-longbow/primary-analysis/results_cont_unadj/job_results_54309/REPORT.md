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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthlen      n_cell      n
-------------  -------------------------  -----------------------------  -----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37    216
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm           102    216
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        77    216
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           29     62
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            17     62
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16     62
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8     42
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm            19     42
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15     42
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8     27
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            12     27
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7     27
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm           49    218
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm            84    218
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        85    218
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           36    102
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            25    102
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        41    102
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32    119
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            37    119
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        50    119
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13     83
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            35     83
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35     83
0-3 months     ki1000108-IRC              INDIA                          >=50 cm          138    377
0-3 months     ki1000108-IRC              INDIA                          <48 cm           104    377
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm       135    377
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm           19    202
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm           137    202
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm        46    202
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm           11     32
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm            12     32
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         9     32
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm           48    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           205    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       136    389
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          125    550
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           217    550
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       208    550
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          154    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           228    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       258    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          156    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           278    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       287    721
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm          617   1254
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm           232   1254
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       405   1254
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           88    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           270    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       151    509
0-3 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0     11
0-3 months     ki1114097-CMIN             BANGLADESH                     <48 cm             5     11
0-3 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         6     11
0-3 months     ki1114097-CONTENT          PERU                           >=50 cm            1      2
0-3 months     ki1114097-CONTENT          PERU                           <48 cm             1      2
0-3 months     ki1114097-CONTENT          PERU                           [48-50) cm         0      2
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm         6875   7539
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm            80   7539
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm       584   7539
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2371   7982
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2487   7982
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3124   7982
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          192    356
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm            62    356
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       102    356
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm         1385   6465
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm          2688   6465
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2392   6465
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          530   9382
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          6805   9382
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      2047   9382
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          183    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           302    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       151    636
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           35    203
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm            94    203
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        74    203
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           28     59
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            15     59
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16     59
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8     41
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm            18     41
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15     41
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8     26
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            11     26
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7     26
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm           48    211
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm            84    211
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        79    211
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34     92
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20     92
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38     92
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31    113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            35    113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        47    113
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12     87
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            44     87
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31     87
3-6 months     ki1000108-IRC              INDIA                          >=50 cm          138    379
3-6 months     ki1000108-IRC              INDIA                          <48 cm           106    379
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm       135    379
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm           17    175
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm           118    175
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm        40    175
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm           10     23
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm             6     23
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         7     23
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm           41    347
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           180    347
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       126    347
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          118    505
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           193    505
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       194    505
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          142    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           210    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       246    598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           264    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       278    695
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm          477    959
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm           171    959
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       311    959
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           81    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           243    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       145    469
3-6 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0      9
3-6 months     ki1114097-CMIN             BANGLADESH                     <48 cm             3      9
3-6 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      9
3-6 months     ki1114097-CONTENT          PERU                           >=50 cm            1      2
3-6 months     ki1114097-CONTENT          PERU                           <48 cm             1      2
3-6 months     ki1114097-CONTENT          PERU                           [48-50) cm         0      2
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm         6123   6696
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm            73   6696
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm       500   6696
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1811   6109
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1884   6109
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2414   6109
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          159    302
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm            52    302
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm        91    302
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm         1293   5975
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm          2452   5975
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2230   5975
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          294   5219
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          3749   5219
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1176   5219
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          121    410
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           179    410
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       110    410
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37    197
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm            88    197
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        72    197
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           25     53
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            14     53
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        14     53
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8     41
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm            18     41
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15     41
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8     26
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            11     26
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7     26
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm           41    192
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm            81    192
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        70    192
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34     86
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            18     86
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        34     86
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30    108
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34    108
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44    108
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12     86
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            41     86
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        33     86
6-9 months     ki1000108-IRC              INDIA                          >=50 cm          142    389
6-9 months     ki1000108-IRC              INDIA                          <48 cm           109    389
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm       138    389
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm           20    194
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm           131    194
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm        43    194
6-9 months     ki1000109-ResPak           PAKISTAN                       >=50 cm            8     20
6-9 months     ki1000109-ResPak           PAKISTAN                       <48 cm             4     20
6-9 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         8     20
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm           43    349
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           187    349
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       119    349
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          108    480
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           187    480
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       185    480
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          134    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           199    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       232    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          160    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           257    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       271    688
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm          293    574
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm            95    574
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       186    574
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           84    480
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           244    480
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       152    480
6-9 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0      8
6-9 months     ki1114097-CMIN             BANGLADESH                     <48 cm             4      8
6-9 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         4      8
6-9 months     ki1114097-CONTENT          PERU                           >=50 cm            1      2
6-9 months     ki1114097-CONTENT          PERU                           <48 cm             1      2
6-9 months     ki1114097-CONTENT          PERU                           [48-50) cm         0      2
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm         5745   6262
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm            62   6262
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm       455   6262
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1748   5860
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1805   5860
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2307   5860
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          146    284
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm            56    284
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm        82    284
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm         1162   5274
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm          2167   5274
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm      1945   5274
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          190    673
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           300    673
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       183    673
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           38    198
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm            88    198
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        72    198
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           25     52
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            13     52
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        14     52
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            7     40
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm            18     40
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        15     40
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            8     26
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            11     26
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7     26
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm           40    183
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm            76    183
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        67    183
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           31     83
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            19     83
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        33     83
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31    109
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            33    109
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45    109
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12     89
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            40     89
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        37     89
9-12 months    ki1000108-IRC              INDIA                          >=50 cm          139    382
9-12 months    ki1000108-IRC              INDIA                          <48 cm           108    382
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm       135    382
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm           21    214
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm           145    214
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm        48    214
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            8     21
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm             6     21
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         7     21
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm           47    371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           196    371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       128    371
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          107    466
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm           183    466
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       176    466
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          137    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           203    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       226    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           261    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       260    674
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm          295    568
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm            90    568
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       183    568
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm           74    468
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm           244    468
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       150    468
9-12 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0      7
9-12 months    ki1114097-CMIN             BANGLADESH                     <48 cm             3      7
9-12 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         4      7
9-12 months    ki1114097-CONTENT          PERU                           >=50 cm            1      2
9-12 months    ki1114097-CONTENT          PERU                           <48 cm             1      2
9-12 months    ki1114097-CONTENT          PERU                           [48-50) cm         0      2
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm         5743   6264
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm            59   6264
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm       462   6264
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1736   5860
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1835   5860
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2289   5860
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          159    298
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm            59    298
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm        80    298
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm          993   4531
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm          1853   4531
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm      1685   4531
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          194    728
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           337    728
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       197    728
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           36    186
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            82    186
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68    186
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           22     47
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            12     47
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        13     47
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            7     40
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18     40
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15     40
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8     26
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11     26
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7     26
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm           38    175
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm            70    175
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        67    175
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           28     83
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20     83
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35     83
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32    111
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34    111
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45    111
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14     93
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            44     93
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35     93
12-15 months   ki1000108-IRC              INDIA                          >=50 cm          138    374
12-15 months   ki1000108-IRC              INDIA                          <48 cm           106    374
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm       130    374
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm           21    194
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm           134    194
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm        39    194
12-15 months   ki1000109-ResPak           PAKISTAN                       >=50 cm            5     14
12-15 months   ki1000109-ResPak           PAKISTAN                       <48 cm             4     14
12-15 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm         5     14
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm           49    376
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm           201    376
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       126    376
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          105    445
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           172    445
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       168    445
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          134    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           188    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       210    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          151    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           252    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       257    660
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm          456    888
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm           149    888
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       283    888
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           71    468
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           252    468
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       145    468
12-15 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0      7
12-15 months   ki1114097-CMIN             BANGLADESH                     <48 cm             2      7
12-15 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         5      7
12-15 months   ki1114097-CONTENT          PERU                           >=50 cm            1      2
12-15 months   ki1114097-CONTENT          PERU                           <48 cm             1      2
12-15 months   ki1114097-CONTENT          PERU                           [48-50) cm         0      2
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm          259    283
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm             2    283
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        22    283
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          632   2513
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           922   2513
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       959   2513
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          130    256
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm            50    256
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm        76    256
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          197    737
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           351    737
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       189    737
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           36    186
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            83    186
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        67    186
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           22     44
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             9     44
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        13     44
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6     39
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18     39
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15     39
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8     26
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11     26
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7     26
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm           37    165
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm            68    165
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        60    165
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           30     85
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20     85
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35     85
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30    107
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34    107
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        43    107
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14     91
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            46     91
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31     91
15-18 months   ki1000108-IRC              INDIA                          >=50 cm          137    366
15-18 months   ki1000108-IRC              INDIA                          <48 cm           102    366
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm       127    366
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm           21    180
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm           120    180
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm        39    180
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm           43    360
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm           198    360
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       119    360
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          101    432
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           167    432
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       164    432
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          132    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           185    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       211    528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          143    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           231    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       230    604
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm          463    886
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm           148    886
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       275    886
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           82    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           251    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       147    480
15-18 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0      6
15-18 months   ki1114097-CMIN             BANGLADESH                     <48 cm             3      6
15-18 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         3      6
15-18 months   ki1114097-CONTENT          PERU                           >=50 cm            1      2
15-18 months   ki1114097-CONTENT          PERU                           <48 cm             1      2
15-18 months   ki1114097-CONTENT          PERU                           [48-50) cm         0      2
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm           29     37
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm             1     37
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         7     37
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          480   2012
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           779   2012
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       753   2012
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          114    231
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm            47    231
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm        70    231
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          212    754
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           353    754
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       189    754
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37    186
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            81    186
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68    186
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           20     41
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             9     41
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12     41
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6     39
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18     39
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15     39
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8     26
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11     26
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7     26
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm           36    162
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm            68    162
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        58    162
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32     88
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21     88
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35     88
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29    102
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34    102
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        39    102
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14     82
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            39     82
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        29     82
18-21 months   ki1000108-IRC              INDIA                          >=50 cm          132    362
18-21 months   ki1000108-IRC              INDIA                          <48 cm           102    362
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm       128    362
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm           18    165
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm           104    165
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm        43    165
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           93    407
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           156    407
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       158    407
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          130    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           192    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       219    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          129    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           209    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       208    546
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm          447    869
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm           145    869
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       277    869
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           79    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           228    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       138    445
18-21 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0      7
18-21 months   ki1114097-CMIN             BANGLADESH                     <48 cm             4      7
18-21 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         3      7
18-21 months   ki1114097-CONTENT          PERU                           >=50 cm            1      2
18-21 months   ki1114097-CONTENT          PERU                           <48 cm             1      2
18-21 months   ki1114097-CONTENT          PERU                           [48-50) cm         0      2
18-21 months   ki1119695-PROBIT           BELARUS                        >=50 cm           22     23
18-21 months   ki1119695-PROBIT           BELARUS                        <48 cm             0     23
18-21 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         1     23
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          361   1568
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           624   1568
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       583   1568
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          109    225
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm            48    225
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm        68    225
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           38    184
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            79    184
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        67    184
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           19     41
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            10     41
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12     41
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6     39
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18     39
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15     39
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8     26
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11     26
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7     26
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           33    154
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm            66    154
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        55    154
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32     89
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21     89
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        36     89
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29    101
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            33    101
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        39    101
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14     83
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            38     83
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31     83
21-24 months   ki1000108-IRC              INDIA                          >=50 cm          133    371
21-24 months   ki1000108-IRC              INDIA                          <48 cm           105    371
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm       133    371
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm            6     70
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm            46     70
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm        18     70
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           94    396
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           151    396
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       151    396
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          108    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           173    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       190    471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          121    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           190    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       179    490
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          403    788
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm           137    788
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       248    788
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           61    341
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           169    341
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       111    341
21-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0      1
21-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             0      1
21-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         1      1
21-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm           29     32
21-24 months   ki1119695-PROBIT           BELARUS                        <48 cm             0     32
21-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         3     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          215   1144
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           501   1144
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       428   1144
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          112    236
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm            49    236
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm        75    236


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
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/08ad67a3-8c44-4440-939b-eb4d08afba34/81adea89-cf45-4b45-bf68-4514c98fc43f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/08ad67a3-8c44-4440-939b-eb4d08afba34/81adea89-cf45-4b45-bf68-4514c98fc43f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/08ad67a3-8c44-4440-939b-eb4d08afba34/81adea89-cf45-4b45-bf68-4514c98fc43f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.3029582   -0.3798251   -0.2260914
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0015073   -0.0508285    0.0478139
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.2137652   -0.2609060   -0.1666244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0051886   -0.0967006    0.1070779
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.3029864    0.1506381    0.4553347
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0784821   -0.0985323    0.2554964
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.3253719   -0.4158433   -0.2349006
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0581773   -0.1874750    0.0711204
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.3476902   -0.4454241   -0.2499563
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.2721301   -0.4298421   -0.1144181
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0052574   -0.1105562    0.1210709
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.1332710   -0.3403514    0.0738094
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.3757111   -0.4444985   -0.3069237
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.1794382   -0.2273615   -0.1315150
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.3021587   -0.3539228   -0.2503946
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.4011640   -0.5129778   -0.2893502
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.1382508   -0.2647033   -0.0117982
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.2474557   -0.3469101   -0.1480013
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3255032   -0.4068942   -0.2441123
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0062663   -0.0810929    0.0936256
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.2069204   -0.2716432   -0.1421976
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.4138748   -0.6669972   -0.1607523
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1196052   -0.0470004    0.2862107
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1566709   -0.2906356   -0.0227063
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.5878937   -0.6703619   -0.5054255
0-3 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.0814214   -0.0190166    0.1818595
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.1761875   -0.2460098   -0.1063653
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.5938908   -0.8249138   -0.3628679
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.1571319   -0.2201199   -0.0941439
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.4022270   -0.4578961   -0.3465579
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.7919298   -1.1254546   -0.4584050
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -0.1113599   -0.4344243    0.2117045
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.3898188   -0.7991363    0.0194986
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.4679773   -0.5132717   -0.4226829
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.0256165   -0.0422891    0.0935221
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.1684353   -0.2293128   -0.1075578
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.4290725   -0.4799217   -0.3782233
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.1094979   -0.1512408   -0.0677550
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.2534493   -0.2922467   -0.2146520
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.2658198   -0.3027575   -0.2288821
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.1229088   -0.1499069   -0.0959106
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.1991716   -0.2254381   -0.1729052
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.3653650   -0.3986372   -0.3320927
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.1323398   -0.1600738   -0.1046059
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.2541867   -0.2786736   -0.2296998
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.4473755   -0.4761754   -0.4185755
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0583551   -0.0047826    0.1214928
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2355844   -0.2658070   -0.2053619
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.1965138   -0.2522304   -0.1407971
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.0497152    0.0146067    0.0848238
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0814557   -0.1194286   -0.0434829
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.4858625   -0.5735234   -0.3982017
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.0214400   -0.0856938    0.0428137
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.2537992   -0.3245258   -0.1830726
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4182724   -0.4356436   -0.4009013
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1161658    0.0993496    0.1329819
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.1333450   -0.1472519   -0.1194381
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.6512276   -0.6907750   -0.6116802
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.4180502   -0.5033693   -0.3327312
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.5259284   -0.5792187   -0.4726381
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1996784   -0.2135662   -0.1857907
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                 0.0367078    0.0261201    0.0472954
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0922344   -0.1024348   -0.0820340
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1729701   -0.2026155   -0.1433248
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.0978503    0.0895635    0.1061371
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0432502   -0.0555013   -0.0309992
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9279801   -1.0299964   -0.8259637
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.0494232    0.0025570    0.0962895
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.1610208   -0.2193736   -0.1026680
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0534116   -0.1128605    0.0060374
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.0102606   -0.0279867    0.0485078
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0295423   -0.0690061    0.0099216
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0290552   -0.1280803    0.0699699
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0342046   -0.0722571    0.1406663
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0253760   -0.1463355    0.0955835
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0649493   -0.2308455    0.1009469
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.0196847   -0.1010767    0.1404461
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0813062   -0.1463460   -0.0162665
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0457218   -0.2262854    0.1348419
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0946415    0.0090903    0.1801926
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0602236   -0.1708302    0.0503830
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0779523   -0.1436145   -0.0122900
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.0466455   -0.0111035    0.1043944
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.0245169   -0.0318894    0.0809233
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0823830   -0.2007148    0.0359489
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.0185491   -0.0949339    0.1320322
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0013928   -0.0873196    0.0845341
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1192018   -0.1935597   -0.0448439
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0571171   -0.1392907    0.0250565
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0677407   -0.1371519    0.0016705
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3013660   -0.4433721   -0.1593599
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0081255   -0.1402892    0.1240382
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0731847   -0.2203124    0.0739430
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0788464   -0.1348847   -0.0228081
3-6 months     ki1000108-IRC              INDIA                          <48 cm               NA                -0.0259425   -0.0819820    0.0300969
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0252250   -0.0740540    0.0236039
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0445237   -0.0490710    0.1381185
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.0885093    0.0492888    0.1277299
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.0119389   -0.0596028    0.0834807
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.0363448   -0.2471585    0.1744690
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.0222826   -0.2451979    0.2897631
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                 0.2147007   -0.0584337    0.4878351
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0849778   -0.1674349   -0.0025207
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0369358   -0.0683628   -0.0055087
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                 0.0028972   -0.0585406    0.0643351
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0736467   -0.1199201   -0.0273734
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0419100   -0.0813247   -0.0024953
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0512216   -0.0843613   -0.0180818
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0889677   -0.1208402   -0.0570952
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.0098100   -0.0181518    0.0377719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0225621   -0.0456413    0.0005171
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0069365   -0.0418759    0.0280028
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0742694    0.0451126    0.1034263
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.0002234   -0.0239104    0.0243572
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0671675   -0.0974124   -0.0369225
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0267242   -0.0163675    0.0698159
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0316203   -0.0690096    0.0057689
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2434358   -0.2851554   -0.2017162
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.1119573   -0.1377165   -0.0861980
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.1984249   -0.2296273   -0.1672225
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0434619    0.0116465    0.0752773
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.1565003    0.1072025    0.2057980
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.0800848    0.0523266    0.1078429
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0207932   -0.0370756   -0.0045107
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0274831    0.0100265    0.0449397
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0083542   -0.0229361    0.0062278
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1908204   -0.2229910   -0.1586498
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0618611   -0.1243163    0.0005940
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1063877   -0.1436667   -0.0691088
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1047795   -0.1173276   -0.0922314
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0217719   -0.0309684   -0.0125754
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0641233   -0.0735040   -0.0547425
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1007762   -0.1335373   -0.0680151
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.0167499    0.0080019    0.0254979
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0347535   -0.0489580   -0.0205490
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0019692   -0.0312397    0.0351781
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.0045659   -0.0494797    0.0586115
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0509333   -0.0981361   -0.0037306
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0974543   -0.1363648   -0.0585438
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0633846   -0.0938527   -0.0329165
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0620054   -0.0912263   -0.0327845
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0004263   -0.1009126    0.1017652
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.0290691   -0.1064217    0.0482836
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0066830   -0.1087800    0.0954140
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1388221   -0.2278379   -0.0498064
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0868318   -0.2213258    0.0476621
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0312451   -0.1182528    0.0557627
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0143206   -0.1466152    0.1179739
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0721172   -0.1569221    0.0126877
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0890289   -0.1482843   -0.0297735
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0539105   -0.1090811    0.0012600
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0264866   -0.0704663    0.0174931
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0340106   -0.0823078    0.0142867
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0670051   -0.1221491   -0.0118611
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.1811155    0.0839041    0.2783270
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0380151   -0.0923514    0.0163211
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0898469   -0.1613450   -0.0183489
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0088634   -0.1503266    0.1325998
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.1020800   -0.1635810   -0.0405790
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0417693   -0.2228796    0.1393411
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0353839   -0.1356584    0.0648906
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0301082   -0.1371957    0.0769793
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0398206   -0.0741226   -0.0055186
6-9 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.0370063   -0.0061286    0.0801412
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0361232   -0.0738005    0.0015540
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.1250500   -0.1914006   -0.0586994
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0987916   -0.1318488   -0.0657343
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0797380   -0.1245488   -0.0349273
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0978149   -0.2058731    0.0102433
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0680387   -0.1002864   -0.0357909
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0942625   -0.1319738   -0.0565512
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0810352   -0.1188127   -0.0432577
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0592441   -0.0895910   -0.0288972
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0550272   -0.0833099   -0.0267444
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0588645   -0.0800438   -0.0376852
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0684538   -0.0858085   -0.0510991
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0568783   -0.0749033   -0.0388534
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0423709   -0.0673245   -0.0174172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0155760   -0.0373166    0.0061646
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0398373   -0.0598502   -0.0198244
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0181560   -0.0232430    0.0595549
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0645826   -0.1068626   -0.0223027
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0172631   -0.0657950    0.0312688
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0715757   -0.1124773   -0.0306741
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.0274983   -0.0559886    0.0009919
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0538055   -0.0747369   -0.0328742
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0540509    0.0327862    0.0753156
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.1546133    0.0988521    0.2103745
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.1240159    0.0827386    0.1652932
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0381725   -0.0531825   -0.0231626
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0168120   -0.0325294   -0.0010946
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0385605   -0.0517738   -0.0253473
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1505398   -0.1779670   -0.1231126
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0808196   -0.1244471   -0.0371921
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1346885   -0.1685309   -0.1008460
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1042128   -0.1149948   -0.0934307
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0836996   -0.0919795   -0.0754198
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.1057637   -0.1142897   -0.0972378
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0650767   -0.1045041   -0.0256493
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0313956   -0.0558809   -0.0069103
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0476847   -0.0832782   -0.0120912
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.1374389   -0.1770702   -0.0978077
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0624433   -0.0893353   -0.0355513
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0965151   -0.1215106   -0.0715197
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0031372   -0.0872485    0.0809740
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0797097   -0.0281626    0.1875820
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0019860   -0.1844860    0.1884579
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0454700   -0.1197669    0.0288269
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0747340   -0.1387158   -0.0107521
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0647863   -0.1093723   -0.0202003
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1199535   -0.1728029   -0.0671041
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0697601   -0.1218979   -0.0176223
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.1411722   -0.1852919   -0.0970524
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0784849   -0.1355085   -0.0214613
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0204972   -0.0577011    0.0167066
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0352379   -0.0741912    0.0037154
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1007981   -0.1722635   -0.0293328
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0939064   -0.1800426   -0.0077702
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0461586   -0.1162435    0.0239263
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1721975   -0.2370217   -0.1073733
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.1772239   -0.3132885   -0.0411594
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.1589477   -0.2162594   -0.1016360
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0120497   -0.3165611    0.3406605
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0979602   -0.1935468   -0.0023737
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1165739   -0.2076721   -0.0254757
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0374073   -0.0661622   -0.0086524
9-12 months    ki1000108-IRC              INDIA                          <48 cm               NA                -0.0255360   -0.0604172    0.0093452
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0444959   -0.0728884   -0.0161034
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.1346066   -0.1844621   -0.0847512
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0965811   -0.1185351   -0.0746272
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.1186870   -0.1566503   -0.0807237
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0562573    0.0037071    0.1088075
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.0962892   -0.0950597    0.2876381
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                 0.0477122   -0.1245773    0.2200017
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0939750   -0.1720467   -0.0159032
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0627341   -0.0961509   -0.0293172
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.1165041   -0.1258368   -0.1071715
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0505636   -0.0793360   -0.0217912
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0419880   -0.0657714   -0.0182047
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0378486   -0.0621121   -0.0135850
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0679866   -0.0925214   -0.0434517
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0486650   -0.0653548   -0.0319752
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0729710   -0.0904050   -0.0555370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0538797   -0.0746070   -0.0331523
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0314363   -0.0502599   -0.0126128
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0256515   -0.0427955   -0.0085075
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1205913   -0.1555191   -0.0856635
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0778379   -0.1127182   -0.0429576
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0995497   -0.1313823   -0.0677171
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0953714   -0.1232881   -0.0674548
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.0786953   -0.0999792   -0.0574114
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0745037   -0.0948457   -0.0541617
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0306108    0.0056472    0.0555744
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.0830598    0.0582437    0.1078759
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.0694247    0.0403841    0.0984653
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0664319   -0.0789411   -0.0539227
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0435982   -0.0577869   -0.0294095
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0665072   -0.0786656   -0.0543487
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0877154   -0.1087543   -0.0666765
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0783944   -0.1134765   -0.0433122
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0708708   -0.1077687   -0.0339729
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0743697   -0.0853072   -0.0634321
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0918401   -0.1001177   -0.0835626
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0877678   -0.0961611   -0.0793745
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0441356   -0.0741271   -0.0141442
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0526184   -0.0719395   -0.0332974
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0784850   -0.1091967   -0.0477733
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0466734   -0.0757259   -0.0176209
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0595570   -0.0859573   -0.0331566
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0652105   -0.0924092   -0.0380118
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0475909   -0.1063551    0.0111734
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.0442957   -0.1560113    0.0674200
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0370842   -0.1579311    0.0837627
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1331540   -0.2572189   -0.0090891
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0684495   -0.1242361   -0.0126629
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0562242   -0.1033751   -0.0090732
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0913121   -0.1673708   -0.0152534
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0996959   -0.1234486   -0.0759433
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.0154929   -0.0547908    0.0857767
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0825854   -0.1237103   -0.0414606
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0512837   -0.0882631   -0.0143042
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0677791   -0.0946384   -0.0409199
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0985727   -0.1924553   -0.0046900
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0457315   -0.1069008    0.0154379
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0706188   -0.1235137   -0.0177240
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1008810   -0.1639004   -0.0378617
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0749907   -0.1415432   -0.0084381
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0653513   -0.1277173   -0.0029852
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0665003   -0.1948795    0.0618789
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0765384   -0.1425954   -0.0104815
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1199613   -0.1771550   -0.0627677
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0586489   -0.0891199   -0.0281779
12-15 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.0401476   -0.0741180   -0.0061772
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0434982   -0.0664049   -0.0205914
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0405844   -0.0990330    0.0178641
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.0164341   -0.0018739    0.0347421
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0236459   -0.0612917    0.0139999
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0253329   -0.0918150    0.0411492
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0746549   -0.0928116   -0.0564982
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.1049973   -0.1491461   -0.0608484
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1449847   -0.1736938   -0.1162755
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.1072318   -0.1429489   -0.0715146
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.1325980   -0.1536790   -0.1115170
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0553345   -0.0745581   -0.0361110
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0466659   -0.0641723   -0.0291596
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0265547   -0.0424018   -0.0107075
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0673062   -0.0857096   -0.0489029
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0291184   -0.0454460   -0.0127907
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0303409   -0.0448457   -0.0158361
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0592725   -0.0806495   -0.0378955
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0220706   -0.0519066    0.0077654
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0517154   -0.0705051   -0.0329256
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0584672   -0.0850829   -0.0318515
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.0678336   -0.0838916   -0.0517756
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0681554   -0.0849543   -0.0513565
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0744110   -0.0925032   -0.0563188
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0595046   -0.0786993   -0.0403099
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0561796   -0.0734067   -0.0389524
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1197094   -0.1447746   -0.0946441
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.1046545   -0.1483680   -0.0609410
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1117566   -0.1507553   -0.0727579
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0665584   -0.0866215   -0.0464953
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0350708   -0.0542879   -0.0158537
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0531023   -0.0792609   -0.0269438
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0668741   -0.0930758   -0.0406725
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0406724   -0.0648392   -0.0165056
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0427538   -0.0652165   -0.0202912
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0303088   -0.0859121    0.0252945
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0140754   -0.0456916    0.0738425
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0602148   -0.1110954   -0.0093342
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0325660   -0.1230412    0.0579092
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0434292   -0.0824832   -0.0043752
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0453430   -0.0852287   -0.0054572
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0516812   -0.1471918    0.0438294
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0194057   -0.0840196    0.0452083
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0948689   -0.1650048   -0.0247331
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0544247   -0.0846880   -0.0241613
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0148858   -0.0455919    0.0158203
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0278973   -0.0583880    0.0025934
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0106128   -0.0687184    0.0474928
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0361136   -0.1000156    0.0277883
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0226477   -0.0753055    0.0300101
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0678908   -0.1325921   -0.0031895
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0833236   -0.1380365   -0.0286106
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0574371   -0.0986692   -0.0162050
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1470035   -0.2352802   -0.0587268
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0798886   -0.1423835   -0.0173936
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0993829   -0.1530359   -0.0457298
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0575507   -0.0814088   -0.0336926
15-18 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.0201223   -0.0554959    0.0152514
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0287357   -0.0496054   -0.0078660
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0817733   -0.1276252   -0.0359214
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0186388   -0.0337931   -0.0034846
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0327605   -0.0555722   -0.0099487
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0004202   -0.1140035    0.1131632
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.0051764   -0.0152401    0.0255930
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                 0.0172058   -0.0316198    0.0660314
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0671589   -0.0939450   -0.0403728
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0419773   -0.0675135   -0.0164411
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0648095   -0.0888581   -0.0407610
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0471421   -0.0649293   -0.0293550
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0318206   -0.0468493   -0.0167919
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0368072   -0.0502155   -0.0233988
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0225037   -0.0394348   -0.0055725
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0055839   -0.0196271    0.0084593
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0248006   -0.0377377   -0.0118635
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0242345   -0.0454413   -0.0030278
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0408817   -0.0738306   -0.0079328
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0295138   -0.0485954   -0.0104323
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0880323   -0.1260753   -0.0499892
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.0578591   -0.0762377   -0.0394804
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0772679   -0.0926663   -0.0618694
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0590556   -0.0799572   -0.0381540
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0591498   -0.0765633   -0.0417363
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0688921   -0.0881138   -0.0496705
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0607897   -0.0869109   -0.0346684
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0348502   -0.0888131    0.0191127
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0502897   -0.0824338   -0.0181456
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0296162   -0.0553030   -0.0039294
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0451945   -0.0626389   -0.0277501
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0366266   -0.0628121   -0.0104410
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0198013   -0.0495650    0.0099623
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0212752   -0.0421567   -0.0003936
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0097735   -0.0284597    0.0089126
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0430603   -0.0916221    0.0055015
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.0300780   -0.0611738    0.0010177
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0003813   -0.0614446    0.0622073
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0250926   -0.0303548    0.0805400
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.0150384   -0.0180075    0.0480843
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.0092634   -0.0283645    0.0468912
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0197562   -0.0560855    0.0955979
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0099738   -0.0312562    0.0512037
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0388787   -0.1169673    0.0392100
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0243636   -0.0616796    0.0129525
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0138258   -0.0404196    0.0127679
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0049191   -0.0303510    0.0205127
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0046274   -0.0673486    0.0580938
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0433494   -0.0883304    0.0016317
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0391021   -0.0886588    0.0104545
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0024009   -0.0601879    0.0649896
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0581092   -0.1157032   -0.0005152
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0531002   -0.0982398   -0.0079606
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1727375   -0.2107375   -0.1347376
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0551509   -0.1254335    0.0151316
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0236258   -0.1026186    0.0553670
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0644783   -0.0886044   -0.0403523
18-21 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.0288402   -0.0512239   -0.0064566
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0204366   -0.0439558    0.0030825
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0427540   -0.0788411   -0.0066670
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0232446   -0.0382316   -0.0082575
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0280801   -0.0486665   -0.0074937
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0370645   -0.0640473   -0.0100817
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0326363   -0.0530798   -0.0121927
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0395890   -0.0597848   -0.0193932
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0195209   -0.0364840   -0.0025578
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0007734   -0.0141203    0.0125735
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0147593   -0.0276144   -0.0019041
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0470622   -0.0618089   -0.0323154
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0097309   -0.0228827    0.0034209
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0344527   -0.0476905   -0.0212148
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0203787   -0.0411881    0.0004306
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0183237   -0.0537888    0.0171414
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0062901   -0.0281737    0.0155934
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0121120   -0.0334651    0.0576891
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.0164802    0.0023985    0.0305619
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.0161187    0.0015958    0.0306416
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0975948   -0.1231877   -0.0720019
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0663419   -0.0852528   -0.0474309
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0554786   -0.0743758   -0.0365815
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0300406   -0.0538845   -0.0061967
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0479773   -0.0852742   -0.0106804
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0005127   -0.0302758    0.0292503
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0304256    0.0021913    0.0586600
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.0293857    0.0082884    0.0504830
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.0196878   -0.0007502    0.0401257
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0372367   -0.0158004    0.0902738
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0001709   -0.0454743    0.0458162
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0491403   -0.0020872    0.1003678
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0113504   -0.0663568    0.0890575
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.0364153   -0.0084114    0.0812419
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.0292718   -0.0218704    0.0804139
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0354196   -0.0969377    0.0260985
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0149242   -0.0318549    0.0617034
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0402892   -0.0851263    0.0045480
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0690217    0.0246033    0.1134401
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.0473585    0.0249652    0.0697517
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.0453383    0.0157823    0.0748943
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0128256   -0.0201137    0.0457649
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.0264528   -0.0237248    0.0766305
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.0673725    0.0052862    0.1294588
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0039252   -0.0451258    0.0529761
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0531758    0.0037425    0.1026091
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0050316   -0.0462358    0.0361726
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0286548   -0.0433371    0.1006466
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.0428963   -0.0096607    0.0954533
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0412447   -0.1092696    0.0267801
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0196221   -0.0405661    0.0013219
21-24 months   ki1000108-IRC              INDIA                          <48 cm               NA                 0.0016799   -0.0257324    0.0290922
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0140571   -0.0389242    0.0108100
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0054154   -0.0473485    0.0365177
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0068989   -0.0276938    0.0138961
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.0081495   -0.0226860    0.0389849
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0278028    0.0061656    0.0494400
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.0379763    0.0177498    0.0582029
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.0484362    0.0289034    0.0679689
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0385543    0.0196080    0.0575006
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.0441008    0.0296898    0.0585117
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.0525422    0.0395133    0.0655711
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0606548    0.0455617    0.0757479
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0589970    0.0457087    0.0722852
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.0572333    0.0429333    0.0715334
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0028533   -0.0150996    0.0208063
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0202903   -0.0014028    0.0419835
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.0349037    0.0092897    0.0605177
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0279571   -0.0162059    0.0721202
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.0479433    0.0279677    0.0679189
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.0583444    0.0307804    0.0859084
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0352297    0.0034836    0.0669759
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0189161    0.0001373    0.0376949
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.0098970   -0.0095108    0.0293048
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0113483   -0.0327290    0.0100324
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0181255   -0.0554803    0.0192293
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0095318   -0.0352459    0.0161824


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1288107   -0.1645003   -0.0931211
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1057573    0.0215866    0.1899280
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.2124690   -0.2948399   -0.1300980
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.1128463   -0.2116291   -0.0140635
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2714043   -0.3044939   -0.2383148
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.2749398   -0.3421388   -0.2077408
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1725233   -0.2225329   -0.1225137
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0804539   -0.1873181    0.0264103
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2540269   -0.3077185   -0.2003353
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.4236224   -0.6503899   -0.1968549
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1031330   -0.1715896   -0.0346763
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2365683   -0.2634819   -0.2096547
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2854099   -0.3086816   -0.2621381
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4629578   -0.5523760   -0.3735396
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402392   -0.1504678   -0.1300106
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5747177   -0.6062873   -0.5431481
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0616410   -0.0685327   -0.0547493
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0517655    0.0441695    0.0593615
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2817746   -0.3395565   -0.2239928
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0152268   -0.0404775    0.0100239
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0119744   -0.0757352    0.0517864
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0337772   -0.1019162    0.0343619
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0097583   -0.0683446    0.0878612
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0100159   -0.0252133    0.0452451
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0269887   -0.0891098    0.0351323
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0785678   -0.1223800   -0.0347556
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0717545   -0.1612872    0.0177782
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0449501   -0.0761141   -0.0137861
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0667346    0.0339823    0.0994870
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0553545   -0.0937023    0.2044112
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0281483   -0.0461872   -0.0101094
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0529028   -0.0754199   -0.0303858
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0388978   -0.0598050   -0.0179906
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0474289    0.0166123    0.0782456
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009896   -0.0102485    0.0082694
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1431739   -0.1669161   -0.1194317
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0555413   -0.0614176   -0.0496651
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0014760   -0.0091912    0.0062393
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0110905   -0.0402179    0.0180369
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0692794   -0.0881554   -0.0504034
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0092429   -0.0679017    0.0494159
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0766397   -0.1470005   -0.0062788
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0588868   -0.1166939   -0.0010797
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0350859   -0.0632862   -0.0068856
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0036117   -0.0456412    0.0384177
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693360   -0.1247146   -0.0139573
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0342505   -0.1021710    0.0336700
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0169816   -0.0391805    0.0052173
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0972754   -0.1227055   -0.0718453
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0806490   -0.0982008   -0.0630973
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0625218   -0.0807337   -0.0443099
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0070150   -0.0343815    0.0203516
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0435425   -0.0610734   -0.0260116
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0601303    0.0399815    0.0802790
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0317458   -0.0401487   -0.0233429
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1322154   -0.1516506   -0.1127801
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0963562   -0.1015702   -0.0911423
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0453337   -0.0634872   -0.0271802
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0892262   -0.1065065   -0.0719459
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0189538   -0.0515868    0.0894944
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0658824   -0.1017749   -0.0299899
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.1044306   -0.1366405   -0.0722206
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0385690   -0.0632221   -0.0139159
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0774964   -0.1211816   -0.0338112
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1682491   -0.2192291   -0.1172692
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0908657   -0.1637926   -0.0179388
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0365561   -0.0541057   -0.0190066
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1052709   -0.1231844   -0.0873575
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0648466   -0.0174111    0.1471043
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0852432   -0.0962180   -0.0742685
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0423937   -0.0570582   -0.0277292
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1070377   -0.1286360   -0.0854395
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0799887   -0.0936094   -0.0663679
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0339675    0.0110336    0.0569015
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0593111   -0.0668013   -0.0518210
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0813479   -0.0978724   -0.0648235
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0864969   -0.0916917   -0.0813021
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0573575   -0.0714649   -0.0432502
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0591303   -0.0754662   -0.0427943
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0438435   -0.0956997    0.0080128
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0751883   -0.1137557   -0.0366209
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0661039   -0.1033273   -0.0288806
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0643960   -0.0845824   -0.0442097
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0740521   -0.1157250   -0.0323792
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0785467   -0.1158631   -0.0412303
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0913693   -0.1342016   -0.0485370
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0481389   -0.0649672   -0.0313106
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                 0.0022047   -0.0141239    0.0185332
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0783952   -0.0858389   -0.0709516
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1257162   -0.1430906   -0.1083418
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0506219   -0.0641194   -0.0371243
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0665123   -0.0773867   -0.0556379
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0619845   -0.0726429   -0.0513262
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1144080   -0.1336298   -0.0951862
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0481116   -0.0614729   -0.0347502
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0464934   -0.0609701   -0.0320168
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0300661   -0.0648220    0.0046898
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0424940   -0.0699871   -0.0150009
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0496536   -0.0956074   -0.0036999
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0284835   -0.0467715   -0.0101956
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0215686   -0.0550502    0.0119130
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0685937   -0.0987634   -0.0384240
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0968548   -0.1360889   -0.0576208
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0371212   -0.0523570   -0.0218854
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0290642   -0.0418582   -0.0162702
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0084843   -0.0232946    0.0402633
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0565325   -0.0714057   -0.0416592
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0286539   -0.0423775   -0.0149304
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0627734   -0.0738240   -0.0517229
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0523301   -0.0719071   -0.0327532
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0386667   -0.0515980   -0.0257355
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0167771   -0.0296227   -0.0039315
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0274959   -0.0586170    0.0036252
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0143640   -0.0083881    0.0371161
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0001688   -0.0372942    0.0369565
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0129787   -0.0296379    0.0036804
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0275794   -0.0597867    0.0046279
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0389901   -0.0707574   -0.0072229
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0640776   -0.1095171   -0.0186380
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0388639   -0.0526645   -0.0250634
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0266330   -0.0382245   -0.0150416
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0363472   -0.0490347   -0.0236597
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0155450   -0.0296316   -0.0014584
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0694981   -0.0813876   -0.0576087
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0249431   -0.0417627   -0.0081236
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0260692    0.0129571    0.0391812
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0316802    0.0002791    0.0630814
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0298116   -0.0012564    0.0608797
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0154313   -0.0470551    0.0161925
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0512791    0.0340658    0.0684925
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0381049    0.0074832    0.0687266
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0165584   -0.0106055    0.0437223
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0090679   -0.0289298    0.0470656
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0115982   -0.0256273    0.0024308
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0029021   -0.0191776    0.0133733
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0395499    0.0276352    0.0514645
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0159718    0.0031459    0.0287977
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0477538    0.0321932    0.0633143
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0186078    0.0061089    0.0311066
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0121782   -0.0273456    0.0029893


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.3014509    0.2101213    0.3927805
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0891930   -0.0009777    0.1793638
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.2977978    0.1145181    0.4810774
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0732934   -0.1309503    0.2775371
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.2671947    0.1093880    0.4250014
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0223183   -0.1554985    0.1108620
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.2773875    0.0817198    0.4730552
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1388591   -0.1214395    0.3991577
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1962728    0.1124376    0.2801080
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0735524   -0.0125361    0.1596408
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.2629132    0.0941158    0.4317107
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1537083    0.0040637    0.3033529
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.3317695    0.2123705    0.4511686
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1185828    0.0145947    0.2225710
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.5334799    0.2304479    0.8365119
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2572038   -0.0291832    0.5435908
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.6693151    0.5393582    0.7992721
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.4117062    0.3036499    0.5197624
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.4367590    0.1973032    0.6762147
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1916639   -0.0459716    0.4292994
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.6805698    0.2162322    1.1449074
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.4021109   -0.1258849    0.9301067
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.4935938    0.3833546    0.6038330
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.2995420    0.2193734    0.3797106
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.3195745    0.2537862    0.3853629
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.1756232    0.1116632    0.2395831
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1429110    0.0971586    0.1886635
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0666482    0.0213236    0.1119727
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.2330251    0.1897098    0.2763404
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.1111783    0.0698666    0.1524899
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.5057306    0.4363346    0.5751265
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.2117910    0.1700437    0.2535383
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.2462290    0.1803734    0.3120845
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1150580    0.0476319    0.1824842
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.4644225    0.3583808    0.5704642
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.2320633    0.1519593    0.3121673
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.5344382    0.5102610    0.5586155
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.2849274    0.2626753    0.3071796
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.2331774    0.1391383    0.3272164
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1252992    0.0589377    0.1916608
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.2363862    0.2189229    0.2538495
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1074440    0.0902127    0.1246754
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.2708205    0.2404902    0.3011507
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.1297199    0.0993679    0.1600720
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.9774033    0.8681006    1.0867060
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.7669593    0.6462001    0.8877184
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0636721   -0.0070175    0.1343618
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0238693   -0.0474860    0.0952245
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0632598   -0.0821364    0.2086561
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0036792   -0.1526447    0.1600032
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0846340   -0.1205607    0.2898287
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0163569   -0.1945470    0.1618332
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.1403632   -0.0594423    0.3401687
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0145019   -0.2262495    0.1972457
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1245977    0.0371537    0.2120418
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.1024692    0.0159059    0.1890325
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1009321   -0.0630216    0.2648859
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0809902   -0.0652488    0.2272292
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0620847   -0.0487377    0.1729070
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0514611   -0.0502592    0.1531814
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.2932405    0.0992483    0.4872327
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2281813    0.0237007    0.4326618
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0529038   -0.0263471    0.1321547
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0536213   -0.0207060    0.1279487
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0439856   -0.0574946    0.1454658
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0325848   -0.1503906    0.0852210
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0586273   -0.2819431    0.3991978
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.2510455   -0.0939832    0.5960741
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0480420   -0.0635989    0.1596830
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0878750    0.0642262    0.1115239
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0317367   -0.0290477    0.0925211
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0224252   -0.0344912    0.0793415
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0987777    0.0563782    0.1411773
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0664056    0.0270545    0.1057567
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0812060    0.0356991    0.1267129
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0071599   -0.0353041    0.0496240
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0938916    0.0412452    0.1465381
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0355471   -0.0125436    0.0836378
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.1314785    0.0824473    0.1805098
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0450109   -0.0070863    0.0971081
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.1130384    0.0650656    0.1610111
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0366229    0.0122529    0.0609928
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0482763    0.0244047    0.0721479
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0124390   -0.0094185    0.0342965
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.1289593    0.0587055    0.1992131
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0844327    0.0351918    0.1336736
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0830077    0.0674504    0.0985650
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0406563    0.0249894    0.0563232
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.1175261    0.0838575    0.1511946
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0660227    0.0287616    0.1032839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0025967   -0.0600192    0.0652125
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0529025   -0.1114668    0.0056618
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0340697   -0.0153503    0.0834897
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0354489   -0.0132120    0.0841099
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0294953   -0.1569826    0.0979920
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0071093   -0.1509612    0.1367427
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0519903   -0.1092934    0.2132739
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.1075771   -0.0168985    0.2320526
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0577966   -0.2149389    0.0993457
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0747082   -0.2196670    0.0702505
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0274239   -0.0431310    0.0979789
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0199000   -0.0534240    0.0932240
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.2481206    0.1363579    0.3598834
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0289900   -0.0484264    0.1064063
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0809836   -0.0775214    0.2394885
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0122331   -0.1065429    0.0820767
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0063853   -0.2006314    0.2134021
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0116611   -0.1987401    0.2220623
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0768269    0.0217157    0.1319381
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0036974   -0.0472556    0.0546503
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0262584   -0.0478711    0.1003879
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0453120   -0.0347531    0.1253770
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0297762   -0.1030340    0.1625864
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0035524   -0.1006509    0.1077556
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0217911   -0.0266659    0.0702481
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0260080   -0.0211837    0.0731997
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0095893   -0.0369708    0.0177922
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0019862   -0.0258250    0.0297973
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0267948   -0.0063011    0.0598907
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0025336   -0.0294539    0.0345211
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0827386   -0.1419118   -0.0235654
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0354191   -0.0992095    0.0283714
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0440774   -0.0057688    0.0939235
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0177702   -0.0281762    0.0637165
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.1005624    0.0408076    0.1603172
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0699650    0.0270168    0.1129132
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0213605   -0.0003728    0.0430938
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0003880   -0.0203852    0.0196092
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0697202    0.0181876    0.1212528
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0158514   -0.0277097    0.0594124
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0205131    0.0069187    0.0341076
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0015510   -0.0152967    0.0121947
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0336811   -0.0121377    0.0794999
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0173920   -0.0366823    0.0714662
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0749956    0.0271018    0.1228894
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0409238   -0.0059314    0.0877790
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0828470   -0.0539417    0.2196356
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0051232   -0.1994409    0.2096874
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0292640   -0.1273135    0.0687856
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0193162   -0.1059646    0.0673321
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0501934   -0.0240454    0.1244323
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0212186   -0.0900635    0.0476262
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0579877   -0.0100992    0.1260745
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0432471   -0.0258113    0.1123054
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0068917   -0.1050312    0.1188147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0546396   -0.0454564    0.1547355
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0050264   -0.1557439    0.1456910
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0132498   -0.0732765    0.0997762
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.1100099   -0.4522406    0.2322208
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1286236   -0.4696279    0.2123807
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0118713   -0.0333342    0.0570769
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0070886   -0.0474987    0.0333216
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0380255   -0.0164497    0.0925007
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0159196   -0.0467444    0.0785837
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0400319   -0.1584018    0.2384656
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.0085451   -0.1886706    0.1715804
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0312409   -0.0710469    0.1335287
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0225292   -0.0968604    0.0518020
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0085755   -0.0287541    0.0459051
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0127150   -0.0249224    0.0503524
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0193215   -0.0103518    0.0489949
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0049844   -0.0350827    0.0251138
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0224433   -0.0055558    0.0504424
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0282282    0.0013295    0.0551269
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0427534   -0.0066084    0.0921152
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0210416   -0.0262159    0.0682991
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0166761   -0.0184286    0.0517809
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0208678   -0.0136741    0.0554096
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0524490    0.0175668    0.0873311
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0388139    0.0035972    0.0740306
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0228337    0.0039181    0.0417493
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0000753   -0.0175197    0.0173691
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0093210   -0.0315861    0.0502282
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0168446   -0.0256300    0.0593192
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0174705   -0.0311872   -0.0037538
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0133981   -0.0271849    0.0003888
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0084828   -0.0457239    0.0287583
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0343493   -0.0768632    0.0081646
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0128836   -0.0521395    0.0263723
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0185371   -0.0583343    0.0212601
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0032952   -0.1229333    0.1295237
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0105067   -0.1238704    0.1448838
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0647045   -0.0713258    0.2007348
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0769298   -0.0557929    0.2096525
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0083838   -0.0880651    0.0712975
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1068051    0.0032448    0.2103653
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0313018   -0.0240041    0.0866076
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0148063   -0.0343127    0.0639253
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0528412   -0.0592107    0.1648932
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0279538   -0.0798043    0.1357120
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0258904   -0.0657649    0.1175456
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0355298   -0.0531323    0.1241918
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0100381   -0.1544152    0.1343389
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0534610   -0.1940040    0.0870819
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0185013   -0.0271328    0.0641354
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0151507   -0.0229702    0.0532715
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0570185   -0.0042303    0.1182674
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0169385   -0.0525845    0.0864615
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0493220   -0.1287378    0.0300938
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0796644   -0.1788597    0.0195310
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0377529   -0.0080720    0.0835779
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0123867   -0.0232311    0.0480044
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0086686   -0.0173318    0.0346690
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0287799    0.0038665    0.0536933
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0381879    0.0135855    0.0627902
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0369653    0.0135330    0.0603976
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0372019    0.0004982    0.0739056
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0075571   -0.0209039    0.0360181
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0093664   -0.0404510    0.0217183
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0096882   -0.0411619    0.0217856
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0149064   -0.0114709    0.0412838
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0182315   -0.0067506    0.0432135
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0150548   -0.0353350    0.0654447
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0079528   -0.0384063    0.0543119
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0314876    0.0045373    0.0584379
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0134561   -0.0184457    0.0453579
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0262018   -0.0094431    0.0618467
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0241203   -0.0103919    0.0586326
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0443842   -0.0372481    0.1260165
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0299060   -0.1052756    0.0454635
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0108632   -0.1094075    0.0876810
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0127770   -0.1116538    0.0860999
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0322755   -0.0830381    0.1475892
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0431877   -0.1616838    0.0753083
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0395389   -0.0035742    0.0826519
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0265274   -0.0164325    0.0694873
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.0255008   -0.1118705    0.0608689
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0120349   -0.0904511    0.0663813
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0154328   -0.1001663    0.0693007
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0104536   -0.0662689    0.0871761
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0671150   -0.0410442    0.1752741
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0476207   -0.0556819    0.1509233
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0374284   -0.0052390    0.0800958
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0288150   -0.0028829    0.0605128
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0631344    0.0148432    0.1114257
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0490128   -0.0022002    0.1002258
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0055966   -0.1070528    0.1182460
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0176260   -0.0882353    0.1234873
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0251816   -0.0118264    0.0621896
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0023494   -0.0336482    0.0383469
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0153215   -0.0079647    0.0386077
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0103350   -0.0119398    0.0326098
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0169198   -0.0050774    0.0389169
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0022969   -0.0236050    0.0190111
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0166472   -0.0558308    0.0225365
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0052793   -0.0338071    0.0232485
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0301732   -0.0120766    0.0724231
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0107644   -0.0302769    0.0518057
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0000942   -0.0272991    0.0271107
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0098366   -0.0382328    0.0185597
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0259394   -0.0340132    0.0858921
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0105000   -0.0309194    0.0519193
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0155783   -0.0464893    0.0153327
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0070104   -0.0432810    0.0292603
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0014739   -0.0378320    0.0348843
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0100278   -0.0251155    0.0451711
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0129823   -0.0446822    0.0706468
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0434416   -0.0351758    0.1220591
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0100543   -0.0746023    0.0544938
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0158292   -0.0828387    0.0511803
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0097824   -0.0961067    0.0765418
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0586349   -0.1674917    0.0502219
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0105377   -0.0352850    0.0563604
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0194444   -0.0257139    0.0646027
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.0387220   -0.1159051    0.0384612
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0344747   -0.1144110    0.0454616
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0605100   -0.1455654    0.0245453
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0555011   -0.1326693    0.0216672
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.1175866    0.0376890    0.1974842
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1491118    0.0614541    0.2367694
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0356381    0.0027277    0.0685486
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0440417    0.0103487    0.0777347
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0195094   -0.0195660    0.0585848
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0146739   -0.0268721    0.0562200
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0044283   -0.0294245    0.0382810
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0025245   -0.0362282    0.0311793
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0187475   -0.0028369    0.0403319
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0047616   -0.0165222    0.0260455
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0373313    0.0175718    0.0570907
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0126095   -0.0072073    0.0324263
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0020550   -0.0390644    0.0431744
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0140886   -0.0161094    0.0442866
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0043682   -0.0433347    0.0520712
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0040067   -0.0438283    0.0518418
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0312530   -0.0005688    0.0630747
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0421162    0.0103026    0.0739297
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0179367   -0.0622040    0.0263306
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0295279   -0.0086083    0.0676641
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0010399   -0.0362858    0.0342060
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0107378   -0.0455931    0.0241174
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0370657   -0.1070402    0.0329087
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0119036   -0.0618337    0.0856410
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0250649   -0.0646449    0.1147746
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0179214   -0.0751050    0.1109479
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0503439   -0.0269398    0.1276275
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0048695   -0.0809934    0.0712543
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0216633   -0.0714071    0.0280806
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0236834   -0.0770365    0.0296697
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0136272   -0.0463960    0.0736505
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0545469   -0.0157361    0.1248299
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0492506   -0.0203888    0.1188900
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0089567   -0.0730175    0.0551040
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0142416   -0.0748935    0.1033767
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0698995   -0.1689460    0.0291470
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0213020   -0.0131956    0.0557996
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0055650   -0.0269469    0.0380769
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0014835   -0.0482896    0.0453226
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0135649   -0.0384852    0.0656149
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0101735   -0.0194454    0.0397925
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0206334   -0.0085162    0.0497830
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0055465   -0.0182577    0.0293506
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0139879   -0.0090059    0.0369816
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0016579   -0.0217671    0.0184513
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0034215   -0.0242132    0.0173702
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0174370   -0.0107215    0.0455955
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0320503    0.0007712    0.0633295
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0199862   -0.0284844    0.0684568
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0303873   -0.0216718    0.0824464
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0163136   -0.0531980    0.0205708
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0253327   -0.0625413    0.0118759
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0067772   -0.0498180    0.0362637
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0018166   -0.0316252    0.0352583


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1741475    0.1023279    0.2459670
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.1005687    0.0125091    0.1886282
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.1129030    0.0040364    0.2217695
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.1592838    0.0182465    0.3003211
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1043067    0.0434830    0.1651305
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1262242    0.0357098    0.2167386
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1529800    0.0783964    0.2275635
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3334209    0.0980052    0.5688365
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.3320666    0.2621935    0.4019397
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.3398639    0.1248891    0.5548388
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.3683074    0.0747335    0.6618813
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.3648443    0.2629407    0.4667479
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1925042    0.1463015    0.2387069
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0777796    0.0460063    0.1095529
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1341042    0.1035890    0.1646195
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1619656    0.1384113    0.1855199
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1647457    0.1131210    0.2163705
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0229047    0.0134158    0.0323937
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2780332    0.2629630    0.2931034
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0765099    0.0469527    0.1060671
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1380375    0.1254785    0.1505965
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.2247357    0.1966018    0.2528696
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.6462054    0.5609585    0.7314523
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0381848   -0.0161576    0.0925271
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0170808   -0.0504770    0.0846385
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0311721   -0.1151985    0.1775428
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0554801   -0.0810474    0.1920076
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0879681    0.0280434    0.1478929
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0553942   -0.0312766    0.1420651
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0406339   -0.0258111    0.1070790
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2296115    0.0792158    0.3800073
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0338963   -0.0088193    0.0766119
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0222109   -0.0679598    0.1123816
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0916992   -0.0756768    0.2590753
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0568295   -0.0141477    0.1278067
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0207439   -0.0198466    0.0613344
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0620052    0.0339654    0.0900450
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0337106    0.0026304    0.0647908
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0282697    0.0072487    0.0492907
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0820381    0.0434915    0.1205847
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0039670    0.0014580    0.0064761
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0198036    0.0058875    0.0337197
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0476465    0.0250886    0.0702045
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.0492382    0.0381100    0.0603665
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.0993002    0.0672230    0.1313774
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0130597   -0.0487292    0.0226098
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0281749   -0.0079030    0.0642528
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0096691   -0.0730896    0.0537513
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0621825   -0.0367227    0.1610876
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0445662   -0.1449312    0.0557989
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0188247   -0.0315648    0.0692141
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0633934    0.0143737    0.1124131
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0205110   -0.0525560    0.0935779
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0075188   -0.1605895    0.1756270
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0228390   -0.0056283    0.0513063
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0277746   -0.0365790    0.0921281
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0171658   -0.0852456    0.1195772
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0185134   -0.0149022    0.0519290
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0025619   -0.0213596    0.0162358
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0110071   -0.0112566    0.0332708
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0251709   -0.0518748    0.0015330
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0280332   -0.0093131    0.0653795
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0060794    0.0027707    0.0093880
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0064267   -0.0062815    0.0191349
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0183244   -0.0005578    0.0372067
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.0078565   -0.0017462    0.0174592
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0197430   -0.0120188    0.0515048
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0482128    0.0126266    0.0837989
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0220911   -0.0503526    0.0945347
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0204124   -0.0902428    0.0494181
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0155230   -0.0304306    0.0614766
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0399159   -0.0094598    0.0892917
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0233018   -0.0332721    0.0798757
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0039483   -0.0624663    0.0703630
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1029154   -0.3930599    0.1872291
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0008512   -0.0222377    0.0239400
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0293357   -0.0188165    0.0774880
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0085893   -0.0775724    0.0947510
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0087318   -0.0731346    0.0905981
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0081699   -0.0175736    0.0339134
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0049396   -0.0158191    0.0256982
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0195802    0.0007584    0.0384020
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0135536   -0.0069216    0.0340288
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0153828   -0.0114203    0.0421859
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0033567    0.0003008    0.0064127
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0071207   -0.0038278    0.0180692
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0063675   -0.0092322    0.0219671
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0121273   -0.0218319   -0.0024226
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0132219   -0.0389807    0.0125370
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0124569   -0.0404601    0.0155464
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0037474   -0.0501923    0.0576872
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0579657   -0.0492365    0.1651679
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0252082   -0.0348796    0.0852960
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0181894   -0.0187464    0.0551252
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0245206   -0.0433309    0.0923720
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0223343   -0.0331104    0.0777790
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0248690   -0.1404273    0.0906894
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0105100   -0.0124352    0.0334552
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0427891   -0.0114627    0.0970409
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0530623   -0.1269267    0.0208021
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0192685   -0.0078816    0.0464186
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0144238   -0.0024665    0.0313142
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0289749    0.0124323    0.0455175
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0086506   -0.0043814    0.0216826
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0080451   -0.0327778    0.0166876
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0124265   -0.0041954    0.0290484
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0053014   -0.0136633    0.0242661
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0184469    0.0003924    0.0365013
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0203807   -0.0047260    0.0454874
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0002427   -0.0345132    0.0349986
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0099280   -0.0900712    0.0702152
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0020276   -0.0729412    0.0769964
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0259411   -0.0030341    0.0549164
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0109557   -0.0569344    0.0350229
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0007029   -0.0531341    0.0517284
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0501487   -0.0331238    0.1334212
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0204295    0.0010592    0.0397998
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0527091    0.0105721    0.0948460
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0089045   -0.0859727    0.1037817
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0106264   -0.0139339    0.0351868
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0094984   -0.0058201    0.0248170
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0055963   -0.0092570    0.0204496
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0044194   -0.0173822    0.0085434
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0190747   -0.0142542    0.0524035
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0037179   -0.0224406    0.0150049
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0084595   -0.0113424    0.0282615
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0090505   -0.0301419    0.0120408
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0030242   -0.0234038    0.0294523
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0155644   -0.0164675    0.0475963
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0107286   -0.0621689    0.0407117
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0199250   -0.0798465    0.0399964
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0113848   -0.0210364    0.0438060
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0229520   -0.0688889    0.0229849
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0413910   -0.0933428    0.0105608
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1086600    0.0537448    0.1635751
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0256144    0.0069588    0.0442700
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0161210   -0.0178276    0.0500695
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0007173   -0.0228690    0.0243036
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0085810   -0.0061166    0.0232786
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0190934    0.0057054    0.0324815
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0048337   -0.0088035    0.0184710
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0034806   -0.0349584    0.0419196
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0280967    0.0058536    0.0503398
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0050975   -0.0122399    0.0224349
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0043565   -0.0296514    0.0209385
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0055564   -0.0400797    0.0289668
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0184613   -0.0532720    0.0901945
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0199883   -0.0295660    0.0695426
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0177426   -0.0554749    0.0199897
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0252793   -0.0099692    0.0605279
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0126333   -0.0293454    0.0546119
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0195868   -0.0894311    0.0502575
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0080239   -0.0098915    0.0259392
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0025133   -0.0389818    0.0440083
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0117471   -0.0079472    0.0314414
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0076799   -0.0087247    0.0240846
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0018927   -0.0154219    0.0116364
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0131185    0.0005828    0.0256541
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0197966   -0.0188649    0.0584582
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0166220   -0.0446439    0.0113999
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0008298   -0.0167451    0.0150854
