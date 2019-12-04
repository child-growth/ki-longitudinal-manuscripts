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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             88     88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              0     88  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0            370    377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1              7    377  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0            198    301  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1            103    301  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            140   1025  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            885   1025  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            478    640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            162    640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            558    721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            163    721  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0            113    473  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1            360    473  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          0           2863   4580  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          1           1717   4580  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             33    313  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            280    313  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            574   2500  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1926   2500  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            298    305  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              7    305  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0            389    397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1              8    397  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0            186    278  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1             92    278  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            124    919  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            795    919  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            446    598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            152    598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            536    695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            159    695  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1550   1578  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             28   1578  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            101    437  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            336    437  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          0           2754   4481  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          1           1727   4481  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             28    275  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            247    275  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            412   1752  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1340   1752  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            303    310  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              7    310  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0            399    407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1              8    407  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0            202    302  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1            100    302  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0            125    938  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1            813    938  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0             65    314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1            249    314  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0            420    565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            145    565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            537    688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            151    688  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1383   1406  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             23   1406  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0            107    452  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1            345    452  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          0           2514   4079  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          1           1565   4079  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0            707   2687  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1980   2687  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            307    315  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    315  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0            392    400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1              8    400  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0            218    324  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1            106    324  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            130    944  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            814    944  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             62    311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            249    311  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            422    566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            144    566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            526    674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            148    674  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1010   1021  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             11   1021  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0            102    441  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1            339    441  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          0           2174   3504  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          1           1330   3504  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            773   2973  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2200   2973  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            319    327  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    327  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0            383    390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1              7    390  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0            194    295  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1            101    295  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0            132    964  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1            832    964  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             64    303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1            239    303  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0            399    532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            133    532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            512    660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            148    660  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            737    743  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              6    743  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0            105    438  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1            333    438  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0            768   3001  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2233   3001  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            311    319  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    319  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0            375    382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1              7    382  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0            178    276  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1             98    276  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0            125    966  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1            841    966  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             61    291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1            230    291  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0            395    528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            133    528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            463    604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            141    604  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            617    624  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              7    624  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0            111    448  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1            337    448  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0            760   3015  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2255   3015  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            295    303  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    303  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0            372    379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1              7    379  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0            173    253  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1             80    253  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0            404    541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            137    541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            417    546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            129    546  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              8      8  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      8  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0            103    417  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1            314    417  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            299    306  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              7    306  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0            382    389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1              7    389  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0             75    106  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1             31    106  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            352    471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            119    471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            371    490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            119    490  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0             85    322  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1            237    322  y_rate_len       


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
![](/tmp/6e6242e8-170e-4c22-93c3-dc66319b15e2/75949814-0d69-41ff-bca8-0f52ad9c0ce8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6e6242e8-170e-4c22-93c3-dc66319b15e2/75949814-0d69-41ff-bca8-0f52ad9c0ce8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6e6242e8-170e-4c22-93c3-dc66319b15e2/75949814-0d69-41ff-bca8-0f52ad9c0ce8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1431413   3.0310208   3.2552617
0-3 months     ki1000108-IRC              INDIA                          1                    NA                2.8796715   2.1905479   3.5687951
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                3.0640418   2.9517768   3.1763069
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                3.1056739   2.9820528   3.2292950
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.3029610   3.1881850   3.4177371
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.4016818   3.3654963   3.4378673
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.2715858   3.2280569   3.3151147
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.2251426   3.1552325   3.2950527
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.1450696   3.1038792   3.1862601
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.0897794   3.0121669   3.1673920
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                3.6469955   3.5498959   3.7440950
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                3.5994196   3.5371602   3.6616791
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5164014   3.4941085   3.5386942
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4412857   3.4124792   3.4700922
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.5821253   3.3438162   3.8204345
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6343422   3.5672335   3.7014508
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                2.8222516   2.6899405   2.9545626
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.0699698   3.0109886   3.1289509
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8068881   1.7044670   1.9093092
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.9008428   1.2479048   2.5537808
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8829475   1.8178679   1.9480270
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.7701196   1.5123539   2.0278853
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0859193   2.0127740   2.1590647
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.1281657   2.0292440   2.2270874
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                2.0424903   1.9971075   2.0878730
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.8993966   1.8277239   1.9710693
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9606366   1.9211198   2.0001534
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9742938   1.9077388   2.0408488
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                2.0168582   1.9744673   2.0592490
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9693058   1.9002409   2.0383707
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7925440   1.7552458   1.8298423
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.6164756   1.3967684   1.8361828
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7004914   1.6120787   1.7889040
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7190682   1.6711503   1.7669861
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8754953   1.8557566   1.8952340
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8069420   1.7811321   1.8327519
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.9778411   1.7307114   2.2249707
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.8791796   1.8180582   1.9403009
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8936222   1.8185386   1.9687058
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8990506   1.8667764   1.9313249
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.2152178   1.1352239   1.2952117
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.3339555   1.1597547   1.5081564
6-9 months     ki1000108-IRC              INDIA                          0                    NA                1.3762111   1.3267538   1.4256684
6-9 months     ki1000108-IRC              INDIA                          1                    NA                1.1823688   0.9608982   1.4038394
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                1.1989060   1.1394976   1.2583144
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                1.1508467   1.0718801   1.2298132
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.1562896   1.0815535   1.2310257
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.2150612   1.1749837   1.2551386
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.1463302   1.0477207   1.2449398
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.1388527   1.0938637   1.1838416
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.2831902   1.2541204   1.3122599
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.2795786   1.2279406   1.3312166
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.3306385   1.2962523   1.3650248
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.3002103   1.2436616   1.3567591
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3197895   1.2820777   1.3575014
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3619389   1.1209339   1.6029440
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.3571410   1.2649195   1.4493625
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.3000036   1.2521313   1.3478759
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                1.1900837   1.1724770   1.2076903
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                1.1571660   1.1336742   1.1806578
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.3725303   1.3295527   1.4155080
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.3104752   1.2851441   1.3358062
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8917995   0.8225070   0.9610920
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.2413565   0.9347461   1.5479668
9-12 months    ki1000108-IRC              INDIA                          0                    NA                1.1219792   1.0821939   1.1617645
9-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1966892   0.9310906   1.4622877
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                0.9272634   0.8827694   0.9717574
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                0.8950161   0.8388614   0.9511709
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0079670   0.9278052   1.0881288
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.9893144   0.9588609   1.0197679
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7161325   0.5179319   0.9143330
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8330928   0.6723223   0.9938634
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.0535451   1.0224070   1.0846833
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.0429737   0.9872162   1.0987313
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.1206841   1.0909045   1.1504637
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.1355985   1.0797853   1.1914117
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0857795   1.0500004   1.1215587
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9219589   0.7846234   1.0592944
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.9556531   0.8741529   1.0371532
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.0135909   0.9774059   1.0497759
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0028306   0.9839537   1.0217075
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.9581526   0.9332046   0.9831007
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.0752400   1.0376612   1.1128189
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.0757566   1.0538016   1.0977116
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8601154   0.7887380   0.9314928
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5934616   0.3213238   0.8655994
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.9543792   0.9120141   0.9967444
12-15 months   ki1000108-IRC              INDIA                          1                    NA                1.0086837   0.8206033   1.1967641
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                1.0099521   0.9686698   1.0512345
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                0.9916312   0.9388282   1.0444342
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7974364   0.7359708   0.8589020
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.8218553   0.7715855   0.8721250
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.9590192   0.6873348   1.2307036
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0474246   0.9592293   1.1356199
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9635348   0.9329936   0.9940760
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9456912   0.8946017   0.9967807
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.9752846   0.9467183   1.0038508
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9613882   0.9114987   1.0112778
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9277016   0.8886315   0.9667717
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8904994   0.7713509   1.0096478
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8898391   0.8172506   0.9624275
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8740517   0.8442455   0.9038580
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.9499629   0.9149139   0.9850119
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.9275281   0.9083327   0.9467234
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7353801   0.6709408   0.7998194
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6704147   0.3997877   0.9410416
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.8653842   0.8255051   0.9052633
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.5236251   0.3617510   0.6854993
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8636100   0.8215797   0.9056403
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8010276   0.7514559   0.8505994
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0637161   0.9983131   1.1291191
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.8773807   0.8573835   0.8973779
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7966732   0.7107490   0.8825973
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7930338   0.7535864   0.8324813
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8563769   0.8291287   0.8836252
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8577591   0.8051694   0.9103488
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.9224463   0.8960549   0.9488376
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9020348   0.8550608   0.9490089
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9300827   0.8860280   0.9741374
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7683489   0.5222857   1.0144120
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7016417   0.6176648   0.7856186
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7681910   0.7299728   0.8064093
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8516135   0.8128168   0.8904102
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8569030   0.8372087   0.8765974
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7077685   0.6424635   0.7730734
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4096750   0.2282439   0.5911061
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.7615555   0.7224418   0.8006691
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.6666258   0.5226628   0.8105888
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7267936   0.6824954   0.7710917
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7019375   0.6477588   0.7561163
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8566712   0.8291348   0.8842077
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7903846   0.7429919   0.8377772
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7997059   0.7726264   0.8267854
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.7895420   0.7440086   0.8350754
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.0074651   0.9272956   1.0876346
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8799713   0.8395416   0.9204011
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6994182   0.6391684   0.7596680
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7555657   0.3391573   1.1719740
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.7094320   0.6676136   0.7512504
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6527954   0.5089943   0.7965965
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6542173   0.6092650   0.6991696
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6335238   0.5532140   0.7138335
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7574718   0.7282744   0.7866693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7797920   0.7273136   0.8322705
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7961505   0.7674381   0.8248629
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8113549   0.7631731   0.8595367
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7562683   0.6865045   0.8260321
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8178536   0.7585050   0.8772023


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                3.0782627   2.9950537   3.1614717
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.4022425   3.3615716   3.4429134
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.6065886   3.5542997   3.6588775
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.4928630   3.4759520   3.5097739
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6225614   3.5568279   3.6882950
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.0098298   2.9559181   3.0637415
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8090444   1.7078462   1.9102427
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0964778   2.0380696   2.1548860
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9057893   1.8442152   1.9673633
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7898054   1.7530632   1.8265475
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7165753   1.6754325   1.7577181
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8571473   1.8427398   1.8715548
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.8747997   1.8153916   1.9342078
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8985588   1.8677350   1.9293826
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2178990   1.1397587   1.2960393
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1782840   1.1310763   1.2254917
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2213254   1.1902976   1.2523532
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3208993   1.2838000   1.3579985
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3143024   1.2716844   1.3569203
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1799194   1.1665767   1.1932622
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.3272128   1.3055780   1.3488477
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9006772   0.8324254   0.9689289
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9171111   0.8817992   0.9524229
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9865891   0.9598365   1.0133416
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0841292   1.0490852   1.1191732
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.0006065   0.9668961   1.0343169
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9865891   0.9721570   1.0010213
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0744194   1.0555407   1.0932981
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8535918   0.7835242   0.9236593
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                1.0107552   0.9781087   1.0434018
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8161882   0.7765985   0.8557780
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9274012   0.8891908   0.9656115
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8815392   0.8515745   0.9115039
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9336283   0.9165436   0.9507131
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7337508   0.6705522   0.7969495
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8381895   0.8057813   0.8705977
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8886052   0.8682282   0.9089822
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9282684   0.8848562   0.9716806
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7536062   0.7171842   0.7900282
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8551359   0.8372482   0.8730235
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6998980   0.6359097   0.7638864
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7189044   0.6845146   0.7532942
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9054330   0.8696956   0.9411703
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7007026   0.6410363   0.7603689
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8018481   0.7541733   0.8495230


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.2634698   -0.9616548    0.4347152
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0416321   -0.1258903    0.2091545
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0987208   -0.0055617    0.2030033
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0464432   -0.1288645    0.0359781
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0552902   -0.1433828    0.0328025
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0475758   -0.1632015    0.0680498
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0751157   -0.1110608   -0.0391705
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0522168   -0.1939126    0.2983463
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.2477182    0.1045027    0.3909337
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0939547   -0.5669675    0.7548769
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.1128279   -0.3786822    0.1530264
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0422464   -0.0813374    0.1658301
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.1430936   -0.2496258   -0.0365615
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0136572   -0.0637596    0.0910740
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0475524   -0.1284162    0.0333114
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1760685   -0.3989622    0.0468253
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0185768   -0.0818120    0.1189657
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0685533   -0.1010357   -0.0360710
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0986615   -0.3484199    0.1510968
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0054284   -0.0751118    0.0859686
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1187377   -0.0729520    0.3104275
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.1938423   -0.4207680    0.0330833
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0480593   -0.1472784    0.0511597
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0587716   -0.0319456    0.1494887
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0074776   -0.1160211    0.1010660
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0036116   -0.0629452    0.0557221
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0304282   -0.0968738    0.0360174
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0421494   -0.2018681    0.2861670
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0571374   -0.1614678    0.0471930
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0329177   -0.0622571   -0.0035783
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0620551   -0.1122002   -0.0119101
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3495569    0.0352142    0.6638997
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0747099   -0.1938519    0.3432718
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0322473   -0.1034975    0.0390029
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0186526   -0.1054939    0.0681886
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.1169604   -0.1401394    0.3740601
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0105714   -0.0747106    0.0535678
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0149144   -0.0483380    0.0781668
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1638207   -0.3057574   -0.0218840
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0579378   -0.0308140    0.1466896
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0446779   -0.0759245   -0.0134314
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0005166   -0.0427717    0.0438048
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2666538   -0.5479965    0.0146889
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                  0.0543045   -0.1384882    0.2470972
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0183210   -0.0857079    0.0490660
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0244189   -0.0653635    0.1142013
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0884054   -0.2001888    0.3769996
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0178436   -0.0774263    0.0417391
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0138963   -0.0717349    0.0439422
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0372022   -0.1625929    0.0881885
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0157873   -0.0941076    0.0625330
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0224348   -0.0618354    0.0169657
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0649654   -0.3431585    0.2132277
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.3417590   -0.5084731   -0.1750450
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0625824   -0.1274630    0.0022982
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.1863354   -0.2640825   -0.1085883
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0036393   -0.0982284    0.0909497
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0013821   -0.0579221    0.0606864
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0204114   -0.0743367    0.0335138
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1617339   -0.4117096    0.0882419
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0665494   -0.0258267    0.1589254
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0052895   -0.0369226    0.0475016
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2980935   -0.4909198   -0.1052672
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0949297   -0.2441115    0.0542522
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0248560   -0.0949208    0.0452088
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0662867   -0.1211760   -0.0113973
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0101639   -0.0628407    0.0425129
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1274938   -0.2174945   -0.0374930
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0561475   -0.3645970    0.4768920
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0566366   -0.2063949    0.0931216
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0206935   -0.1134406    0.0720536
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0223202   -0.0378816    0.0825220
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0152044   -0.0409599    0.0713687
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0615853   -0.0302865    0.1534571


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.0048920   -0.0227130    0.0129290
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0142208   -0.0439971    0.0724388
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0992815    0.0121429    0.1864200
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0139048   -0.0348549    0.0070453
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0158248   -0.0357533    0.0041038
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0404069   -0.1289084    0.0480947
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0235384   -0.0377929   -0.0092839
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0404361   -0.1833411    0.2642133
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1875782    0.0747185    0.3004379
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0021563   -0.0144422    0.0187549
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0022736   -0.0091009    0.0045537
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0105585   -0.0305110    0.0516279
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1367010   -0.2324581   -0.0409438
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0051091   -0.0145072    0.0247254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0110609   -0.0296358    0.0075140
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0027387   -0.0080853    0.0026079
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0160839   -0.0622613    0.0944291
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0183481   -0.0313520   -0.0053441
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1030414   -0.3381499    0.1320672
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0049366   -0.0580429    0.0679160
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0026812   -0.0024990    0.0078613
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0038102   -0.0100580    0.0024377
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0206220   -0.0538047    0.0125607
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0650358   -0.0074076    0.1374792
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0037148   -0.0913098    0.0838802
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0007717   -0.0158932    0.0143498
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0023690   -0.0171521    0.0124140
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0011097   -0.0042399    0.0064594
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0428386   -0.1237001    0.0380229
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0101643   -0.0218150    0.0014864
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0453175   -0.0822542   -0.0083808
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0088776   -0.0011590    0.0189143
9-12 months    ki1000108-IRC              INDIA                          0                    NA                 0.0014942   -0.0052978    0.0082862
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0101523   -0.0337619    0.0134572
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0213779   -0.0946880    0.0519321
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0945324   -0.1124452    0.3015100
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0035701   -0.0196318    0.0124915
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0027904   -0.0110372    0.0166180
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0016503   -0.0050868    0.0017861
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0449535   -0.0241646    0.1140715
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0162415   -0.0285903   -0.0038926
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0008206   -0.0332103    0.0315690
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0065236   -0.0148584    0.0018111
12-15 months   ki1000108-IRC              INDIA                          0                    NA                 0.0009747   -0.0038981    0.0058475
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0008031   -0.0227953    0.0244015
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0187519   -0.0585223    0.0960260
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0677633   -0.1618004    0.2973270
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0037848   -0.0186097    0.0110402
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0041451   -0.0169897    0.0086995
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003004   -0.0034443    0.0028435
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0082999   -0.0663272    0.0497274
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0163346   -0.0459732    0.0133040
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0016292   -0.0086946    0.0054362
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0062626   -0.0124719   -0.0000533
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0254205   -0.0487895   -0.0020515
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1751109   -0.2486588   -0.1015629
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0018870   -0.0783703    0.0745962
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0002771   -0.0150756    0.0145214
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0047295   -0.0173046    0.0078456
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018143   -0.0082053    0.0045766
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0519645   -0.0159504    0.1198795
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0035223   -0.0289705    0.0360152
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0078705   -0.0152849   -0.0004560
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0017533   -0.0056992    0.0021925
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0078892   -0.0297851    0.0140068
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0173336   -0.0315815   -0.0030856
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0019304   -0.0144004    0.0105396
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1020322   -0.1716198   -0.0324445
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0012844   -0.0092763    0.0118451
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0010192   -0.0048373    0.0027990
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0048763   -0.0296880    0.0199354
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0056672   -0.0094689    0.0208033
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0031848   -0.0103033    0.0166730
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0455798   -0.0224920    0.1136516
