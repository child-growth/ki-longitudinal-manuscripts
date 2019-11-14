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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hhwealth_quart    n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             56     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             48     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             46     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             51     201
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             10      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             20      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             16      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             11      57
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              8      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             13      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              9      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              9      39
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              6      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              3      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              8      25
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4             53     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1             55     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2             51     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3             51     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             17      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             26      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             24      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             28      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             23     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             30     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             33     112
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             32      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             13      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             19      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             22      86
Birth       ki1000108-IRC              INDIA                          Wealth Q4             79     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1             90     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2             83     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3             91     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            132     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            129     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            136     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            135     532
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            161     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            164     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            160     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            156     641
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            258     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            144     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            141     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            186     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            815    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            647    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            506    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            930    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           6197   22061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5071   22061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5253   22061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           5540   22061
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            572    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            560    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            617    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            645    2394
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             59     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     240
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     209
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     235
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     236
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             67     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             68     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             71     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             64     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             60     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             64     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             90     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             93     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4            100     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1            104     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2            102     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3            102     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            134     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            156     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            164     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     603
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            140     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            141     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            148     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            135     564
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            176     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            194     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            217     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            744    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            569    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            908    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4952   16718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3574   16718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           3891   16718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4301   16718
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1199    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1199    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1201    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1228    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             30     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     169
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     228
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             65     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             42     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             38     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             56     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             91     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4            100     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1            105     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2            101     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3            103     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            122     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            155     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            157     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     579
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            124     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            121     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            114     487
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            405    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            203    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            215    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            223    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            685    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            492    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            424    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            848    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            155     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            127     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            140     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            136     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2327    8529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1983    8529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2090    8529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2129    8529
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1187    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1153    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1169    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1221    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/251113cc-e6ac-4f44-a537-20b6173cbcda/e98c7c3a-9c30-4928-a371-cafccb4c5cfe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/251113cc-e6ac-4f44-a537-20b6173cbcda/e98c7c3a-9c30-4928-a371-cafccb4c5cfe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/251113cc-e6ac-4f44-a537-20b6173cbcda/e98c7c3a-9c30-4928-a371-cafccb4c5cfe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.9569102   -1.2032315   -0.7105889
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.7529131   -1.0675867   -0.4382395
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.1038436   -1.4060899   -0.8015974
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.0019798   -1.3542108   -0.6497487
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.2846524   -0.6087659    1.1780707
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.1934132   -0.4721960    0.8590223
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.6255579    0.1246912    1.1264246
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.5602933   -0.1644726    1.2850593
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.6625000   -1.2946579   -0.0303421
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.7753846   -1.2462747   -0.3044945
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.2233333   -1.8175527   -0.6291139
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.1588889   -1.7968865   -0.5208913
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0120638   -0.2192166    0.2433443
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.1339633   -0.3853409    0.1174144
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0744594   -0.1858215    0.3347403
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.1444856   -0.4396940    0.1507228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2663902   -0.2210416    0.7538220
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.3788623   -0.8553487    0.0976240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.0150330   -0.4723422    0.5024082
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.3257266   -0.8463857    0.1949326
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6674517    0.2744382    1.0604653
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.7691812    0.4237996    1.1145629
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.7976435    0.4263621    1.1689249
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.5950081    0.2013318    0.9886844
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.6079130   -1.2135694   -0.0022566
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.5864756   -1.2510783    0.0781270
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6424301   -1.2080569   -0.0768034
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1731328   -0.7021029    0.3558373
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.8357270   -1.1180981   -0.5533559
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.3439485   -1.6592478   -1.0286492
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.9575338   -1.3171842   -0.5978833
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.8834395   -1.2096042   -0.5572749
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.2901345   -1.4285181   -1.1517509
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.3727476   -1.5261509   -1.2193444
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.2015232   -1.3407304   -1.0623159
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.3689501   -1.5145572   -1.2233430
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0719252   -1.2246367   -0.9192137
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.0900890   -1.2442617   -0.9359164
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1237587   -1.2855641   -0.9619532
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0875448   -1.2620751   -0.9130146
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.0067898   -1.1829674   -0.8306121
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.2985830   -1.4937976   -1.1033685
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9788345   -1.1846615   -0.7730076
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.0049251   -1.1966797   -0.8131705
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8075626   -0.8940419   -0.7210832
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7827858   -0.8812346   -0.6843369
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6890515   -0.7934423   -0.5846608
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6982021   -0.7762452   -0.6201590
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.7443625   -0.7774125   -0.7113125
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.7684650   -0.7994597   -0.7374702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.7537363   -0.7830900   -0.7243827
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.7426528   -0.7710554   -0.7142502
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.6690930   -0.7691114   -0.5690745
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.7069560   -0.8058255   -0.6080864
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.6917023   -0.7866505   -0.5967542
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.6903365   -0.7955945   -0.5850786
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0467571   -0.3280465    0.2345324
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0945596   -0.3309230    0.1418038
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.1941010   -0.4508026    0.0626006
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.2047279   -0.4526493    0.0431935
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.7687367    0.4301052    1.1073682
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.9808579    0.6742558    1.2874599
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 1.0995356    0.7495803    1.4494909
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 1.1578756    0.8294340    1.4863172
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.6616415   -0.9021864   -0.4210965
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.7788834   -1.0630442   -0.4947226
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.7800793   -1.0411553   -0.5190033
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.6062445   -0.8451570   -0.3673320
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.1619897   -0.1190004    0.4429798
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.1068974   -0.1463570    0.3601518
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.1206550   -0.1077908    0.3491008
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.0780530   -0.2418928    0.3979989
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.9608603    0.6940732    1.2276475
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 1.2577511    1.0386015    1.4769007
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 1.0127815    0.7959260    1.2296369
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.9388160    0.6450941    1.2325380
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.8240133    0.5138399    1.1341866
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.3415084    0.0084804    0.6745364
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.4617295    0.1659543    0.7575048
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.5467310    0.2571887    0.8362733
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6509896    0.4041161    0.8978631
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.5603988    0.3215006    0.7992970
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.5232557    0.2624039    0.7841074
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.4059023    0.0994999    0.7123047
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0051264   -0.3274776    0.3377304
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8820178   -1.1619373   -0.6020983
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7459905   -1.0310010   -0.4609800
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.4043273   -0.6941325   -0.1145221
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.6342225   -0.9105447   -0.3579003
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.4967157   -0.7275046   -0.2659268
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.4675660   -0.7624202   -0.1727117
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.7330330   -1.0215237   -0.4445424
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3013195   -0.4592827   -0.1433564
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.1808770   -0.3440663   -0.0176877
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0638527   -0.2365072    0.1088018
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.2749991   -0.4307297   -0.1192685
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1061387    0.0006771    0.2116003
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0506129   -0.0507505    0.1519762
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.1044683   -0.0080677    0.2170043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0777676   -0.0247758    0.1803110
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5491351   -0.7096390   -0.3886312
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.6396029   -0.8053377   -0.4738681
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.6225611   -0.7942311   -0.4508910
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.6090796   -0.8051875   -0.4129717
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                 1.2487863    1.0199330    1.4776397
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.9079364    0.6695536    1.1463192
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                 1.0202004    0.7795463    1.2608544
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                 1.1149777    0.8885235    1.3414318
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2938796    0.1745548    0.4132043
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2188184    0.0630859    0.3745508
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0926641   -0.0610883    0.2464164
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1009436   -0.0615702    0.2634574
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2115936   -0.2863125   -0.1368746
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4600799   -0.5524643   -0.3676955
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2583309   -0.3570502   -0.1596116
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2856375   -0.3574651   -0.2138099
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5452476    0.4140889    0.6764062
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.3364416    0.1794782    0.4934050
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.3711312    0.2371925    0.5050698
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.5097877    0.3584097    0.6611656
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.5295366   -0.5637349   -0.4953383
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.6901711   -0.7275392   -0.6528029
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.6368915   -0.6759856   -0.5977974
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.5627965   -0.5998164   -0.5257766
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2341010   -0.3075314   -0.1606706
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.5114793   -0.5804017   -0.4425570
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.4345912   -0.5031787   -0.3660037
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.3760245   -0.4426396   -0.3094094
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.7975225   -1.0540885   -0.5409565
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.6134500   -0.9471472   -0.2797529
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.8986419   -1.1048468   -0.6924371
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.8933973   -1.1062552   -0.6805394
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.3896726    0.0280696    0.7512756
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.0040092   -0.4380814    0.4460997
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.5820699    0.1435044    1.0206354
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.5528965    0.1543739    0.9514191
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0602295   -1.3046942   -0.8157647
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.9420048   -1.2028177   -0.6811918
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.0768328   -1.3072176   -0.8464479
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.8908535   -1.0931914   -0.6885156
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1208374   -0.3643632    0.1226884
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.5911692   -0.7884261   -0.3939124
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.4385441   -0.6538852   -0.2232030
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.3812583   -0.6103857   -0.1521308
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0539847   -0.1385635    0.2465330
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 0.1405099   -0.0979582    0.3789780
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.1145019   -0.1594846    0.3884883
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.0569541   -0.2034187    0.3173268
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.6147656    0.3663843    0.8631469
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.4861925    0.2736866    0.6986983
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.1929823   -0.0508117    0.4367764
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.3800742    0.1382550    0.6218934
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.3467617    0.1129925    0.5805310
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0371456   -0.3411257    0.4154168
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0155568   -0.2676909    0.2988044
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1002920   -0.3538920    0.1533080
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3158977   -0.5243375   -0.1074579
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6168168   -0.8096563   -0.4239773
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6684058   -0.8592137   -0.4775979
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.6266906   -0.8591857   -0.3941956
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.7092169   -0.9056778   -0.5127560
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.8579066   -1.0108374   -0.7049758
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.7569282   -0.9424285   -0.5714278
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.6398049   -0.8283493   -0.4512606
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.1567615   -1.3178904   -0.9956326
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.7785727   -0.9519591   -0.6051863
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.7286386   -0.8928378   -0.5644393
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.9786696   -1.1293018   -0.8280374
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.1041490   -1.2925800   -0.9157181
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1854280   -1.3600936   -1.0107624
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.2163031   -1.3935592   -1.0390470
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0411278   -1.2163320   -0.8659236
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.5145208    0.2152731    0.8137684
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.4160000    0.1889055    0.6430945
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.5798162    0.2760179    0.8836145
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                 0.5777538    0.2934203    0.8620872
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1831579   -0.2727234   -0.0935924
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.3998549   -0.5159504   -0.2837595
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3342771   -0.4490423   -0.2195120
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2829214   -0.4096904   -0.1561524
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4648573   -0.5316730   -0.3980415
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7394873   -0.8202090   -0.6587655
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6302878   -0.7180094   -0.5425663
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6529830   -0.7148228   -0.5911432
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0236674   -0.1341913    0.1815261
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.1344944   -0.3071246    0.0381359
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0940911   -0.2629294    0.0747473
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0323749   -0.1989711    0.1342213
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.2781256   -1.3198879   -1.2363632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.3331008   -1.3792220   -1.2869796
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.3200933   -1.3662054   -1.2739812
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.2928290   -1.3421216   -1.2435365
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1610047   -1.2283591   -1.0936503
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.2784910   -1.3417071   -1.2152748
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.2359482   -1.2911796   -1.1807167
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.2195399   -1.2763475   -1.1627323


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9721393   -1.1211171   -0.8231615
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0572840   -1.1606089   -0.9539590
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7422912   -0.7886598   -0.6959226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7500494   -0.7678904   -0.7322084
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1340556   -0.2631866   -0.0049245
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7105603   -0.8374801   -0.5836404
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0552716    0.9326038    1.1779394
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5409906    0.3873048    0.6946765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1914471    0.1185005    0.2643936
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4417647    0.3702742    0.5132552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5927536   -0.6123074   -0.5731998
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2791396   -0.3336899   -0.2245893
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0477867   -0.1301103    0.0345368
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2989248   -1.3223008   -1.2755489
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.2039971   -0.1959972    0.6039915
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1469334   -0.5363204    0.2424536
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0450695   -0.4750854    0.3849463
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0912393   -1.2064938    1.0240153
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.3409055   -0.6905604    1.3723713
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.2756409   -0.8794412    1.4307230
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1128846   -0.9011492    0.6753800
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.5608333   -1.4284279    0.3067612
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.4963889   -1.3945340    0.4017562
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.1460271   -0.4876575    0.1956033
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0623956   -0.2860263    0.4108175
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.1565494   -0.5316098    0.2185109
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6452525   -1.3277655    0.0372605
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.2513573   -0.9460401    0.4433256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.5921168   -1.3076288    0.1233953
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1017295   -0.4128215    0.6162805
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1301918   -0.4090363    0.6694199
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0724436   -0.6213248    0.4764375
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0214374   -0.8705089    0.9133836
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0345171   -0.8666771    0.7976429
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.4347802   -0.3674673    1.2370277
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.5082215   -0.9075239   -0.1089191
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1218068   -0.5552374    0.3116239
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0477125   -0.4528918    0.3574668
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0826131   -0.2845669    0.1193407
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0886113   -0.1032569    0.2804796
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0788156   -0.2751644    0.1175332
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0181638   -0.2282631    0.1919356
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0518334   -0.2672507    0.1635839
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0156196   -0.2408331    0.2095939
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2917932   -0.5473993   -0.0361872
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0279553   -0.2357564    0.2916669
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0018647   -0.2502906    0.2540200
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0247768   -0.1045053    0.1540589
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1185110   -0.0153958    0.2524179
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.1093605   -0.0051811    0.2239021
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0241025   -0.0664957    0.0182908
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0093739   -0.0475193    0.0287716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4          0.0017097   -0.0380694    0.0414888
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0378630   -0.1744538    0.0987277
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0226094   -0.1588891    0.1136703
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0212436   -0.1647357    0.1222485
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0478025   -0.4160999    0.3204948
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1473439   -0.5282411    0.2335533
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1579709   -0.5327276    0.2167858
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.2121212   -0.2455178    0.6697602
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.3307989   -0.1572075    0.8188053
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.3891389   -0.0823491    0.8606270
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1172419   -0.4900258    0.2555420
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.1184379   -0.4739921    0.2371164
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0553970   -0.2837288    0.3945227
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0550923   -0.4292063    0.3190218
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0413347   -0.4003409    0.3176716
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0839366   -0.5073485    0.3394752
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.2968908   -0.0490012    0.6427827
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0519211   -0.2921577    0.3959999
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0220443   -0.4189946    0.3749060
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.4825048   -0.9374973   -0.0275123
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3622837   -0.7920438    0.0674764
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2772823   -0.7016777    0.1471131
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0905908   -0.4342862    0.2531047
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1277339   -0.4865740    0.2311062
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.2450873   -0.6387929    0.1486183
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.8871442   -1.3218971   -0.4523914
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7511169   -1.1891338   -0.3131000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.4094537   -0.8509300    0.0320226
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.1375068   -0.2227816    0.4977951
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.1666565   -0.2374413    0.5707544
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0988105   -0.4983719    0.3007509
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1204425   -0.1063004    0.3471855
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.2374668    0.0038522    0.4710815
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0263204   -0.1950764    0.2477173
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0555258   -0.2015521    0.0905004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0016704   -0.1557288    0.1523880
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0283711   -0.1754926    0.1187504
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0904678   -0.3213548    0.1404192
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0734260   -0.3087381    0.1618861
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0599445   -0.3134589    0.1935699
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3408500   -0.6712367   -0.0104632
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2285860   -0.5607099    0.1035379
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1338087   -0.4555466    0.1879293
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0750612   -0.2708981    0.1207757
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2012155   -0.3957507   -0.0066803
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1929360   -0.3944785    0.0086066
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2484863   -0.3668653   -0.1301074
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0467374   -0.1700949    0.0766202
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0740439   -0.1772865    0.0291987
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2088060   -0.4133782   -0.0042338
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1741164   -0.3616375    0.0134047
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0354599   -0.2358158    0.1648960
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1606345   -0.2091235   -0.1121454
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1073550   -0.1576763   -0.0570336
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0332599   -0.0824416    0.0159218
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2773783   -0.3766647   -0.1780920
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2004902   -0.3001367   -0.1008438
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1419235   -0.2387464   -0.0451006
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.1840725   -0.2348627    0.6030077
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1011194   -0.4295374    0.2272986
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0958748   -0.4298517    0.2381021
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.3856634   -0.9584932    0.1871665
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.1923973   -0.3724165    0.7572112
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.1632240   -0.3694559    0.6959038
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.1182247   -0.2414288    0.4778782
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0166033   -0.3543808    0.3211742
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.1693760   -0.1472294    0.4859813
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.4703319   -0.7829496   -0.1577141
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.3177067   -0.6420878    0.0066744
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.2604209   -0.5947099    0.0738681
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0865252   -0.2167338    0.3897842
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0605171   -0.2735150    0.3945493
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0029693   -0.3190293    0.3249680
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1285731   -0.4552627    0.1981164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.4217833   -0.7696572   -0.0739094
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2346914   -0.5810913    0.1117085
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.3096161   -0.7610816    0.1418493
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.3312050   -0.7022280    0.0398181
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.4470537   -0.7960495   -0.0980580
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.3009191   -0.5849925   -0.0168457
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3525081   -0.6351747   -0.0698415
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.3107929   -0.6232897    0.0017039
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1486897   -0.3973683    0.0999888
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0477113   -0.3170233    0.2216008
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0694120   -0.2024872    0.3413111
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.3781887    0.1419497    0.6144278
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.4281229    0.1980103    0.6582355
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.1780919   -0.0419952    0.3981789
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0812789   -0.3384211    0.1758632
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1121541   -0.3711168    0.1468087
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0630213   -0.1944340    0.3204765
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0985208   -0.4770572    0.2800157
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0652954   -0.3617566    0.4923475
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0632330   -0.3488278    0.4752938
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2166970   -0.3633995   -0.0699946
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1511192   -0.2967777   -0.0054607
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0997635   -0.2551217    0.0555947
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2746300   -0.3785720   -0.1706880
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1654306   -0.2751193   -0.0557418
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1881258   -0.2784208   -0.0978307
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1581618   -0.3916052    0.0752816
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1177585   -0.3492796    0.1137626
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0560423   -0.2860011    0.1739165
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0549752   -0.1143285    0.0043780
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0419677   -0.1030064    0.0190710
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0147034   -0.0796307    0.0502238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1174863   -0.2083180   -0.0266546
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0749435   -0.1607488    0.0108618
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0585352   -0.1470868    0.0300164


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0152291   -0.2381786    0.2077204
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1797335   -0.6182534    0.9777204
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.2816026   -0.8500282    0.2868230
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0588734   -0.2670953    0.1493486
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.4393376   -0.9081702    0.0294951
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0962983   -0.2561450    0.4487415
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1430874   -0.2908491    0.5770239
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1748561   -0.4231720    0.0734598
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0083241   -0.1276364    0.1109881
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0445178   -0.1751047    0.0860691
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0504942   -0.1820894    0.0811011
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0652713   -0.0064520    0.1369947
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0056869   -0.0310789    0.0197051
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0191568   -0.1033941    0.0650805
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0872985   -0.3228007    0.1482036
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.2029858   -0.0884705    0.4944421
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0489188   -0.2616673    0.1638297
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0509445   -0.2896713    0.1877823
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0944113   -0.1334401    0.3222626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.2830226   -0.5531687   -0.0128766
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1147683   -0.3337497    0.1042132
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5078030   -0.7843601   -0.2312459
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0352928   -0.2050599    0.2756454
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1022289   -0.0416470    0.2461048
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0259707   -0.1174330    0.0654916
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0547065   -0.1981863    0.0887733
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1803546   -0.3823414    0.0216323
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1024325   -0.1980198   -0.0068452
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0822498   -0.1468396   -0.0176599
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1034829   -0.2189747    0.0120090
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0632170   -0.0918717   -0.0345624
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1560585   -0.2184700   -0.0936471
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0226662   -0.2302741    0.1849417
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0695582   -0.2312230    0.3703394
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1079387   -0.0990934    0.3149709
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.2556100   -0.4611654   -0.0500545
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0664630   -0.0972439    0.2301700
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1999127   -0.4125452    0.0127198
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2928131   -0.4969672   -0.0886590
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2412528   -0.4193286   -0.0631770
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0365981   -0.2036872    0.1304909
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2638945    0.1148207    0.4129682
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0321617   -0.1929640    0.1286406
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0523085   -0.2045998    0.3092168
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0959817   -0.1657584   -0.0262049
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1451019   -0.2020032   -0.0882006
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0714541   -0.2055384    0.0626302
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0207993   -0.0567957    0.0151972
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0621729   -0.1186230   -0.0057228
