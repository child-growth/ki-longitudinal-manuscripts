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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mage       n_cell      n
-------------  -------------------------  -----------------------------  --------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)       166    243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20            35    243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           42    243
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)        99    168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20            30    168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30           39    168
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-30)       143    182
0-3 months     ki0047075b-MAL-ED          INDIA                          <20            23    182
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30           16    182
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-30)       119    156
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20             5    156
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30           32    156
0-3 months     ki0047075b-MAL-ED          PERU                           [20-30)       133    265
0-3 months     ki0047075b-MAL-ED          PERU                           <20            73    265
0-3 months     ki0047075b-MAL-ED          PERU                           >=30           59    265
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       108    211
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20            31    211
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           72    211
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       126    228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            12    228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           90    228
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        78     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20             6     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4     88
0-3 months     ki1000108-IRC              INDIA                          [20-30)       317    377
0-3 months     ki1000108-IRC              INDIA                          <20            33    377
0-3 months     ki1000108-IRC              INDIA                          >=30           27    377
0-3 months     ki1000109-EE               PAKISTAN                       [20-30)       119    301
0-3 months     ki1000109-EE               PAKISTAN                       <20             1    301
0-3 months     ki1000109-EE               PAKISTAN                       >=30          181    301
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)       295    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20            50    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30           44    389
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)       381    564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20            61    564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          122    564
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)       450    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20            73    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          117    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       468    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20           130    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          123    721
0-3 months     ki1101329-Keneba           GAMBIA                         [20-30)       586   1276
0-3 months     ki1101329-Keneba           GAMBIA                         <20           201   1276
0-3 months     ki1101329-Keneba           GAMBIA                         >=30          489   1276
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)       333    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <20            96    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=30           80    509
0-3 months     ki1119695-PROBIT           BELARUS                        [20-30)      5434   7539
0-3 months     ki1119695-PROBIT           BELARUS                        <20           754   7539
0-3 months     ki1119695-PROBIT           BELARUS                        >=30         1351   7539
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5283   7963
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20          1173   7963
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1507   7963
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-30)       160    356
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20            54    356
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30          142    356
0-3 months     ki1135781-COHORTS          INDIA                          [20-30)      3096   4601
0-3 months     ki1135781-COHORTS          INDIA                          <20           364   4601
0-3 months     ki1135781-COHORTS          INDIA                          >=30         1141   4601
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4857   9822
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20          4031   9822
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30          934   9822
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)       161    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20            32    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           38    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)       124    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20            37    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30           47    208
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-30)       175    228
3-6 months     ki0047075b-MAL-ED          INDIA                          <20            33    228
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30           20    228
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-30)       182    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20             5    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30           46    233
3-6 months     ki0047075b-MAL-ED          PERU                           [20-30)       133    267
3-6 months     ki0047075b-MAL-ED          PERU                           <20            74    267
3-6 months     ki0047075b-MAL-ED          PERU                           >=30           60    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       112    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20            41    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           90    243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       126    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          100    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       243    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20            27    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30           37    307
3-6 months     ki1000108-IRC              INDIA                          [20-30)       334    397
3-6 months     ki1000108-IRC              INDIA                          <20            35    397
3-6 months     ki1000108-IRC              INDIA                          >=30           28    397
3-6 months     ki1000109-EE               PAKISTAN                       [20-30)       110    278
3-6 months     ki1000109-EE               PAKISTAN                       <20             1    278
3-6 months     ki1000109-EE               PAKISTAN                       >=30          167    278
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)       266    349
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20            42    349
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30           41    349
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)       350    521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20            56    521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          115    521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)       421    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20            64    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          113    598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       450    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20           126    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          119    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1062   1650
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           121   1650
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          467   1650
3-6 months     ki1101329-Keneba           GAMBIA                         [20-30)       653   1394
3-6 months     ki1101329-Keneba           GAMBIA                         <20           185   1394
3-6 months     ki1101329-Keneba           GAMBIA                         >=30          556   1394
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)       314    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20            81    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30           74    469
3-6 months     ki1119695-PROBIT           BELARUS                        [20-30)      4838   6696
3-6 months     ki1119695-PROBIT           BELARUS                        <20           667   6696
3-6 months     ki1119695-PROBIT           BELARUS                        >=30         1191   6696
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      4076   6166
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20           886   6166
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1204   6166
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-30)       179    393
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20            55    393
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30          159    393
3-6 months     ki1135781-COHORTS          INDIA                          [20-30)      3161   4656
3-6 months     ki1135781-COHORTS          INDIA                          <20           347   4656
3-6 months     ki1135781-COHORTS          INDIA                          >=30         1148   4656
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      2918   6238
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20          2851   6238
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30          469   6238
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)       156    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <20            32    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           36    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)       120    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <20            34    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=30           44    198
6-9 months     ki0047075b-MAL-ED          INDIA                          [20-30)       174    228
6-9 months     ki0047075b-MAL-ED          INDIA                          <20            34    228
6-9 months     ki0047075b-MAL-ED          INDIA                          >=30           20    228
6-9 months     ki0047075b-MAL-ED          NEPAL                          [20-30)       181    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          <20             4    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=30           45    230
6-9 months     ki0047075b-MAL-ED          PERU                           [20-30)       119    245
6-9 months     ki0047075b-MAL-ED          PERU                           <20            70    245
6-9 months     ki0047075b-MAL-ED          PERU                           >=30           56    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       102    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           89    231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       114    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           98    225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       247    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20            28    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30           38    313
6-9 months     ki1000108-IRC              INDIA                          [20-30)       342    407
6-9 months     ki1000108-IRC              INDIA                          <20            36    407
6-9 months     ki1000108-IRC              INDIA                          >=30           29    407
6-9 months     ki1000109-EE               PAKISTAN                       [20-30)       122    302
6-9 months     ki1000109-EE               PAKISTAN                       <20             1    302
6-9 months     ki1000109-EE               PAKISTAN                       >=30          179    302
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)       268    351
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <20            45    351
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=30           38    351
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        53     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <20             6     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=30           15     74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)       337    496
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <20            51    496
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          108    496
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)       400    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <20            60    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          105    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       449    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20           120    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          119    688
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       947   1474
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           104   1474
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          423   1474
6-9 months     ki1101329-Keneba           GAMBIA                         [20-30)       434    903
6-9 months     ki1101329-Keneba           GAMBIA                         <20            96    903
6-9 months     ki1101329-Keneba           GAMBIA                         >=30          373    903
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       134    210
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <20            34    210
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=30           42    210
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)       317    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <20            87    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=30           77    481
6-9 months     ki1119695-PROBIT           BELARUS                        [20-30)      4522   6262
6-9 months     ki1119695-PROBIT           BELARUS                        <20           614   6262
6-9 months     ki1119695-PROBIT           BELARUS                        >=30         1126   6262
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      3900   5917
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20           858   5917
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1159   5917
6-9 months     ki1135781-COHORTS          GUATEMALA                      [20-30)       180    391
6-9 months     ki1135781-COHORTS          GUATEMALA                      <20            55    391
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=30          156    391
6-9 months     ki1135781-COHORTS          INDIA                          [20-30)      2875   4267
6-9 months     ki1135781-COHORTS          INDIA                          <20           297   4267
6-9 months     ki1135781-COHORTS          INDIA                          >=30         1095   4267
6-9 months     ki1148112-LCNI-5           MALAWI                         [20-30)       247    460
6-9 months     ki1148112-LCNI-5           MALAWI                         <20            81    460
6-9 months     ki1148112-LCNI-5           MALAWI                         >=30          132    460
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)       153    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20            33    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           39    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)       117    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <20            34    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30           43    194
9-12 months    ki0047075b-MAL-ED          INDIA                          [20-30)       171    225
9-12 months    ki0047075b-MAL-ED          INDIA                          <20            33    225
9-12 months    ki0047075b-MAL-ED          INDIA                          >=30           21    225
9-12 months    ki0047075b-MAL-ED          NEPAL                          [20-30)       180    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          <20             4    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=30           45    229
9-12 months    ki0047075b-MAL-ED          PERU                           [20-30)       116    235
9-12 months    ki0047075b-MAL-ED          PERU                           <20            65    235
9-12 months    ki0047075b-MAL-ED          PERU                           >=30           54    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       104    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           89    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       114    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           97    224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       252    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            27    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           38    317
9-12 months    ki1000108-IRC              INDIA                          [20-30)       337    400
9-12 months    ki1000108-IRC              INDIA                          <20            35    400
9-12 months    ki1000108-IRC              INDIA                          >=30           28    400
9-12 months    ki1000109-EE               PAKISTAN                       [20-30)       136    324
9-12 months    ki1000109-EE               PAKISTAN                       <20             1    324
9-12 months    ki1000109-EE               PAKISTAN                       >=30          187    324
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)       280    372
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20            52    372
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30           40    372
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        56     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20             6     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           15     77
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       324    480
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20            51    480
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          105    480
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       401    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20            62    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          103    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       439    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           119    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          116    674
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       693   1071
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            67   1071
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          311   1071
9-12 months    ki1101329-Keneba           GAMBIA                         [20-30)       402    879
9-12 months    ki1101329-Keneba           GAMBIA                         <20            91    879
9-12 months    ki1101329-Keneba           GAMBIA                         >=30          386    879
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       113    184
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            30    184
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           41    184
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       312    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <20            81    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30           76    469
9-12 months    ki1119695-PROBIT           BELARUS                        [20-30)      4528   6264
9-12 months    ki1119695-PROBIT           BELARUS                        <20           610   6264
9-12 months    ki1119695-PROBIT           BELARUS                        >=30         1126   6264
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      3898   5921
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20           867   5921
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1156   5921
9-12 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       201    437
9-12 months    ki1135781-COHORTS          GUATEMALA                      <20            64    437
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=30          172    437
9-12 months    ki1135781-COHORTS          INDIA                          [20-30)      2449   3669
9-12 months    ki1135781-COHORTS          INDIA                          <20           242   3669
9-12 months    ki1135781-COHORTS          INDIA                          >=30          978   3669
9-12 months    ki1148112-LCNI-5           MALAWI                         [20-30)       162    319
9-12 months    ki1148112-LCNI-5           MALAWI                         <20            54    319
9-12 months    ki1148112-LCNI-5           MALAWI                         >=30          103    319
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       144    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <20            30    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           38    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       111    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <20            33    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40    184
12-15 months   ki0047075b-MAL-ED          INDIA                          [20-30)       170    224
12-15 months   ki0047075b-MAL-ED          INDIA                          <20            33    224
12-15 months   ki0047075b-MAL-ED          INDIA                          >=30           21    224
12-15 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       181    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          <20             4    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=30           45    230
12-15 months   ki0047075b-MAL-ED          PERU                           [20-30)       110    224
12-15 months   ki0047075b-MAL-ED          PERU                           <20            63    224
12-15 months   ki0047075b-MAL-ED          PERU                           >=30           51    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)        99    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           89    228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       117    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           96    226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       261    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            29    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           39    329
12-15 months   ki1000108-IRC              INDIA                          [20-30)       330    390
12-15 months   ki1000108-IRC              INDIA                          <20            33    390
12-15 months   ki1000108-IRC              INDIA                          >=30           27    390
12-15 months   ki1000109-EE               PAKISTAN                       [20-30)       124    295
12-15 months   ki1000109-EE               PAKISTAN                       <20             1    295
12-15 months   ki1000109-EE               PAKISTAN                       >=30          170    295
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)       283    377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <20            56    377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=30           38    377
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        58     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20             5     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30           13     76
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       311    459
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <20            48    459
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          100    459
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       376    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <20            62    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           94    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       426    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           117    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          117    660
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       492    782
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            47    782
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          243    782
12-15 months   ki1101329-Keneba           GAMBIA                         [20-30)       609   1335
12-15 months   ki1101329-Keneba           GAMBIA                         <20           149   1335
12-15 months   ki1101329-Keneba           GAMBIA                         >=30          577   1335
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)        58     96
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <20            10     96
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30           28     96
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       311    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <20            83    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=30           75    469
12-15 months   ki1119695-PROBIT           BELARUS                        [20-30)       215    283
12-15 months   ki1119695-PROBIT           BELARUS                        <20            26    283
12-15 months   ki1119695-PROBIT           BELARUS                        >=30           42    283
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      1711   2544
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20           325   2544
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          508   2544
12-15 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       201    425
12-15 months   ki1135781-COHORTS          GUATEMALA                      <20            63    425
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=30          161    425
12-15 months   ki1148112-LCNI-5           MALAWI                         [20-30)        56    109
12-15 months   ki1148112-LCNI-5           MALAWI                         <20            15    109
12-15 months   ki1148112-LCNI-5           MALAWI                         >=30           38    109
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       143    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <20            31    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           38    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       106    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <20            29    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40    175
15-18 months   ki0047075b-MAL-ED          INDIA                          [20-30)       171    224
15-18 months   ki0047075b-MAL-ED          INDIA                          <20            33    224
15-18 months   ki0047075b-MAL-ED          INDIA                          >=30           20    224
15-18 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          <20             3    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=30           45    227
15-18 months   ki0047075b-MAL-ED          PERU                           [20-30)       102    213
15-18 months   ki0047075b-MAL-ED          PERU                           <20            61    213
15-18 months   ki0047075b-MAL-ED          PERU                           >=30           50    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)        98    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            36    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           91    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       112    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            12    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           93    217
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       252    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            30    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           39    321
15-18 months   ki1000108-IRC              INDIA                          [20-30)       322    382
15-18 months   ki1000108-IRC              INDIA                          <20            33    382
15-18 months   ki1000108-IRC              INDIA                          >=30           27    382
15-18 months   ki1000109-EE               PAKISTAN                       [20-30)       116    277
15-18 months   ki1000109-EE               PAKISTAN                       <20             1    277
15-18 months   ki1000109-EE               PAKISTAN                       >=30          160    277
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)       272    362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <20            53    362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30           37    362
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        54     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20             7     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30           11     72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       301    447
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <20            48    447
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           98    447
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       375    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <20            61    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           92    528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       395    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           110    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           99    604
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       408    658
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            39    658
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          211    658
15-18 months   ki1101329-Keneba           GAMBIA                         [20-30)       612   1354
15-18 months   ki1101329-Keneba           GAMBIA                         <20           148   1354
15-18 months   ki1101329-Keneba           GAMBIA                         >=30          594   1354
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       315    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <20            91    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=30           74    480
15-18 months   ki1119695-PROBIT           BELARUS                        [20-30)        30     37
15-18 months   ki1119695-PROBIT           BELARUS                        <20             2     37
15-18 months   ki1119695-PROBIT           BELARUS                        >=30            5     37
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      1348   2033
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20           270   2033
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          415   2033
15-18 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       177    372
15-18 months   ki1135781-COHORTS          GUATEMALA                      <20            55    372
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=30          140    372
15-18 months   ki1148112-LCNI-5           MALAWI                         [20-30)        55    103
15-18 months   ki1148112-LCNI-5           MALAWI                         <20            17    103
15-18 months   ki1148112-LCNI-5           MALAWI                         >=30           31    103
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       144    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <20            28    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       101    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <20            26    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40    167
18-21 months   ki0047075b-MAL-ED          INDIA                          [20-30)       171    224
18-21 months   ki0047075b-MAL-ED          INDIA                          <20            33    224
18-21 months   ki0047075b-MAL-ED          INDIA                          >=30           20    224
18-21 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          <20             3    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=30           45    227
18-21 months   ki0047075b-MAL-ED          PERU                           [20-30)        95    202
18-21 months   ki0047075b-MAL-ED          PERU                           <20            58    202
18-21 months   ki0047075b-MAL-ED          PERU                           >=30           49    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       103    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            37    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93    233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       107    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            11    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           86    204
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       239    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            30    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           36    305
18-21 months   ki1000108-IRC              INDIA                          [20-30)       318    379
18-21 months   ki1000108-IRC              INDIA                          <20            33    379
18-21 months   ki1000108-IRC              INDIA                          >=30           28    379
18-21 months   ki1000109-EE               PAKISTAN                       [20-30)       107    254
18-21 months   ki1000109-EE               PAKISTAN                       <20             1    254
18-21 months   ki1000109-EE               PAKISTAN                       >=30          146    254
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       286    420
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <20            42    420
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           92    420
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       385    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <20            60    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           96    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       360    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           85    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         5      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            4      9
18-21 months   ki1101329-Keneba           GAMBIA                         [20-30)       606   1344
18-21 months   ki1101329-Keneba           GAMBIA                         <20           158   1344
18-21 months   ki1101329-Keneba           GAMBIA                         >=30          580   1344
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       297    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <20            81    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=30           67    445
18-21 months   ki1119695-PROBIT           BELARUS                        [20-30)        17     23
18-21 months   ki1119695-PROBIT           BELARUS                        <20             2     23
18-21 months   ki1119695-PROBIT           BELARUS                        >=30            4     23
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      1062   1593
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20           189   1593
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          342   1593
18-21 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       174    369
18-21 months   ki1135781-COHORTS          GUATEMALA                      <20            55    369
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=30          140    369
18-21 months   ki1148112-LCNI-5           MALAWI                         [20-30)       206    389
18-21 months   ki1148112-LCNI-5           MALAWI                         <20            66    389
18-21 months   ki1148112-LCNI-5           MALAWI                         >=30          117    389
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       142    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20            28    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)        98    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <20            27    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40    165
21-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)       171    224
21-24 months   ki0047075b-MAL-ED          INDIA                          <20            33    224
21-24 months   ki0047075b-MAL-ED          INDIA                          >=30           20    224
21-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       178    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          <20             4    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45    227
21-24 months   ki0047075b-MAL-ED          PERU                           [20-30)        92    189
21-24 months   ki0047075b-MAL-ED          PERU                           <20            49    189
21-24 months   ki0047075b-MAL-ED          PERU                           >=30           48    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       103    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            39    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93    235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       109    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             8    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           87    204
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       246    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            28    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           34    308
21-24 months   ki1000108-IRC              INDIA                          [20-30)       326    389
21-24 months   ki1000108-IRC              INDIA                          <20            34    389
21-24 months   ki1000108-IRC              INDIA                          >=30           29    389
21-24 months   ki1000109-EE               PAKISTAN                       [20-30)        38    106
21-24 months   ki1000109-EE               PAKISTAN                       <20             1    106
21-24 months   ki1000109-EE               PAKISTAN                       >=30           67    106
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       279    409
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            39    409
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           91    409
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       335    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            54    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           82    471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       318    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20            95    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           77    490
21-24 months   ki1101329-Keneba           GAMBIA                         [20-30)       545   1201
21-24 months   ki1101329-Keneba           GAMBIA                         <20           143   1201
21-24 months   ki1101329-Keneba           GAMBIA                         >=30          513   1201
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       228    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <20            61    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           53    342
21-24 months   ki1119695-PROBIT           BELARUS                        [20-30)        26     32
21-24 months   ki1119695-PROBIT           BELARUS                        <20             1     32
21-24 months   ki1119695-PROBIT           BELARUS                        >=30            5     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       780   1167
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20           147   1167
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          240   1167
21-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       191    415
21-24 months   ki1135781-COHORTS          GUATEMALA                      <20            70    415
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=30          154    415
21-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       176    332
21-24 months   ki1148112-LCNI-5           MALAWI                         <20            60    332
21-24 months   ki1148112-LCNI-5           MALAWI                         >=30           96    332


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
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/56a50060-94ce-42e1-8e48-f43d95843a3e/5da9e51a-2a45-4e18-94a8-0c093d9d9c80/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/56a50060-94ce-42e1-8e48-f43d95843a3e/5da9e51a-2a45-4e18-94a8-0c093d9d9c80/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/56a50060-94ce-42e1-8e48-f43d95843a3e/5da9e51a-2a45-4e18-94a8-0c093d9d9c80/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0853665   -0.1244963   -0.0462367
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.2123572   -0.3063389   -0.1183755
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.1928962   -0.2733888   -0.1124036
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.1638795    0.0887784    0.2389806
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.1062050   -0.0425407    0.2549508
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0798402   -0.0232682    0.1829486
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0628138   -0.1196240   -0.0060037
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0239520   -0.1447674    0.0968635
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0608855   -0.2600524    0.1382813
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                 0.0501407   -0.0000240    0.1003054
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                 0.1895547    0.0167606    0.3623488
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.0508890   -0.0527433    0.1545213
0-3 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.2459930   -0.2948137   -0.1971723
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  NA                -0.2326549   -0.2915514   -0.1737583
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.3379881   -0.4124303   -0.2635459
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.1966432   -0.2632451   -0.1300414
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.2373054   -0.3694892   -0.1051215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.1268735   -0.2116906   -0.0420564
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0931578   -0.1456466   -0.0406691
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2412330   -0.4059772   -0.0764887
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1859673   -0.2466753   -0.1252594
0-3 months     ki1000108-IRC              INDIA                          [20-30)              NA                -0.2528215   -0.3136482   -0.1919947
0-3 months     ki1000108-IRC              INDIA                          <20                  NA                -0.2921599   -0.4680670   -0.1162528
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                -0.2467088   -0.4470637   -0.0463538
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0997488   -0.1797255   -0.0197720
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0435692   -0.1966251    0.1094867
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.1935088   -0.3338492   -0.0531684
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.2245099   -0.2584399   -0.1905800
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.2195885   -0.2936501   -0.1455269
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.2575026   -0.3082271   -0.2067781
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.1891876   -0.2095329   -0.1688424
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.1563821   -0.2115391   -0.1012252
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.2033795   -0.2445289   -0.1622301
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.2297974   -0.2507025   -0.2088924
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.2433598   -0.2897883   -0.1969312
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.2240410   -0.2649846   -0.1830973
0-3 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.2752901   -0.3112523   -0.2393278
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  NA                -0.1781821   -0.2395182   -0.1168459
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3326082   -0.3689448   -0.2962716
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0298800   -0.0609085    0.0011484
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                 0.0056194   -0.0513663    0.0626052
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0844917   -0.1485206   -0.0204628
0-3 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.4602789   -0.5519516   -0.3686061
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  NA                -0.4479739   -0.5371262   -0.3588217
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.4820955   -0.5687064   -0.3954846
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.1276979   -0.1402657   -0.1151301
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1504875   -0.1766139   -0.1243610
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.1780538   -0.2018393   -0.1542683
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.5589134   -0.6066937   -0.5111331
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.5554045   -0.6242160   -0.4865929
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.5998699   -0.6513707   -0.5483691
0-3 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0557007   -0.0654426   -0.0459588
0-3 months     ki1135781-COHORTS          INDIA                          <20                  NA                -0.0466296   -0.0717862   -0.0214731
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.1114038   -0.1294945   -0.0933130
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0557751    0.0460149    0.0655354
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                 0.0584281    0.0476614    0.0691949
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                 0.0171031   -0.0046409    0.0388471
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0297634   -0.0581837   -0.0013430
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0097911   -0.0735806    0.0539984
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0020685   -0.0577728    0.0536358
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0493080    0.0001510    0.0984649
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0962168    0.0096896    0.1827440
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0584991   -0.0090466    0.1260448
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0494266   -0.0832835   -0.0155697
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0210335   -0.0396458    0.0817128
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0579857   -0.1664098    0.0504384
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0214674   -0.0519312    0.0089965
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                -0.0058053   -0.1992110    0.1876003
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0313303   -0.0862545    0.0235938
3-6 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0289784   -0.0189287    0.0768855
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0379969   -0.0191549    0.0951488
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.0034715   -0.0518947    0.0588378
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0135781   -0.0436785    0.0708347
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.0445750   -0.0441472    0.1332972
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0505266   -0.1110442    0.0099909
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0996094   -0.1447276   -0.0544912
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0527785   -0.1890927    0.0835358
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0362331   -0.0839947    0.0115285
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.1096271   -0.1612291   -0.0580252
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0761972   -0.0725615    0.2249560
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1484354   -0.3124587    0.0155880
3-6 months     ki1000108-IRC              INDIA                          [20-30)              NA                -0.0654366   -0.0973114   -0.0335618
3-6 months     ki1000108-IRC              INDIA                          <20                  NA                 0.0627658   -0.0522785    0.1778101
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                -0.0336443   -0.1528014    0.0855127
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0394107   -0.0803168    0.0014954
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0277334   -0.1031156    0.1585823
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0230027   -0.0910127    0.0450072
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0451177   -0.0722440   -0.0179913
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0684362   -0.1277685   -0.0091038
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0616876   -0.1107096   -0.0126656
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0211785   -0.0399140   -0.0024431
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0314221   -0.0794813    0.0166370
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0459858   -0.0840674   -0.0079041
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0300487    0.0088154    0.0512819
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0359284    0.0012004    0.0706563
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                 0.0046981   -0.0380083    0.0474044
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0925716   -0.1134376   -0.0717055
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0966434   -0.1658198   -0.0274669
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0668702   -0.0965809   -0.0371595
3-6 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0162043   -0.0451061    0.0126975
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0281256   -0.0215178    0.0777690
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0319487   -0.0585817   -0.0053157
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.1577653   -0.1803357   -0.1351950
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.1330263   -0.1785405   -0.0875121
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.2078660   -0.2537342   -0.1619979
3-6 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0493607    0.0178707    0.0808506
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  NA                 0.0556609    0.0171734    0.0941484
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0349718   -0.0051134    0.0750570
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0012040   -0.0125520    0.0101441
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                 0.0063391   -0.0183450    0.0310232
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0054673   -0.0258922    0.0149577
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.1370468   -0.1686385   -0.1054552
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0494584   -0.0964287   -0.0024881
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.1656967   -0.1995201   -0.1318733
3-6 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0614302   -0.0691645   -0.0536959
3-6 months     ki1135781-COHORTS          INDIA                          <20                  NA                -0.0523650   -0.0734076   -0.0313225
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0735276   -0.0873959   -0.0596593
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0141051   -0.0246141   -0.0035962
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                 0.0155573    0.0063617    0.0247529
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                 0.0032432   -0.0190117    0.0254982
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0636667   -0.0844417   -0.0428917
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0414491   -0.0865880    0.0036898
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.1229669   -0.1606486   -0.0852853
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0426308   -0.0046256    0.0898872
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0510633   -0.1214230    0.0192964
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0372826   -0.1031853    0.0286201
6-9 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0867280   -0.1129370   -0.0605191
6-9 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0156187   -0.0733376    0.0421002
6-9 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0565368   -0.1151744    0.0021008
6-9 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0483224   -0.0837640   -0.0128809
6-9 months     ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0319884   -0.0752023    0.0112254
6-9 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0042349   -0.0537143    0.0452446
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0230057   -0.0657587    0.0197473
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0060962   -0.0813528    0.0691604
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0170494   -0.0592247    0.0251260
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1098444   -0.1541585   -0.0655304
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1817409   -0.3220201   -0.0414616
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0625747   -0.1155811   -0.0095683
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0870853   -0.1247046   -0.0494660
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0053891   -0.1475992    0.1583774
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1130542   -0.1916598   -0.0344486
6-9 months     ki1000108-IRC              INDIA                          [20-30)              NA                -0.0174179   -0.0402977    0.0054619
6-9 months     ki1000108-IRC              INDIA                          <20                  NA                -0.0199763   -0.1163538    0.0764011
6-9 months     ki1000108-IRC              INDIA                          >=30                 NA                 0.0019006   -0.0664174    0.0702187
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0879740   -0.1176268   -0.0583212
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0739033   -0.1664791    0.0186725
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0483872   -0.1190448    0.0222704
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.1008711   -0.1400670   -0.0616752
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.1299310   -0.2721342    0.0122721
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -0.1210320   -0.2155507   -0.0265133
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0651195   -0.0866804   -0.0435587
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0713684   -0.1263480   -0.0163888
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0413166   -0.0802239   -0.0024093
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0638086   -0.0768306   -0.0507866
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0496782   -0.0809644   -0.0183920
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0590645   -0.0839549   -0.0341740
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0221973   -0.0384905   -0.0059041
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0452948   -0.0734208   -0.0171688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0519017   -0.0805609   -0.0232424
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0478609   -0.0685499   -0.0271720
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0392894   -0.1034559    0.0248771
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0630049   -0.0907609   -0.0352489
6-9 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0064655   -0.0264683    0.0393993
6-9 months     ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0316674   -0.1014367    0.0381019
6-9 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0284555   -0.0621720    0.0052610
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0999386   -0.1255629   -0.0743143
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0735213   -0.1224478   -0.0245948
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0960812   -0.1332477   -0.0589147
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0465876   -0.0703897   -0.0227855
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0215718   -0.0533261    0.0101825
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0580207   -0.0901492   -0.0258922
6-9 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0606327    0.0393990    0.0818664
6-9 months     ki1119695-PROBIT           BELARUS                        <20                  NA                 0.0875879    0.0485930    0.1265828
6-9 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0431401    0.0230949    0.0631852
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0275837   -0.0381024   -0.0170649
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0296745   -0.0513817   -0.0079672
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0470213   -0.0650182   -0.0290243
6-9 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.1512958   -0.1771745   -0.1254170
6-9 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0942102   -0.1376765   -0.0507439
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.1353721   -0.1625239   -0.1082203
6-9 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0998575   -0.1066949   -0.0930200
6-9 months     ki1135781-COHORTS          INDIA                          <20                  NA                -0.0990594   -0.1207933   -0.0773255
6-9 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.1061540   -0.1180293   -0.0942787
6-9 months     ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0358068    0.0106717    0.0609420
6-9 months     ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0554913    0.0218536    0.0891290
6-9 months     ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.0275058   -0.0062586    0.0612702
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0884929   -0.1070789   -0.0699070
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0952280   -0.1456049   -0.0448511
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0753658   -0.1146198   -0.0361118
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0112707   -0.0460135    0.0234722
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0163006   -0.1077188    0.0751176
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0804534    0.0128617    0.1480451
9-12 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0844569   -0.1022106   -0.0667032
9-12 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.1330870   -0.1687449   -0.0974292
9-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0888466   -0.1553350   -0.0223583
9-12 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0515286   -0.0809394   -0.0221179
9-12 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0248689   -0.0674310    0.0176932
9-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0418302   -0.0872878    0.0036274
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0751381   -0.1102847   -0.0399915
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0429576   -0.1108199    0.0249046
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.1150585   -0.1625783   -0.0675386
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1090220   -0.1594894   -0.0585545
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1511949   -0.2802194   -0.0221703
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.2094677   -0.2547051   -0.1642303
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.1194852   -0.1507767   -0.0881936
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.1821995   -0.2676744   -0.0967245
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0693394   -0.1658529    0.0271741
9-12 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0378266   -0.0557718   -0.0198814
9-12 months    ki1000108-IRC              INDIA                          <20                  NA                -0.0315302   -0.0930456    0.0299852
9-12 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.0214786   -0.0985246    0.0555674
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0882380   -0.1077491   -0.0687269
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0268339   -0.1408253    0.0871575
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.1428438   -0.2129119   -0.0727756
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0818149   -0.2398569    0.0762272
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.2552386   -0.3520068   -0.1584704
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                 0.1206951   -0.3692383    0.6106286
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0358276   -0.0538563   -0.0177990
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0346392   -0.0805985    0.0113202
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0628831   -0.0903500   -0.0354162
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0617392   -0.0748832   -0.0485952
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0618368   -0.0965572   -0.0271164
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0688670   -0.0929047   -0.0448293
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0365498   -0.0498049   -0.0232946
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0479324   -0.0716874   -0.0241774
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0117979   -0.0419085    0.0183128
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0663256   -0.0841856   -0.0484657
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0512357   -0.1086834    0.0062120
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0697850   -0.0962284   -0.0433416
9-12 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0986915   -0.1253097   -0.0720734
9-12 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0632124   -0.1013707   -0.0250542
9-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.1134605   -0.1413327   -0.0855883
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0678862   -0.0874833   -0.0482891
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0270972   -0.0730461    0.0188517
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0596637   -0.0910693   -0.0282581
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0876703   -0.1061249   -0.0692157
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0531924   -0.0751157   -0.0312690
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0759958   -0.1024816   -0.0495101
9-12 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0270551    0.0035340    0.0505762
9-12 months    ki1119695-PROBIT           BELARUS                        <20                  NA                 0.0434113    0.0078025    0.0790201
9-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0566484    0.0294285    0.0838683
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0626175   -0.0719490   -0.0532859
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0479217   -0.0673902   -0.0284532
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0542713   -0.0703231   -0.0382195
9-12 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0942632   -0.1160621   -0.0724643
9-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0745890   -0.1117852   -0.0373929
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0822686   -0.1029214   -0.0616158
9-12 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0907578   -0.0976910   -0.0838246
9-12 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0850126   -0.1074782   -0.0625470
9-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0929542   -0.1041992   -0.0817091
9-12 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0354163   -0.0609922   -0.0098403
9-12 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.1020263   -0.1646291   -0.0394235
9-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0439538   -0.0750647   -0.0128429
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0595435   -0.0769806   -0.0421064
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0259776   -0.0781329    0.0261776
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0646688   -0.1016459   -0.0276918
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0053715   -0.0348589    0.0241158
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0195041   -0.0728889    0.0338808
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0169990   -0.0286745    0.0626725
12-15 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0606382   -0.0777683   -0.0435081
12-15 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0386472   -0.0750982   -0.0021963
12-15 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0580697   -0.1213175    0.0051782
12-15 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0665823   -0.0905666   -0.0425980
12-15 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0724936   -0.1087629   -0.0362243
12-15 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0538816   -0.0921905   -0.0155728
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0641405   -0.1013032   -0.0269778
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0834989   -0.1292010   -0.0377968
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0427217   -0.0784575   -0.0069859
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0836666   -0.1177259   -0.0496074
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0748957   -0.1958450    0.0460536
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0511655   -0.0894387   -0.0128924
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0597042   -0.0928453   -0.0265632
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.1349772   -0.1981803   -0.0717741
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1009927   -0.1617561   -0.0402293
12-15 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0392536   -0.0575533   -0.0209539
12-15 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0844387   -0.1359883   -0.0328892
12-15 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.0735586   -0.1376946   -0.0094225
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0770009   -0.0885733   -0.0654286
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0802310   -0.1099796   -0.0504823
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0813134   -0.1957716    0.0331449
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0410072   -0.1748302    0.0928158
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.0382118   -0.0499598    0.1263834
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                 0.0625840   -0.0271100    0.1522780
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.1370738   -0.1524837   -0.1216638
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.1329216   -0.1779738   -0.0878695
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0925106   -0.1491704   -0.0358508
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0512514   -0.0626928   -0.0398101
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0191224   -0.0526278    0.0143830
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0139189   -0.0388376    0.0109997
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0428011   -0.0547422   -0.0308599
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0206249   -0.0428151    0.0015652
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0397633   -0.0613669   -0.0181597
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0708258   -0.0885132   -0.0531384
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0547566   -0.1239892    0.0144760
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0528703   -0.0798008   -0.0259397
12-15 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0574008   -0.0749622   -0.0398394
12-15 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0361919   -0.0672996   -0.0050842
12-15 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0540047   -0.0734135   -0.0345959
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0200011   -0.0508729    0.0108707
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                 0.0396565   -0.0008002    0.0801132
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0072055   -0.0504851    0.0360741
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0677337   -0.0820940   -0.0533733
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0637578   -0.0857125   -0.0418032
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0658256   -0.0876035   -0.0440477
12-15 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0236445   -0.1766449    0.2239339
12-15 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0111124   -0.2697865    0.2475618
12-15 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0195300   -0.3113574    0.3504174
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0619119   -0.0747088   -0.0491150
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0647960   -0.0942814   -0.0353106
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0618103   -0.0859934   -0.0376273
12-15 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.1013165   -0.1233684   -0.0792645
12-15 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.1052780   -0.1423613   -0.0681948
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0910003   -0.1112431   -0.0707575
12-15 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0352088   -0.0815283    0.0111108
12-15 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.0723619   -0.1375638   -0.0071600
12-15 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0146703   -0.0709767    0.0416360
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0424039   -0.0589904   -0.0258174
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0734324   -0.1050321   -0.0418326
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0360060   -0.0678648   -0.0041472
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0251631   -0.0483675   -0.0019588
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0301436   -0.0204372    0.0807243
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0441691   -0.1002366    0.0118984
15-18 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0380374   -0.0526418   -0.0234330
15-18 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0527350   -0.0851055   -0.0203645
15-18 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0091373   -0.0570463    0.0387716
15-18 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0423066   -0.0631166   -0.0214966
15-18 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0252084   -0.0587336    0.0083169
15-18 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0365411   -0.0659161   -0.0071661
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0070389   -0.0378620    0.0237843
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0397352   -0.0801004    0.0006299
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0472850   -0.0757240   -0.0188459
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0885346   -0.1197579   -0.0573112
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1134302   -0.2086919   -0.0181685
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0785547   -0.1124103   -0.0446990
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0689780   -0.0943266   -0.0436294
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0396383   -0.1326002    0.0533237
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0842139   -0.1557992   -0.0126286
15-18 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0392914   -0.0557490   -0.0228338
15-18 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0336489   -0.0696717    0.0023739
15-18 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.0352266   -0.0869743    0.0165210
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0116629   -0.0235256    0.0468515
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0290845   -0.1023667    0.0441976
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                 0.0301933   -0.1043058    0.1646923
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0197403   -0.0491960    0.0097154
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.0391442   -0.0694788   -0.0088096
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -0.0319263   -0.1025872    0.0387345
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0570880   -0.0744522   -0.0397239
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0680189   -0.1156829   -0.0203548
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0553189   -0.0885823   -0.0220555
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0311001   -0.0416091   -0.0205912
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0593532   -0.0852817   -0.0334247
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0499216   -0.0689346   -0.0309085
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0172695   -0.0279801   -0.0065589
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0181935   -0.0352670   -0.0011199
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0140334   -0.0342240    0.0061572
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0135896   -0.0330751    0.0058959
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0166438   -0.0513331    0.0846207
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0360399   -0.0627693   -0.0093105
15-18 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0310094   -0.0483081   -0.0137107
15-18 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0357795   -0.0667985   -0.0047605
15-18 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0345626   -0.0519886   -0.0171365
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0795422   -0.0965024   -0.0625820
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0471175   -0.0717700   -0.0224650
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0507589   -0.0718530   -0.0296649
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0572572   -0.0700857   -0.0444286
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0884096   -0.1176580   -0.0591613
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0625213   -0.0905468   -0.0344957
15-18 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0676260   -0.0905169   -0.0447351
15-18 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0721378   -0.1111650   -0.0331106
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0390940   -0.0618946   -0.0162933
15-18 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0635896   -0.0971452   -0.0300341
15-18 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.0676861   -0.1515006    0.0161285
15-18 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0308823   -0.0802377    0.0184731
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0137895   -0.0282292    0.0006503
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.0053070   -0.0235937    0.0342077
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0380265   -0.0622721   -0.0137809
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0252752   -0.0529861    0.0024357
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0166733   -0.0260368    0.0593834
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0320164   -0.1008392    0.0368063
18-21 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0069056   -0.0063394    0.0201505
18-21 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0068598   -0.0191266    0.0328461
18-21 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0108177   -0.0522050    0.0305697
18-21 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0020144   -0.0205464    0.0245751
18-21 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0258020   -0.0542838    0.0026798
18-21 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0068142   -0.0360367    0.0224082
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0435232   -0.0703693   -0.0166771
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0264012   -0.0744114    0.0216090
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0218824   -0.0542249    0.0104601
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0448159   -0.0749111   -0.0147207
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0266394   -0.0957440    0.1490228
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0145487   -0.0501227    0.0210252
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0357995   -0.0617995   -0.0097995
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0677940   -0.1295235   -0.0060645
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0766296   -0.1330047   -0.0202546
18-21 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0345237   -0.0491087   -0.0199387
18-21 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0536839   -0.1010268   -0.0063410
18-21 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.0871729   -0.1231102   -0.0512355
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0424749   -0.0573176   -0.0276322
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0083435   -0.0488995    0.0322124
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0385275   -0.0660304   -0.0110245
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0088775   -0.0183291    0.0005741
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0098413   -0.0194457    0.0391284
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0321991   -0.0498735   -0.0145247
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0322961   -0.0418719   -0.0227203
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0232785   -0.0413482   -0.0052087
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0152142   -0.0385543    0.0081259
18-21 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0232378   -0.0424595   -0.0040160
18-21 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0294328   -0.0603875    0.0015219
18-21 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0164808   -0.0326113   -0.0003504
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0170513    0.0006620    0.0334405
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                 0.0066752   -0.0109898    0.0243402
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                 0.0199075    0.0015024    0.0383127
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0711784   -0.0853091   -0.0570478
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0377023   -0.0661153   -0.0092893
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0800865   -0.1089542   -0.0512187
18-21 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0174521   -0.0367466    0.0018424
18-21 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0649898   -0.1016481   -0.0283314
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0118543   -0.0336886    0.0099800
18-21 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0066058   -0.0277221    0.0145104
18-21 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0025030   -0.0279525    0.0329586
18-21 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0200557   -0.0621645    0.0220532
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0198314    0.0056864    0.0339765
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.0254915   -0.0060361    0.0570192
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                 0.0479227    0.0155664    0.0802790
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0034877   -0.0188599    0.0258354
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0412391    0.0076731    0.0748050
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0316276    0.0043656    0.0588896
21-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0283553    0.0154885    0.0412221
21-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0521362    0.0291835    0.0750888
21-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0030059   -0.0383388    0.0323270
21-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0582374    0.0352486    0.0812262
21-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0389721    0.0155192    0.0624250
21-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.0729309    0.0401774    0.1056844
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0417261    0.0209175    0.0625346
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.0646359    0.0042062    0.1250657
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.0375415    0.0128065    0.0622765
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0030230   -0.0350325    0.0289865
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0021443   -0.1062224    0.1105109
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.0243179   -0.0051277    0.0537636
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0258563    0.0012369    0.0504757
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0122499   -0.0497880    0.0742878
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0368148   -0.0743173    0.0006876
21-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0103214   -0.0255332    0.0048904
21-24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0030328   -0.0447634    0.0386977
21-24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.0669784   -0.0999567   -0.0340002
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0461889    0.0322049    0.0601729
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0631114    0.0195444    0.1066784
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                 0.0161876   -0.0079102    0.0402855
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0463177    0.0362524    0.0563830
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0698207    0.0444732    0.0951683
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                 0.0303607    0.0087204    0.0520011
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0543255    0.0442449    0.0644062
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0623804    0.0444817    0.0802791
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                 0.0726204    0.0500818    0.0951589
21-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0110492   -0.0056353    0.0277336
21-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0009241   -0.0316931    0.0335413
21-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                 0.0245787    0.0076745    0.0414828
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0407687    0.0208758    0.0606616
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                 0.0649420    0.0273004    0.1025836
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                 0.0604280    0.0322597    0.0885962
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0133291   -0.0022428    0.0289010
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                 0.0136036   -0.0156337    0.0428408
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.0326822    0.0042916    0.0610728
21-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0301998   -0.0462359   -0.0141637
21-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0040611   -0.0196956    0.0278178
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0122379   -0.0326002    0.0081243
21-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0143890   -0.0076773    0.0364552
21-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0198117   -0.0280347    0.0676581
21-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.0426185    0.0159285    0.0693085


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0577332   -0.1080880   -0.0073784
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1031330   -0.1715896   -0.0346763
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2311143   -0.2577835   -0.2044452
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2819592   -0.3057954   -0.2581230
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4629578   -0.5523760   -0.3735396
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1405848   -0.1508213   -0.1303484
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5747177   -0.6062873   -0.5431481
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0687968   -0.0770166   -0.0605771
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0531865    0.0457161    0.0606570
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0399792   -0.0691966   -0.0107619
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0294028   -0.0483124   -0.0104932
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0512815   -0.0734273   -0.0291358
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855959   -0.1022434   -0.0689484
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0166009   -0.0350544    0.0018526
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0474289    0.0166123    0.0782456
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009526   -0.0101595    0.0082543
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1363801   -0.1576236   -0.1151366
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0637374   -0.0701991   -0.0572756
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0007560   -0.0061947    0.0077068
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0734757   -0.0960974   -0.0508539
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0818843   -0.1012900   -0.0624786
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1073140   -0.1432841   -0.0713439
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0605792   -0.0784441   -0.0427142
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516021   -0.0677504   -0.0354537
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0120132   -0.0343936    0.0103671
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0948900   -0.1145627   -0.0752174
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0601303    0.0399815    0.0802790
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0316942   -0.0400871   -0.0233013
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1369127   -0.1542372   -0.1195881
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.1014177   -0.1071454   -0.0956901
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0368910    0.0192320    0.0545500
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0919990   -0.1079025   -0.0760956
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0855262   -0.0960534   -0.0749990
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0558784   -0.2070913    0.0953345
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0416197   -0.0560785   -0.0271610
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0663862   -0.0807212   -0.0520511
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1015041   -0.1192400   -0.0837681
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0594037   -0.0753549   -0.0434524
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0339675    0.0110336    0.0569015
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0588361   -0.0662999   -0.0513723
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0866609   -0.1006884   -0.0726333
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0909643   -0.0966740   -0.0852547
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0494486   -0.0691688   -0.0297284
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0571577   -0.0724560   -0.0418594
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0779154   -0.0860269   -0.0698039
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0180759   -0.1219384    0.0857866
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1269308   -0.1438534   -0.1100082
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0642805   -0.0788249   -0.0497361
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0535658   -0.0656786   -0.0414531
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0100547   -0.0332477    0.0131383
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0198407   -0.1628318    0.2025132
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622601   -0.0728235   -0.0516967
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0979957   -0.1120698   -0.0839217
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0331614   -0.0654721   -0.0008507
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0376223   -0.0505517   -0.0246930
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0075911   -0.0223071    0.0374893
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0234885   -0.0483025    0.0013254
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0578740   -0.0725780   -0.0431699
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0189968   -0.0343841   -0.0036094
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0330896   -0.0445388   -0.0216403
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0624691   -0.0734406   -0.0514976
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0575552   -0.0726452   -0.0424652
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0544218   -0.0816641   -0.0271795
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0053164   -0.0061285    0.0167612
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0381971   -0.0506802   -0.0257139
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0210501   -0.0327493   -0.0093510
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0691191   -0.0809035   -0.0573348
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0224138   -0.0360021   -0.0088256
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0091057   -0.0267909    0.0085796
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0290586    0.0180675    0.0400498
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0411275    0.0293417    0.0529132
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0156226    0.0044528    0.0267924
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0173437    0.0048466    0.0298409
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0177555   -0.0291192   -0.0063918
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0235317    0.0070110    0.0400524


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.1269907   -0.2287930   -0.0251885
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1075297   -0.1970294   -0.0180300
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0576745   -0.2243042    0.1089553
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0840393   -0.2115992    0.0435205
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0388619   -0.0946438    0.1723675
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0019283   -0.2051823    0.2090390
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)            0.1394140   -0.0405146    0.3193426
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0007483   -0.1143871    0.1158837
0-3 months     ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0133382   -0.0631619    0.0898382
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0919951   -0.1810181   -0.0029720
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0406621   -0.1886769    0.1073527
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0697697   -0.0380716    0.1776110
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1480751   -0.3209789    0.0248287
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0928095   -0.1730624   -0.0125566
0-3 months     ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0393384   -0.2254653    0.1467884
0-3 months     ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0061127   -0.2032721    0.2154975
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0561796   -0.1484438    0.2608029
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.0937601   -0.1796899   -0.0078302
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0049214   -0.0765425    0.0863853
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0329927   -0.0940190    0.0280337
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0328055   -0.0259841    0.0915951
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0141919   -0.0600961    0.0317124
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0135623   -0.0644802    0.0373556
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0057565   -0.0402153    0.0517283
0-3 months     ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0971080    0.0260066    0.1682094
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0573182   -0.1084419   -0.0061944
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0354995   -0.0293861    0.1003851
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0546117   -0.1257627    0.0165393
0-3 months     ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0123049   -0.0227255    0.0473354
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0218166   -0.0479860    0.0043527
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0227895   -0.0517816    0.0062025
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0503558   -0.0772575   -0.0234541
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0035089   -0.0802645    0.0872823
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0409565   -0.1112081    0.0292951
0-3 months     ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <20                  [20-30)            0.0090710   -0.0179059    0.0360480
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0557031   -0.0762501   -0.0351561
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0026530   -0.0103117    0.0156178
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0386720   -0.0628032   -0.0145408
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0199723   -0.0498619    0.0898065
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0276949   -0.0348406    0.0902303
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0469089   -0.0526068    0.1464245
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0091911   -0.0743483    0.0927305
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0704601    0.0009743    0.1399458
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           -0.0085591   -0.1221463    0.1050282
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)            0.0156620   -0.1801282    0.2114522
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)           -0.0098630   -0.0726699    0.0529439
3-6 months     ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0090185   -0.0655564    0.0835935
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0255069   -0.0987224    0.0477086
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0309969   -0.0745964    0.1365902
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0641047   -0.1474155    0.0192061
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0468310   -0.0967561    0.1904180
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0633763   -0.0023262    0.1290789
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1858244    0.0283698    0.3432789
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0388082   -0.2107571    0.1331407
3-6 months     ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <20                  [20-30)            0.1282023    0.0088239    0.2475807
3-6 months     ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0317922   -0.0915544    0.1551389
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0671441   -0.0866136    0.2209019
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0164080   -0.0852426    0.1180587
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0233185   -0.0885578    0.0419208
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0165700   -0.0725967    0.0394567
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0102436   -0.0618255    0.0413384
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0248072   -0.0672481    0.0176337
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0058797   -0.0348251    0.0465845
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0253506   -0.0730443    0.0223430
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0040718   -0.0763267    0.0681831
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0257014   -0.0106045    0.0620072
3-6 months     ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0443299   -0.0131138    0.1017736
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0157444   -0.0550462    0.0235574
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0247390   -0.0260641    0.0755422
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0501007   -0.1012212    0.0010198
3-6 months     ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0063002   -0.0278119    0.0404124
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0143889   -0.0399991    0.0112213
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0075431   -0.0196246    0.0347107
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0042633   -0.0276290    0.0191024
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0875884    0.0309824    0.1441944
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0286498   -0.0749322    0.0176325
3-6 months     ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <20                  [20-30)            0.0090652   -0.0133538    0.0314841
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0120974   -0.0279766    0.0037819
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0296625    0.0158303    0.0434946
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)            0.0173484   -0.0069506    0.0416473
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0222176   -0.0274726    0.0719079
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0593002   -0.1023294   -0.0162711
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0936940   -0.1784505   -0.0089376
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0799134   -0.1610080    0.0011812
6-9 months     ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0711093    0.0077187    0.1345000
6-9 months     ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0301912   -0.0340371    0.0944195
6-9 months     ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0163340   -0.0395546    0.0722226
6-9 months     ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0440876   -0.0167756    0.1049507
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0169095   -0.0696433    0.1034622
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0059563   -0.0540985    0.0660112
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0718965   -0.2190087    0.0752157
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0472697   -0.0218202    0.1163597
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.0924744   -0.0650713    0.2500200
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0259689   -0.1131128    0.0611749
6-9 months     ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0025584   -0.1016145    0.0964976
6-9 months     ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0193185   -0.0527290    0.0913660
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0140707   -0.1061109    0.1342523
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0395868   -0.0217140    0.1008876
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           -0.0290599   -0.1765660    0.1184462
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.0201609   -0.1224844    0.0821627
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0062488   -0.0653049    0.0528072
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0238029   -0.0206791    0.0682849
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0141304   -0.0197576    0.0480184
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)            0.0047442   -0.0233469    0.0328352
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0230975   -0.0556020    0.0094070
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0297043   -0.0626713    0.0032627
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0085715   -0.0588479    0.0759909
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0151440   -0.0497623    0.0194743
6-9 months     ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0381329   -0.1152846    0.0390188
6-9 months     ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0349210   -0.0820531    0.0122111
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0264173   -0.0288132    0.0816478
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0038574   -0.0412864    0.0490011
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0250158   -0.0146689    0.0647005
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0114331   -0.0514178    0.0285517
6-9 months     ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0269552   -0.0074750    0.0613854
6-9 months     ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0174926   -0.0344656   -0.0005197
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0020908   -0.0262124    0.0220307
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0194376   -0.0402831    0.0014079
6-9 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0570855    0.0064987    0.1076724
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0159236   -0.0215855    0.0534327
6-9 months     ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <20                  [20-30)            0.0007981   -0.0219860    0.0235822
6-9 months     ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0062965   -0.0199996    0.0074066
6-9 months     ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0196844   -0.0223068    0.0616757
6-9 months     ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0083010   -0.0503939    0.0337918
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.0067350   -0.0604311    0.0469610
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0131271   -0.0303046    0.0565588
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0050299   -0.1028274    0.0927676
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0917241    0.0157260    0.1677221
9-12 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0486301   -0.0884632   -0.0087970
9-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           -0.0043898   -0.0732075    0.0644280
9-12 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0266597   -0.0250754    0.0783949
9-12 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0096984   -0.0444438    0.0638407
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0321805   -0.0442431    0.1086041
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0399204   -0.0990256    0.0191847
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0421729   -0.1807164    0.0963706
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.1004457   -0.1682203   -0.0326712
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0627143   -0.1537370    0.0283084
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0501458   -0.0513137    0.1516053
9-12 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          <20                  [20-30)            0.0062964   -0.0577830    0.0703759
9-12 months    ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0163480   -0.0627603    0.0954562
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0614041   -0.0713336    0.1941417
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.0546058   -0.1241835    0.0149719
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           -0.1734237   -0.3587380    0.0118905
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)            0.2025100   -0.3122832    0.7173032
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0011885   -0.0481805    0.0505574
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0270555   -0.0599106    0.0057996
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0000975   -0.0372226    0.0370275
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0071278   -0.0345244    0.0202689
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0113826   -0.0385856    0.0158203
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0247519   -0.0081472    0.0576510
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0150900   -0.0450700    0.0752499
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0034594   -0.0353692    0.0284504
9-12 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0354791   -0.0110459    0.0820041
9-12 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0147689   -0.0533096    0.0237718
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0407890   -0.0091644    0.0907425
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0082225   -0.0287958    0.0452409
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0344780    0.0058213    0.0631347
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0116745   -0.0206066    0.0439556
9-12 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0163562   -0.0068218    0.0395342
9-12 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0295933    0.0064721    0.0527144
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0146958   -0.0068935    0.0362851
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0083461   -0.0102210    0.0269133
9-12 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0196742   -0.0234390    0.0627873
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0119946   -0.0180342    0.0420235
9-12 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)            0.0057452   -0.0177659    0.0292563
9-12 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0021964   -0.0154069    0.0110142
9-12 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0666100   -0.1342357    0.0010157
9-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0085375   -0.0488118    0.0317368
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0335659   -0.0214270    0.0885588
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0051253   -0.0460076    0.0357569
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0141325   -0.0751197    0.0468547
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0223706   -0.0319946    0.0767358
12-15 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0219910   -0.0182845    0.0622664
12-15 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0025686   -0.0629580    0.0680951
12-15 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0059113   -0.0493936    0.0375710
12-15 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0127007   -0.0324968    0.0578981
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0193584   -0.0782630    0.0395462
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0214188   -0.0301382    0.0729757
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0087709   -0.1168825    0.1344242
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0325011   -0.0187324    0.0837345
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0752730   -0.1466379   -0.0039080
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0412885   -0.1105021    0.0279251
12-15 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0451851   -0.0998865    0.0095162
12-15 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.0343050   -0.1010006    0.0323906
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0032300   -0.0261584    0.0196983
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.0043124   -0.1267207    0.1180958
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0792190   -0.0810396    0.2394776
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)            0.1035912   -0.0575101    0.2646924
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0041521   -0.0434626    0.0517668
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0445632   -0.0141548    0.1032812
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0321290   -0.0032760    0.0675341
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)            0.0373325    0.0099127    0.0647523
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0221761   -0.0030229    0.0473752
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0030378   -0.0216464    0.0277219
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0160692   -0.0553871    0.0875255
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0179556   -0.0142640    0.0501751
12-15 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0212089   -0.0145135    0.0569313
12-15 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0033961   -0.0227784    0.0295706
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0596576    0.0087674    0.1105478
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0127955   -0.0403664    0.0659575
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0039758   -0.0222583    0.0302099
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0019080   -0.0241783    0.0279944
12-15 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.0347569   -0.2834464    0.2139326
12-15 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0041146   -0.3558259    0.3475968
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0028841   -0.0350268    0.0292586
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0001016   -0.0272586    0.0274618
12-15 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0039616   -0.0471061    0.0391830
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0103162   -0.0196181    0.0402504
12-15 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0371531   -0.1171330    0.0428268
12-15 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0205384   -0.0523718    0.0934486
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.0310285   -0.0667168    0.0046599
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0063979   -0.0295200    0.0423158
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0553067   -0.0003427    0.1109560
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0190060   -0.0796855    0.0416735
15-18 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0146976   -0.0502101    0.0208150
15-18 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0289001   -0.0211854    0.0789855
15-18 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0170982   -0.0223606    0.0565571
15-18 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0057655   -0.0302337    0.0417648
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0326964   -0.0834842    0.0180915
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0402461   -0.0821847    0.0016925
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0248956   -0.1251437    0.0753525
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0099799   -0.0360755    0.0560354
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.0293398   -0.0670163    0.1256958
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0152359   -0.0911767    0.0607049
15-18 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          <20                  [20-30)            0.0056425   -0.0339618    0.0452467
15-18 months   ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0040648   -0.0502369    0.0583665
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0407475   -0.1073473    0.0258523
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0185303   -0.1248944    0.1619551
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           -0.0194039   -0.0616866    0.0228788
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.0121861   -0.0887406    0.0643684
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0109309   -0.0616593    0.0397976
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0017691   -0.0357538    0.0392920
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0282531   -0.0562303   -0.0002758
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0188214   -0.0405455    0.0029026
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0009239   -0.0210789    0.0192310
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0032361   -0.0196195    0.0260917
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0302334   -0.0404811    0.1009479
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0224503   -0.0555282    0.0106276
15-18 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0047701   -0.0402867    0.0307464
15-18 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0035532   -0.0281075    0.0210011
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0324247    0.0025016    0.0623478
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0287833    0.0017165    0.0558500
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0311524   -0.0630905    0.0007856
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0052641   -0.0360862    0.0255580
15-18 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0045118   -0.0497568    0.0407332
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0285320   -0.0037768    0.0608409
15-18 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0040964   -0.0943785    0.0861856
15-18 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0327073   -0.0269746    0.0923893
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0190965   -0.0132107    0.0514037
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0242370   -0.0524567    0.0039827
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0419485   -0.0089636    0.0928607
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0067412   -0.0809333    0.0674508
18-21 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0000458   -0.0292129    0.0291213
18-21 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           -0.0177232   -0.0611783    0.0257318
18-21 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0278164   -0.0641509    0.0085182
18-21 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0088286   -0.0457466    0.0280894
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0171220   -0.0378843    0.0721283
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0216408   -0.0203919    0.0636736
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0714553   -0.0545741    0.1974847
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0302672   -0.0163292    0.0768636
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0319946   -0.0989761    0.0349870
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0408301   -0.1029119    0.0212516
18-21 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0191602   -0.0686988    0.0303784
18-21 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.0526492   -0.0914334   -0.0138650
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0341314   -0.0090554    0.0773181
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0039474   -0.0273051    0.0351999
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0187189   -0.0120555    0.0494932
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0233216   -0.0433645   -0.0032787
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0090176   -0.0114326    0.0294678
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0170819   -0.0081462    0.0423100
18-21 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0061951   -0.0426323    0.0302421
18-21 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0067569   -0.0183362    0.0318501
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0103761   -0.0344730    0.0137208
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0028563   -0.0217883    0.0275008
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0334761    0.0017433    0.0652090
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0089080   -0.0410487    0.0232326
18-21 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0475377   -0.0889637   -0.0061117
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0055978   -0.0235401    0.0347356
18-21 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0091089   -0.0279510    0.0461688
18-21 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0134498   -0.0605567    0.0336570
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0056601   -0.0288953    0.0402155
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0280913   -0.0072218    0.0634043
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0377513   -0.0025735    0.0780761
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0281399   -0.0071111    0.0633909
21-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0237809   -0.0025322    0.0500939
21-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           -0.0313612   -0.0689640    0.0062415
21-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0192653   -0.0521062    0.0135756
21-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0146934   -0.0253225    0.0547094
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0229099   -0.0410022    0.0868219
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0041845   -0.0365081    0.0281391
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0051673   -0.1078280    0.1181625
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0273409   -0.0161522    0.0708341
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0136064   -0.0803508    0.0531380
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0626711   -0.1075326   -0.0178097
21-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)            0.0072886   -0.0371281    0.0517052
21-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.0566570   -0.0929746   -0.0203395
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0169225   -0.0288338    0.0626788
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0300013   -0.0578627   -0.0021399
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0235031   -0.0037698    0.0507759
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0159569   -0.0398236    0.0079097
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0080549   -0.0124874    0.0285971
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0182948   -0.0063954    0.0429851
21-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0101251   -0.0467618    0.0265117
21-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0135295   -0.0102218    0.0372808
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0241733   -0.0184015    0.0667482
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0196593   -0.0148252    0.0541438
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0002745   -0.0328510    0.0334000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0193531   -0.0130276    0.0517338
21-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0342609    0.0055984    0.0629234
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0179618   -0.0079568    0.0438805
21-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0054227   -0.0472669    0.0581123
21-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0282296   -0.0064010    0.0628601


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0368762   -0.0609082   -0.0128443
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0298081   -0.0773561    0.0177398
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0050806   -0.0212136    0.0313748
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                 0.0046219   -0.0206575    0.0299013
0-3 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0168076   -0.0507682    0.0171529
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0178336   -0.0301334    0.0658007
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0444288   -0.0797062   -0.0091513
0-3 months     ki1000108-IRC              INDIA                          [20-30)              NA                -0.0030056   -0.0262008    0.0201896
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0033842   -0.0410445    0.0342761
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0066044   -0.0241282    0.0109194
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0011474   -0.0104113    0.0127061
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0014633   -0.0146115    0.0116848
0-3 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0066692   -0.0326225    0.0192841
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0018880   -0.0202514    0.0164754
0-3 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0026789   -0.0093371    0.0039792
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0128869   -0.0201776   -0.0055962
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0158043   -0.0508400    0.0192314
0-3 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0130961   -0.0189908   -0.0072015
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0025886   -0.0089311    0.0037538
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0073226   -0.0081163    0.0227615
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0104212   -0.0190671    0.0399095
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0094474   -0.0060539    0.0249486
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0016111   -0.0152413    0.0120191
3-6 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0032324   -0.0346340    0.0281693
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0185126   -0.0597499    0.0227248
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0290646   -0.0013460    0.0594752
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0116656   -0.0150994    0.0384307
3-6 months     ki1000108-IRC              INDIA                          [20-30)              NA                 0.0135447   -0.0010172    0.0281067
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0100080   -0.0150177    0.0350336
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0061639   -0.0215789    0.0092511
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0057840   -0.0162527    0.0046848
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0032747   -0.0155107    0.0089614
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0069757   -0.0053558    0.0193071
3-6 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0003966   -0.0202275    0.0194343
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0036324   -0.0168164    0.0095516
3-6 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0019317   -0.0074284    0.0035649
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0002514   -0.0063281    0.0068309
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0006668   -0.0225748    0.0239083
3-6 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0023072   -0.0068182    0.0022039
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0148612    0.0076185    0.0221038
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0063564   -0.0176828    0.0049699
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0338474   -0.0610823   -0.0066125
6-9 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0132524    0.0009962    0.0255086
6-9 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0147440   -0.0101025    0.0395905
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0052229   -0.0264706    0.0369164
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0164346   -0.0166384    0.0495076
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0051197   -0.0136261    0.0238654
6-9 months     ki1000108-IRC              INDIA                          [20-30)              NA                 0.0011502   -0.0093362    0.0116366
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0060897   -0.0091465    0.0213259
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0064429   -0.0315326    0.0186469
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0045404   -0.0078017    0.0168825
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0023822   -0.0044757    0.0092402
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0091664   -0.0181985   -0.0001344
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0037412   -0.0155227    0.0080404
6-9 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0184787   -0.0417793    0.0048219
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0050486   -0.0092925    0.0193896
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0026944   -0.0085446    0.0139335
6-9 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0005024   -0.0051040    0.0040992
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0041105   -0.0100460    0.0018249
6-9 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0143831   -0.0044116    0.0331777
6-9 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0015603   -0.0056294    0.0025089
6-9 months     ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0010841   -0.0151991    0.0173674
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0012876   -0.0104110    0.0129861
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0194491   -0.0070269    0.0459251
9-12 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0075421   -0.0169771    0.0018929
9-12 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0096025   -0.0121132    0.0313183
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0097240   -0.0389696    0.0195215
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0459441   -0.0790303   -0.0128579
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0006696   -0.0146847    0.0160238
9-12 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0016953   -0.0064431    0.0098337
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0027118   -0.0169944    0.0224180
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0259365   -0.0813577    0.1332306
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0057921   -0.0155540    0.0039697
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0013078   -0.0082600    0.0056444
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0022503   -0.0059050    0.0104056
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0000605   -0.0106282    0.0105072
9-12 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0028125   -0.0221779    0.0165529
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0084826   -0.0044317    0.0213969
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0078464   -0.0006555    0.0163484
9-12 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0069124    0.0025780    0.0112468
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0037813   -0.0015227    0.0090854
9-12 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0076023   -0.0077219    0.0229265
9-12 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0002065   -0.0042684    0.0038554
9-12 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0140323   -0.0334908    0.0054262
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0038312   -0.0076755    0.0153379
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0023285   -0.0158384    0.0204955
12-15 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0034805   -0.0055792    0.0125403
12-15 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0012291   -0.0169340    0.0193922
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0049646   -0.0215817    0.0315109
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0143103   -0.0099135    0.0385341
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0115294   -0.0232127    0.0001539
12-15 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0061983   -0.0131839    0.0007873
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0009145   -0.0111112    0.0092823
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0229313   -0.0139718    0.0598344
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0101430   -0.0040713    0.0243572
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0103407    0.0034293    0.0172521
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0044697   -0.0024920    0.0114315
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0065453   -0.0048883    0.0179790
12-15 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0038350   -0.0093464    0.0170163
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0099464   -0.0084753    0.0283680
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0010087   -0.0061080    0.0081255
12-15 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0038039   -0.0686051    0.0609974
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0003482   -0.0077689    0.0070726
12-15 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0033208   -0.0116591    0.0183006
12-15 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0020474   -0.0293362    0.0334310
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0033904   -0.0126420    0.0058612
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0048209   -0.0133643    0.0230060
15-18 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0004151   -0.0069883    0.0078185
15-18 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0062501   -0.0098212    0.0223214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0215087   -0.0434844    0.0004670
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0029004   -0.0187272    0.0245280
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0008909   -0.0126038    0.0143857
15-18 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0007747   -0.0046821    0.0062316
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0040718   -0.0200417    0.0118981
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0037483   -0.0172358    0.0097393
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0007859   -0.0113527    0.0097809
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0065436   -0.0120237   -0.0010635
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0003622   -0.0055002    0.0062245
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0054072   -0.0174736    0.0066593
15-18 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0020802   -0.0147220    0.0105617
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0105846    0.0023303    0.0188389
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0052119   -0.0133791    0.0029554
15-18 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0100708   -0.0058371    0.0259787
15-18 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0091679   -0.0166318    0.0349675
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0017324   -0.0092390    0.0057743
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0049162   -0.0161058    0.0259382
18-21 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0015892   -0.0077998    0.0046215
18-21 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0101285   -0.0263330    0.0060761
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0113567   -0.0098768    0.0325901
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0166127   -0.0053082    0.0385335
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0079663   -0.0187252    0.0027926
18-21 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0055580   -0.0111833    0.0000674
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0042778   -0.0044457    0.0130013
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0020624   -0.0074240    0.0032993
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0043274   -0.0016149    0.0102696
18-21 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0021877   -0.0109713    0.0153466
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0014586   -0.0083790    0.0054617
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0020593   -0.0064443    0.0105629
18-21 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0049617   -0.0193084    0.0093849
18-21 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0024999   -0.0194233    0.0144236
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0057868   -0.0027836    0.0143571
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0129993    0.0002637    0.0257349
21-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0007033   -0.0050927    0.0064993
21-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0012630   -0.0170245    0.0144984
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0021461   -0.0161427    0.0204348
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0118627   -0.0081709    0.0318964
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0081552   -0.0170045    0.0006941
21-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0035867   -0.0088503    0.0016768
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0050615   -0.0132872    0.0031643
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0000834   -0.0057373    0.0055704
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0044366   -0.0016843    0.0105574
21-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0045735   -0.0076941    0.0168410
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0073582   -0.0030983    0.0178148
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0040146   -0.0046179    0.0126472
21-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0124443    0.0002139    0.0246747
21-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0091428   -0.0064650    0.0247505
