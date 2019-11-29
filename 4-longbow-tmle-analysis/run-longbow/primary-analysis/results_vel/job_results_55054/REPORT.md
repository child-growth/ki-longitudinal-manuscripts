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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        hdlvry    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  -------  -----  -----------------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            324    329  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              5    329  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          0            388    394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          1              6    394  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       0            213    318  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       1            105    318  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            140   1029  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            889   1029  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            478    640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            162    640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            562    725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            163    725  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1899   1925  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             26   1925  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0            113    473  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1            360    473  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          0           2961   4711  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          1           1750   4711  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             33    313  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            280    313  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            569   2483  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1914   2483  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            312    320  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              8    320  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          0            391    399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1              8    399  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       0            181    273  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       1             92    273  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            124    914  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            790    914  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            449    601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            152    601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            542    702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            160    702  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1551   1580  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             29   1580  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            101    437  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            336    437  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          0           2849   4609  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          1           1760   4609  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             28    276  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            248    276  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            406   1730  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1324   1730  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            314    322  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              8    322  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          0            402    410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1              8    410  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       0            201    299  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       1             98    299  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0            125    932  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1            807    932  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0             64    309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1            245    309  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0            430    576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            146    576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            541    693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            152    693  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1390   1412  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             22   1412  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0            106    448  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1            342    448  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          0           2535   4093  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          1           1558   4093  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0            715   2706  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1991   2706  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            317    325  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    325  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          0            395    403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1              8    403  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       0            218    323  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       1            105    323  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            130    939  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            809    939  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             60    298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            238    298  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            425    569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            144    569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            534    683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            149    683  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1011   1022  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             11   1022  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0             98    426  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1            328    426  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          0           2194   3522  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          1           1328   3522  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            780   2989  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2209   2989  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            324    332  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    332  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          0            385    392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1              7    392  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       0            195    296  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       1            101    296  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0            132    961  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1            829    961  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             62    300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1            238    300  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0            402    537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            135    537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            517    666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            149    666  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            737    743  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              6    743  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0            103    422  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1            319    422  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0            768   3005  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2237   3005  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            314    322  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    322  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          0            376    383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1              7    383  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       0            178    275  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       1             97    275  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0            125    966  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1            841    966  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             61    290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1            229    290  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0            398    533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            135    533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            464    605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            141    605  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            618    625  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              7    625  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0            112    446  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1            334    446  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0            753   2979  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2226   2979  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            299    307  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    307  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          0            373    380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1              7    380  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       0            174    254  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       1             80    254  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0            404    542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            138    542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            418    547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            129    547  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             10     10  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0     10  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0            105    419  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1            314    419  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            301    308  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              7    308  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          0            382    389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1              7    389  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       0             75    106  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       1             31    106  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            362    485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            123    485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            374    493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            119    493  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0             86    323  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1            237    323  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/c098b766-fb6f-461c-81f7-21e77b1f821b/a56290aa-c9fc-46da-8483-ed13deba1660/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c098b766-fb6f-461c-81f7-21e77b1f821b/a56290aa-c9fc-46da-8483-ed13deba1660/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c098b766-fb6f-461c-81f7-21e77b1f821b/a56290aa-c9fc-46da-8483-ed13deba1660/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7447108    0.7209313   0.7684903
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8320366    0.6241919   1.0398814
0-3 months     ki1000108-IRC              INDIA                          0                    NA                0.7681641    0.7483859   0.7879424
0-3 months     ki1000108-IRC              INDIA                          1                    NA                0.7567660    0.6579056   0.8556263
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                0.6949422    0.6664704   0.7234141
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                0.6862857    0.6479926   0.7245788
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.8244283    0.7971251   0.8517315
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.7887296    0.7681356   0.8093235
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9046036    0.8877347   0.9214725
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8834713    0.8531738   0.9137689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8883392    0.8717935   0.9048849
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8813460    0.8525155   0.9101766
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9215920    0.9109966   0.9321873
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9270289    0.8776863   0.9763716
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8561954    0.8244616   0.8879291
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8267949    0.8064443   0.8471455
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                0.8174931    0.8101420   0.8248442
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                0.7794217    0.7692993   0.7895442
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.9107872    0.7940614   1.0275131
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8509862    0.8339965   0.8679759
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.7164381    0.6859307   0.7469455
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.7467788    0.7311081   0.7624494
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4747175    0.4553582   0.4940767
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5058603    0.4129994   0.5987211
3-6 months     ki1000108-IRC              INDIA                          0                    NA                0.4681097    0.4507088   0.4855105
3-6 months     ki1000108-IRC              INDIA                          1                    NA                0.3664661    0.1929788   0.5399534
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                0.4850042    0.4613888   0.5086197
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                0.4603676    0.4275674   0.4931679
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4507056    0.4299263   0.4714850
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4431394    0.4249901   0.4612887
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4956130    0.4800429   0.5111831
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4697950    0.4468216   0.4927684
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4998368    0.4871855   0.5124881
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4962663    0.4734322   0.5191004
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4174516    0.4083942   0.4265089
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4437152    0.3994416   0.4879888
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4906833    0.4593937   0.5219729
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4995281    0.4841876   0.5148686
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                0.4838297    0.4777601   0.4898992
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                0.4547077    0.4462782   0.4631372
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4449086    0.4075392   0.4822779
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4404469    0.4268000   0.4540939
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4462577    0.4291079   0.4634074
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4374146    0.4271853   0.4476440
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2619658    0.2454955   0.2784361
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1989501    0.1276271   0.2702731
6-9 months     ki1000108-IRC              INDIA                          0                    NA                0.2603730    0.2466654   0.2740806
6-9 months     ki1000108-IRC              INDIA                          1                    NA                0.3760950    0.2417567   0.5104333
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                0.2712586    0.2523329   0.2901843
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                0.2153623    0.1922537   0.2384709
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1911143    0.1633476   0.2188810
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2037960    0.1847797   0.2228123
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2236059    0.1892613   0.2579506
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1895969    0.1716563   0.2075375
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2511006    0.2361658   0.2660353
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2476673    0.2288332   0.2665015
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2693685    0.2571094   0.2816275
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2584696    0.2380669   0.2788724
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2577908    0.2485634   0.2670181
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2596550    0.2148364   0.3044736
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1877853    0.1611496   0.2144210
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1886971    0.1742882   0.2031059
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                0.2815248    0.2751864   0.2878632
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                0.2591423    0.2511201   0.2671646
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2469310    0.2366620   0.2572000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2361218    0.2304613   0.2417823
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2125972    0.1951821   0.2300124
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2392568    0.0616339   0.4168797
9-12 months    ki1000108-IRC              INDIA                          0                    NA                0.2162807    0.2021569   0.2304045
9-12 months    ki1000108-IRC              INDIA                          1                    NA                0.0623226   -0.0545040   0.1791491
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2576469    0.2375363   0.2777575
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                0.2256031    0.1961186   0.2550876
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1920846    0.1638225   0.2203466
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1844100    0.1790793   0.1897407
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1333027    0.0896650   0.1769403
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1433079    0.1221344   0.1644814
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1812799    0.1699755   0.1925843
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1649471    0.1492371   0.1806572
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1988780    0.1870004   0.2107556
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1942237    0.1722452   0.2162021
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2070389    0.1964932   0.2175847
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1890106    0.1617554   0.2162658
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1435655    0.1170004   0.1701306
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1410197    0.1266505   0.1553889
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                0.2221445    0.2155008   0.2287881
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1979197    0.1883524   0.2074869
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1496741    0.1396728   0.1596754
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1511197    0.1462953   0.1559440
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1502255    0.1361293   0.1643216
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1695910    0.1001219   0.2390601
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.1816400    0.1686471   0.1946328
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.2097864    0.1392028   0.2803700
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1329523    0.1103689   0.1555356
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1423798    0.1124441   0.1723156
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1789038    0.1604939   0.1973137
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1853001    0.1773091   0.1932910
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1423031    0.0913831   0.1932232
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1805254    0.1636712   0.1973797
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1806707    0.1669819   0.1943596
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1782818    0.1551286   0.2014350
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1671442    0.1548824   0.1794060
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1553281    0.1349487   0.1757075
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1719049    0.1599267   0.1838830
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1069120    0.0965900   0.1172340
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1649087    0.1344409   0.1953765
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1743043    0.1586425   0.1899661
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1391575    0.1299900   0.1483249
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1293673    0.1244773   0.1342573
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1529189    0.1383405   0.1674972
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1354447    0.1004720   0.1704174
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.1620456    0.1483183   0.1757730
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.0752143   -0.0004408   0.1508695
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0788002    0.0610590   0.0965413
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1110547    0.0865198   0.1355896
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1644006    0.1491061   0.1796951
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1818906    0.1658538   0.1979273
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1754942    0.1395155   0.2114728
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1625084    0.1447325   0.1802843
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1554532    0.1415512   0.1693552
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1606446    0.1372019   0.1840874
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1638266    0.1513038   0.1763495
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1510836    0.1322663   0.1699009
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1684817    0.1536929   0.1832705
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1023443    0.0206499   0.1840388
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2597228    0.2303845   0.2890610
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2217909    0.2039495   0.2396324
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1612236    0.1509668   0.1714804
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1605945    0.1547516   0.1664374
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1331292    0.1176263   0.1486322
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2210854    0.1408832   0.3012876
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.1594721    0.1458733   0.1730708
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.1327141    0.0618623   0.2035659
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1326324    0.1138591   0.1514058
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1275830    0.0978283   0.1573376
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1312190    0.1174744   0.1449635
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1366221    0.1160889   0.1571554
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1421726    0.1298253   0.1545199
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1472943    0.1248055   0.1697831
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1171833    0.0883693   0.1459973
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1555783    0.1363613   0.1747952
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1510487    0.1368978   0.1651997
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0607284   -0.0304102   0.1518671
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1778672    0.1637598   0.1919747
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1704662    0.1183535   0.2225789
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.2024366    0.1745248   0.2303485
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1701418    0.1365211   0.2037625
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1437115    0.1308114   0.1566115
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1424051    0.1176146   0.1671956
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1750852    0.1603493   0.1898212
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1737028    0.1491078   0.1982977
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2036801    0.1631366   0.2442236
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1668080    0.1352461   0.1983699


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7460379   0.7222497   0.7698262
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.6924874   0.6694331   0.7155417
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7930247   0.7714336   0.8146158
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9216206   0.9112258   0.9320154
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8319468   0.8147027   0.8491909
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8050648   0.7995520   0.8105776
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8546759   0.8357063   0.8736456
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7398042   0.7258286   0.7537798
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4754960   0.4564711   0.4945210
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.4760628   0.4571294   0.4949963
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4443963   0.4287483   0.4600443
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4178504   0.4089549   0.4267458
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4972214   0.4835230   0.5109198
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4750981   0.4704988   0.4796973
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4413289   0.4280006   0.4546572
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4395443   0.4307762   0.4483123
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2604002   0.2442074   0.2765930
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.2528609   0.2379300   0.2677918
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2039879   0.1893738   0.2186020
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2577075   0.2486414   0.2667736
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1883531   0.1758056   0.2009007
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2731799   0.2683635   0.2779963
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2388118   0.2335935   0.2440301
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2132535   0.1956969   0.2308100
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2476983   0.2310822   0.2643145
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1871662   0.1818903   0.1924421
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2066959   0.1963913   0.2170006
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1418215   0.1291487   0.1544943
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2142235   0.2092036   0.2192434
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1508143   0.1463823   0.1552463
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1506921   0.1368354   0.1645489
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1362566   0.1182431   0.1542701
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1865956   0.1780953   0.1950959
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1713800   0.1596910   0.1830691
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1715656   0.1577965   0.1853347
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1321782   0.1277028   0.1366537
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1524847   0.1382409   0.1667286
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0887281   0.0744394   0.1030168
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1779095   0.1621370   0.1936820
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1677410   0.1531677   0.1823142
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2310705   0.2157341   0.2464069
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1602098   0.1551426   0.1652770
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1354212   0.1200977   0.1507448
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1290041   0.1131497   0.1448584
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1447789   0.1288688   0.1606890
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1489960   0.1349311   0.1630609
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1933736   0.1711433   0.2156039
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1782064   0.1529581   0.2034548


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0873258   -0.1218748    0.2965264
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.0113982   -0.1122175    0.0894212
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0086565   -0.0559130    0.0386000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0356987   -0.0535277   -0.0178697
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0211322   -0.0558551    0.0135906
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0069931   -0.0399357    0.0259495
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0054370   -0.0450227    0.0558967
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0294004   -0.0669612    0.0081603
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0380714   -0.0505362   -0.0256066
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0598011   -0.1757887    0.0561865
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0303407   -0.0031739    0.0638552
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0311428   -0.0637145    0.1260001
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.1016436   -0.2760014    0.0727142
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0246366   -0.0651389    0.0158657
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0075662   -0.0377288    0.0225963
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0258180   -0.0535714    0.0019354
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0035705   -0.0297362    0.0225952
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0262637   -0.0189250    0.0714523
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0088448   -0.0259039    0.0435935
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0291220   -0.0394502   -0.0187938
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0044616   -0.0422857    0.0333625
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0088430   -0.0286670    0.0109810
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0630157   -0.1362157    0.0101843
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                  0.1157220   -0.0193138    0.2507578
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0558963   -0.0859191   -0.0258736
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0126817   -0.0274554    0.0528188
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0340090   -0.0727693    0.0047513
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0034332   -0.0274209    0.0205545
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0108988   -0.0346904    0.0128927
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0018643   -0.0439301    0.0476587
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0009118   -0.0295138    0.0313373
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0223825   -0.0325522   -0.0122128
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0108092   -0.0221319    0.0005134
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0266596   -0.1518150    0.2051341
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.1539581   -0.2716353   -0.0362809
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0320438   -0.0677489    0.0036613
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0076746   -0.0391379    0.0237887
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0100052   -0.0384365    0.0584469
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0163327   -0.0357322    0.0030667
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0046543   -0.0295395    0.0202308
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0180283   -0.0471957    0.0111391
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0025458   -0.0326711    0.0275795
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0242248   -0.0358847   -0.0125648
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0014455   -0.0094797    0.0123708
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0193655   -0.0515193    0.0902503
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                  0.0281464   -0.0436230    0.0999159
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0094275   -0.0283399    0.0471949
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0063963   -0.0137608    0.0265533
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0382223   -0.0156836    0.0921282
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0023889   -0.0293472    0.0245694
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0118161   -0.0355982    0.0119659
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0649929   -0.0808049   -0.0491809
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0093956   -0.0249451    0.0437362
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0097902   -0.0198339    0.0002535
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0174742   -0.0553638    0.0204154
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.0868313   -0.1637218   -0.0099408
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0322545    0.0017511    0.0627579
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0174900   -0.0028731    0.0378531
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0129858   -0.0536286    0.0276570
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0051915   -0.0221195    0.0325025
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0127430   -0.0353765    0.0098904
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0661374   -0.1491596    0.0168849
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0379319   -0.0723672   -0.0034965
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0006291   -0.0123811    0.0111229
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0879562    0.0062694    0.1696430
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0267579   -0.0989030    0.0453871
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0050495   -0.0408020    0.0307030
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0054032   -0.0193489    0.0301553
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0051216   -0.0206018    0.0308451
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0383950    0.0038810    0.0729089
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0903203   -0.1825510    0.0019104
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0074010   -0.0613895    0.0465874
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0322949   -0.0761239    0.0115342
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0013064   -0.0292998    0.0266870
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0013825   -0.0300887    0.0273237
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0368721   -0.0887677    0.0150236


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0013271   -0.0040291    0.0066834
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.0001736   -0.0026978    0.0023507
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0024548   -0.0182147    0.0133051
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0314036   -0.0475345   -0.0152726
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0029564   -0.0118432    0.0059304
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0038172   -0.0113368    0.0037023
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0000286   -0.0012041    0.0012614
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0242486   -0.0533846    0.0048875
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0124283   -0.0172653   -0.0075913
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0561113   -0.1634539    0.0512313
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0233661   -0.0026638    0.0493961
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0007786   -0.0016521    0.0032093
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0020380   -0.0066161    0.0025402
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0089414   -0.0225595    0.0046767
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0063093   -0.0321423    0.0195237
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0065519   -0.0134815    0.0003777
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0017824   -0.0077504    0.0041856
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0003988   -0.0006921    0.0014896
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0065381   -0.0205024    0.0335787
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0087316   -0.0126030   -0.0048602
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0035797   -0.0374908    0.0303314
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0067134   -0.0220757    0.0086490
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0015656   -0.0036870    0.0005558
6-9 months     ki1000108-IRC              INDIA                          0                    NA                 0.0022580   -0.0014572    0.0059732
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0183977   -0.0286965   -0.0080989
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0128736   -0.0211446    0.0468917
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0253874   -0.0563721    0.0055974
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0019352   -0.0080639    0.0041934
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0018588   -0.0071365    0.0034189
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0000832   -0.0012696    0.0011031
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0005678   -0.0228814    0.0240170
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0083449   -0.0124619   -0.0042279
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0081192   -0.0165000    0.0002616
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0006562   -0.0038282    0.0051407
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0030562   -0.0066704    0.0005579
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0099486   -0.0216041    0.0017070
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0049184   -0.0319925    0.0221557
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0077445   -0.0314755    0.0469646
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0037483   -0.0086786    0.0011821
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0010331   -0.0064302    0.0043640
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003430   -0.0010517    0.0003658
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0017440   -0.0248328    0.0213448
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0079209   -0.0121886   -0.0036532
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0011402   -0.0070546    0.0093350
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0004666   -0.0013341    0.0022674
12-15 months   ki1000108-IRC              INDIA                          0                    NA                 0.0005026   -0.0013293    0.0023345
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0033043   -0.0097968    0.0164054
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0076918   -0.0086688    0.0240524
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0329059   -0.0114717    0.0772834
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0006384   -0.0072919    0.0060152
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0030840   -0.0084108    0.0022429
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0005248   -0.0011005    0.0000509
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0066569   -0.0195329    0.0328467
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0069793   -0.0144491    0.0004906
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0004341   -0.0014270    0.0005587
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0015870   -0.0038354    0.0006615
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0099279   -0.0009632    0.0208191
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0135089   -0.0030497    0.0300675
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0106096   -0.0432584    0.0220392
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0008983   -0.0058269    0.0076234
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0026294   -0.0078946    0.0026359
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007407   -0.0028869    0.0014055
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0286522   -0.0549847   -0.0023197
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0010138   -0.0099002    0.0078726
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0022920   -0.0003530    0.0049370
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0004929   -0.0023326    0.0013467
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0036284   -0.0152185    0.0079617
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0012692   -0.0050565    0.0075950
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0004883   -0.0055220    0.0064986
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0275956    0.0016524    0.0535388
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0020527   -0.0048066    0.0007011
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0001332   -0.0014864    0.0012201
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0090631   -0.0226087    0.0044826
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0017410   -0.0087798    0.0052978
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0000352   -0.0068755    0.0068052
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0254737   -0.0637154    0.0127679
