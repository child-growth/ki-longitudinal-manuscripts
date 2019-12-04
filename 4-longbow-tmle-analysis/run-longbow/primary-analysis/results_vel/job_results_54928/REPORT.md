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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             88     88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              0     88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0            370    377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1              7    377  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0            198    301  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1            103    301  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            140   1025  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            885   1025  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            478    640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            162    640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            558    721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            163    721  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0            113    473  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1            360    473  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          0           2863   4580  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          1           1717   4580  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             33    313  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            280    313  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            574   2500  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1926   2500  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            298    305  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              7    305  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0            389    397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1              8    397  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0            186    278  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1             92    278  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            124    919  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            795    919  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            446    598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            152    598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            536    695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            159    695  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1550   1578  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             28   1578  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            101    437  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            336    437  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          0           2754   4481  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          1           1727   4481  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             28    275  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            247    275  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            412   1752  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1340   1752  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            303    310  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              7    310  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0            399    407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1              8    407  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0            202    302  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1            100    302  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0            125    938  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1            813    938  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0             65    314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1            249    314  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0            420    565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            145    565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            537    688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            151    688  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1383   1406  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             23   1406  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0            107    452  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1            345    452  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          0           2514   4079  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          1           1565   4079  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0            707   2687  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1980   2687  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            307    315  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    315  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0            392    400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1              8    400  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0            218    324  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1            106    324  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            130    944  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            814    944  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             62    311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            249    311  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            422    566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            144    566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            526    674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            148    674  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1010   1021  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             11   1021  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0            102    441  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1            339    441  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          0           2174   3504  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          1           1330   3504  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            773   2973  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2200   2973  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            319    327  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    327  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0            383    390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1              7    390  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0            194    295  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1            101    295  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0            132    964  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1            832    964  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             64    303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1            239    303  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0            399    532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            133    532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            512    660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            148    660  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            737    743  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              6    743  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0            105    438  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1            333    438  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0            768   3001  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2233   3001  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            311    319  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    319  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0            375    382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1              7    382  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0            178    276  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1             98    276  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0            125    966  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1            841    966  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             61    291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1            230    291  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0            395    528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            133    528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            463    604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            141    604  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            617    624  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              7    624  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0            111    448  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1            337    448  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0            760   3015  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2255   3015  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            295    303  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    303  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0            372    379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1              7    379  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0            173    253  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1             80    253  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0            404    541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            137    541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            417    546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            129    546  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              8      8  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      8  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0            103    417  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1            314    417  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            299    306  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              7    306  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0            382    389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1              7    389  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0             75    106  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1             31    106  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            352    471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            119    471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            371    490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            119    490  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0             85    322  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1            237    322  y_rate_haz       


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
![](/tmp/d8403e59-f1ff-4d0a-9d62-ff80f88c4ba4/345066cf-e4e7-4562-a2af-1b0a3179633f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d8403e59-f1ff-4d0a-9d62-ff80f88c4ba4/345066cf-e4e7-4562-a2af-1b0a3179633f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d8403e59-f1ff-4d0a-9d62-ff80f88c4ba4/345066cf-e4e7-4562-a2af-1b0a3179633f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2534572   -0.3094574   -0.1974571
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.3810913   -0.7298392   -0.0323434
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.2301728   -0.2876700   -0.1726756
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.1886085   -0.2499705   -0.1272465
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1556590   -0.2174452   -0.0938729
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0964364   -0.1124183   -0.0804545
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1836277   -0.2039951   -0.1632603
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2049744   -0.2385584   -0.1713905
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2258012   -0.2456739   -0.2059284
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2532544   -0.2908574   -0.2156515
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0066996   -0.0581801    0.0447809
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0295286   -0.0607384    0.0016811
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0592105   -0.0703245   -0.0480966
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0930679   -0.1075521   -0.0785838
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0367453   -0.1492228    0.0757322
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0329153    0.0050102    0.0608203
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3695196   -0.4372835   -0.3017557
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.2410367   -0.2722605   -0.2098130
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0970669   -0.1455086   -0.0486252
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0276755   -0.3235909    0.2682399
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0508820   -0.0815441   -0.0202200
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.1009918   -0.2358742    0.0338905
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0620504    0.0277420    0.0963588
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0824950    0.0349514    0.1300386
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0191390   -0.0022280    0.0405060
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0335406   -0.0664927   -0.0005884
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0308909   -0.0495201   -0.0122617
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0177466   -0.0488221    0.0133289
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0305055    0.0108983    0.0501126
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0190281   -0.0131284    0.0511846
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0861009   -0.1034038   -0.0687980
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1596245   -0.2625271   -0.0567219
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1611768   -0.2008744   -0.1214792
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1580726   -0.1807503   -0.1353949
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0570519   -0.0662531   -0.0478507
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0829907   -0.0949907   -0.0709908
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0203856   -0.1102167    0.0694455
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0270383   -0.0554369    0.0013602
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0121434   -0.0467063    0.0224195
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0081713   -0.0229892    0.0066465
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0827477   -0.1180104   -0.0474851
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0385031   -0.1270723    0.0500662
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0147169   -0.0366947    0.0072608
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0936122   -0.1910686    0.0038443
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0795714   -0.1055247   -0.0536181
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0994436   -0.1343892   -0.0644980
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1080939   -0.1377547   -0.0784332
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0801489   -0.0980385   -0.0622593
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1121942   -0.1582005   -0.0661878
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1041437   -0.1245606   -0.0837269
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0617182   -0.0742271   -0.0492093
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0597256   -0.0816312   -0.0378200
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0301177   -0.0450286   -0.0152069
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0338224   -0.0591271   -0.0085177
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0539781   -0.0705371   -0.0374190
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0248448   -0.1290428    0.0793532
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0270778   -0.0671844    0.0130289
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0498746   -0.0705891   -0.0291601
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0995552   -0.1072992   -0.0918113
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1065164   -0.1170099   -0.0960230
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0082858   -0.0271720    0.0106004
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0341027   -0.0450927   -0.0231128
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1217715   -0.1509046   -0.0926385
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0120216   -0.1194109    0.1434541
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0369856   -0.0541299   -0.0198412
9-12 months    ki1000108-IRC              INDIA                          1                    NA                 0.0057282   -0.1005838    0.1120403
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0984481   -0.1170394   -0.0798569
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.1022668   -0.1262239   -0.0783097
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0787853   -0.1138281   -0.0437425
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0835926   -0.0972623   -0.0699230
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1978680   -0.2762349   -0.1195011
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1371947   -0.2018771   -0.0725123
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0623702   -0.0750575   -0.0496829
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0642758   -0.0865231   -0.0420285
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0371884   -0.0496727   -0.0247040
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0255120   -0.0487210   -0.0023030
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0660495   -0.0810819   -0.0510172
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1225500   -0.1819169   -0.0631832
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1010033   -0.1335025   -0.0685041
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0731271   -0.0884900   -0.0577641
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0861925   -0.0938600   -0.0785251
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0938280   -0.1039886   -0.0836674
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0528977   -0.0684397   -0.0373558
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0495638   -0.0586902   -0.0404374
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0683815   -0.0970285   -0.0397345
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1863257   -0.2857458   -0.0869056
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0459200   -0.0630104   -0.0288295
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0198425   -0.0874469    0.0477619
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0011301   -0.0177948    0.0155347
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0007913   -0.0213197    0.0197371
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1058577   -0.1285320   -0.0831833
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0871972   -0.1063839   -0.0680105
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0317084   -0.1400349    0.0766180
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0224147   -0.0106408    0.0554702
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0410901   -0.0529631   -0.0292171
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0494768   -0.0688649   -0.0300887
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0376007   -0.0485751   -0.0266263
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0416740   -0.0612602   -0.0220877
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0659861   -0.0813383   -0.0506339
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0644068   -0.1089228   -0.0198909
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0678674   -0.0952097   -0.0405251
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0696930   -0.0808351   -0.0585509
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0435538   -0.0570399   -0.0300677
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0496083   -0.0569674   -0.0422492
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0672728   -0.0912585   -0.0432870
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1070166   -0.2087606   -0.0052725
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0364071   -0.0512762   -0.0215379
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.1515311   -0.2204234   -0.0826388
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0200402   -0.0348664   -0.0052141
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0364744   -0.0537139   -0.0192348
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0436139    0.0195383    0.0676895
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0195448   -0.0277570   -0.0113326
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0419007   -0.0750325   -0.0087688
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0366005   -0.0510405   -0.0221605
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0386638   -0.0485687   -0.0287589
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0346998   -0.0537783   -0.0156212
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0163846   -0.0260400   -0.0067292
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0231501   -0.0399956   -0.0063046
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0219218   -0.0379477   -0.0058960
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0772563   -0.1686136    0.0141011
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0928134   -0.1263442   -0.0592827
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0636952   -0.0778599   -0.0495305
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0392363   -0.0533349   -0.0251377
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0329971   -0.0402410   -0.0257533
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0409342   -0.0637950   -0.0180734
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1541233   -0.2177343   -0.0905124
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0397231   -0.0532667   -0.0261795
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0591350   -0.1072796   -0.0109903
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0346505   -0.0496594   -0.0196415
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0377534   -0.0550418   -0.0204650
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0065036   -0.0157600    0.0027529
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0236016   -0.0402886   -0.0069146
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0275268   -0.0368883   -0.0181654
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0294354   -0.0452330   -0.0136378
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0474481    0.0160500    0.0788462
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0078531   -0.0061111    0.0218173
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0154380   -0.0051620    0.0360380
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0098131   -0.1329319    0.1525581
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0137029   -0.0275816    0.0001759
21-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0251108   -0.0655190    0.0152975
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0032779   -0.0179607    0.0114048
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0170188   -0.0438093    0.0097716
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0444680    0.0345736    0.0543625
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0542605    0.0362865    0.0722344
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0564176    0.0467393    0.0660960
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0671980    0.0517255    0.0826705
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0359764    0.0108106    0.0611422
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0538566    0.0334696    0.0742435


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2158396   -0.2587114   -0.1729679
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0983435   -0.1172596   -0.0794273
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0284852   -0.0542370   -0.0027335
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0691699   -0.0774369   -0.0609029
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0271629   -0.0022315    0.0565573
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2738086   -0.3025526   -0.2450646
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0954743   -0.1432951   -0.0476535
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0669258    0.0393905    0.0944610
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0318535   -0.0595705   -0.0041366
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0872974   -0.1043376   -0.0702572
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1587255   -0.1782389   -0.1392120
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0628577   -0.0694923   -0.0562230
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0289883   -0.0560864   -0.0018901
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090395   -0.0231928    0.0051138
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0817487   -0.1162088   -0.0472886
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0848045   -0.1055735   -0.0640356
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0787130   -0.0923048   -0.0651212
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0534375   -0.0697386   -0.0371364
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0451660   -0.0634826   -0.0268494
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.1018809   -0.1077606   -0.0960013
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0276394   -0.0370517   -0.0182271
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1183736   -0.1470569   -0.0896903
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1003227   -0.1150739   -0.0855716
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0853492   -0.0971856   -0.0735129
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0666889   -0.0814091   -0.0519687
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0791302   -0.0932678   -0.0649926
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0900184   -0.0959156   -0.0841212
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0510681   -0.0588908   -0.0432454
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712670   -0.0993779   -0.0431561
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0003408   -0.0132889    0.0126073
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0902668   -0.1049849   -0.0755488
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659733   -0.0809830   -0.0509636
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0661150   -0.0774073   -0.0548227
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0481612   -0.0547086   -0.0416139
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0682695   -0.0918024   -0.0447365
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0255627   -0.0369442   -0.0141812
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0158920   -0.0237373   -0.0080467
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0225426   -0.0383404   -0.0067447
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0695158   -0.0827085   -0.0563231
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0344039   -0.0409473   -0.0278605
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0439227   -0.0663369   -0.0215085
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0356785   -0.0470228   -0.0243342
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0161148    0.0037451    0.0284844
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0153093   -0.0050905    0.0357091
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0497856    0.0335159    0.0660553


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.1276341   -0.4808495    0.2255813
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0415643   -0.0424951    0.1256237
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0592227    0.0027066    0.1157388
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0213467   -0.0605625    0.0178691
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0274533   -0.0701750    0.0152685
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0228290   -0.0831167    0.0374587
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0338574   -0.0520777   -0.0156371
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0696606   -0.0374436    0.1767648
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1284828    0.0547805    0.2021852
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0693914   -0.2304628    0.3692455
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0501098   -0.1884333    0.0882138
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0204446   -0.0388178    0.0797070
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0526796   -0.1019011   -0.0034580
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0131443   -0.0231444    0.0494330
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0114774   -0.0491451    0.0261903
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0735236   -0.1778557    0.0308086
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0031042   -0.0426615    0.0488699
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0259388   -0.0410993   -0.0107783
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0066528   -0.1001727    0.0868671
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0039721   -0.0331133    0.0410575
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0442447   -0.0510861    0.1395755
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.0788952   -0.1787991    0.0210086
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0198722   -0.0634504    0.0237059
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0279450   -0.0097760    0.0656661
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0080504   -0.0423097    0.0584106
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0019926   -0.0232538    0.0272390
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0037047   -0.0332155    0.0258062
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0291333   -0.0763864    0.1346530
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0227969   -0.0681353    0.0225416
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0069612   -0.0200098    0.0060874
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0258169   -0.0476987   -0.0039352
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1337931   -0.0008295    0.2684157
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0427138   -0.0649717    0.1503994
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0038187   -0.0340510    0.0264137
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0048074   -0.0428829    0.0332682
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0606733   -0.0414108    0.1627574
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0019056   -0.0275518    0.0237406
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0116764   -0.0147244    0.0380772
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0565005   -0.1177532    0.0047522
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0278763   -0.0079892    0.0637417
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0076355   -0.0203661    0.0050951
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0033340   -0.0146383    0.0213063
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1179442   -0.2214092   -0.0144792
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                  0.0260774   -0.0436537    0.0958086
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0003388   -0.0260581    0.0267357
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0186605   -0.0157665    0.0530875
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0541231   -0.0598109    0.1680572
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0083867   -0.0312436    0.0144703
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0040732   -0.0265848    0.0184383
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0015793   -0.0455096    0.0486681
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0018255   -0.0314630    0.0278119
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0060545   -0.0211872    0.0090782
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0397438   -0.1442769    0.0647893
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.1151241   -0.1856027   -0.0446454
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0164341   -0.0391598    0.0062916
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0631587   -0.0917410   -0.0345763
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0053002   -0.0308553    0.0414556
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0039641   -0.0176177    0.0255458
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0067655   -0.0262217    0.0126908
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0553344   -0.1480868    0.0374179
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0291182   -0.0072982    0.0655347
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0062392   -0.0091854    0.0216638
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1131891   -0.1807833   -0.0455949
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0194119   -0.0694252    0.0306015
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0031029   -0.0260860    0.0198802
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0170980   -0.0361749    0.0019789
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0019086   -0.0202832    0.0164660
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0395950   -0.0740964   -0.0050936
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0056249   -0.1498486    0.1385989
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0114079   -0.0541331    0.0313173
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0137409   -0.0444447    0.0169629
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0097924   -0.0107571    0.0303419
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0107803   -0.0074747    0.0290354
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0178802   -0.0149224    0.0506827


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.0023699   -0.0113703    0.0066306
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0143332   -0.0148654    0.0435317
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0573156    0.0089208    0.1057103
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0044125   -0.0142235    0.0053985
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0054596   -0.0150129    0.0040937
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0217856   -0.0683859    0.0248147
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0099594   -0.0171604   -0.0027584
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0639082   -0.0340952    0.1619117
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0957110    0.0384684    0.1529535
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0015926   -0.0059942    0.0091794
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0010098   -0.0045367    0.0025172
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0048754   -0.0144662    0.0242169
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0509926   -0.0947114   -0.0072737
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0039284   -0.0052509    0.0131078
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0037315   -0.0124129    0.0049499
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011964   -0.0036277    0.0012348
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0024513   -0.0327933    0.0376960
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0058058   -0.0119129    0.0003014
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0086027   -0.0945599    0.0773546
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0031039   -0.0258261    0.0320340
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0009991   -0.0014943    0.0034925
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0015508   -0.0042661    0.0011645
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0052331   -0.0195236    0.0090573
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0293809   -0.0013719    0.0601338
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0069637   -0.0343107    0.0482382
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0002918   -0.0061674    0.0067510
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0012460   -0.0076640    0.0051719
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005405   -0.0017581    0.0028392
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0180882   -0.0531445    0.0169681
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0023257   -0.0074497    0.0027982
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0193536   -0.0354645   -0.0032427
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0033979   -0.0007385    0.0075343
9-12 months    ki1000108-IRC              INDIA                          0                    NA                 0.0008543   -0.0019011    0.0036096
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0018746   -0.0117476    0.0079985
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0065639   -0.0386551    0.0255272
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0516043   -0.0303072    0.1335159
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0006768   -0.0071646    0.0058111
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0028889   -0.0028789    0.0086566
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006394   -0.0020477    0.0007690
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0218731   -0.0056894    0.0494356
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0038259   -0.0087928    0.0011410
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0018296   -0.0116000    0.0152593
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0028855   -0.0061417    0.0003707
12-15 months   ki1000108-IRC              INDIA                          0                    NA                 0.0004681   -0.0013088    0.0022450
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0007893   -0.0082013    0.0097799
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0155909   -0.0138272    0.0450089
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0405830   -0.0504074    0.1315735
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0001794   -0.0056008    0.0059596
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0007306   -0.0057068    0.0042456
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0000128   -0.0011645    0.0011900
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0017524   -0.0203055    0.0238104
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0046074   -0.0159711    0.0067562
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0009967   -0.0037057    0.0017123
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0021096   -0.0044566    0.0002374
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0055225   -0.0136975    0.0026525
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0595059   -0.0863142   -0.0326975
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0049881   -0.0246109    0.0345872
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0010201   -0.0043968    0.0064370
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0005227   -0.0050397    0.0039942
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006207   -0.0029843    0.0017428
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0232976   -0.0041566    0.0507518
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0048324   -0.0070167    0.0166815
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0029885   -0.0057040   -0.0002729
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0003585   -0.0016363    0.0009193
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0010280   -0.0082245    0.0061685
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0044363   -0.0093579    0.0004852
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0004419   -0.0047798    0.0038960
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0313333   -0.0585517   -0.0041149
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0001287   -0.0037355    0.0034782
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0002053   -0.0012840    0.0008735
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0032416   -0.0114643    0.0049810
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0017662   -0.0034848    0.0070172
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0023445   -0.0021085    0.0067974
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0138093   -0.0105354    0.0381539
