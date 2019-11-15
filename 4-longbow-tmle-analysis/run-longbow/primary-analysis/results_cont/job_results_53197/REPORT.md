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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4505   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           4435   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           4476   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4578   17994
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4971   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3585   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           3902   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4318   16776
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2351    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1996    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2103    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2144    8594
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
![](/tmp/ee5983be-0f44-4d83-aa2a-d29156595049/fb6ec354-4f8c-4ace-b488-6e5a3df60376/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ee5983be-0f44-4d83-aa2a-d29156595049/fb6ec354-4f8c-4ace-b488-6e5a3df60376/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ee5983be-0f44-4d83-aa2a-d29156595049/fb6ec354-4f8c-4ace-b488-6e5a3df60376/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.9669623   -1.2108987   -0.7230259
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.7829752   -1.0979197   -0.4680307
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.1148875   -1.4082907   -0.8214843
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.0360776   -1.3872276   -0.6849276
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1054219   -0.8673913    1.0782350
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.1019970   -0.5452857    0.7492797
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.5291712    0.0687613    0.9895811
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.4366766   -0.2788521    1.1522053
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.6625000   -1.2946579   -0.0303421
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.7753846   -1.2462747   -0.3044945
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.2233333   -1.8175527   -0.6291139
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.1588889   -1.7968865   -0.5208913
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0142094   -0.2190361    0.2474550
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.1326892   -0.3859943    0.1206158
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0778602   -0.1819034    0.3376238
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.1353600   -0.4314669    0.1607469
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2006367   -0.2821429    0.6834162
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.4200474   -0.8907450    0.0506502
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0360350   -0.5048387    0.4327688
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.3697462   -0.8867359    0.1472434
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.7744253    0.3548018    1.1940488
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.8852750    0.5425547    1.2279954
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.8412822    0.4440899    1.2384745
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.6853718    0.2948143    1.0759293
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5357520   -1.1368008    0.0652968
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.5274647   -1.1896192    0.1346899
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6021570   -1.1654702   -0.0388438
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0858719   -0.6231946    0.4514509
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.8558943   -1.1291933   -0.5825952
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.3310827   -1.6464241   -1.0157413
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.9350323   -1.2844513   -0.5856132
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.9036583   -1.2229246   -0.5843920
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.2801588   -1.4171405   -1.1431772
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.3589736   -1.5104666   -1.2074806
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.1954825   -1.3329502   -1.0580148
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.3596451   -1.5054388   -1.2138513
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0866623   -1.2414404   -0.9318842
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.0922945   -1.2482318   -0.9363572
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1292661   -1.2952377   -0.9632944
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.1394364   -1.3121254   -0.9667473
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.0124100   -1.1883100   -0.8365099
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.2868945   -1.4833355   -1.0904536
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9800515   -1.1856925   -0.7744105
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.0019943   -1.1918560   -0.8121327
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8042452   -0.8902471   -0.7182434
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7837792   -0.8814550   -0.6861034
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6846525   -0.7874762   -0.5818288
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6947984   -0.7720744   -0.6175223
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.7671016   -0.8061486   -0.7280545
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.8083987   -0.8425446   -0.7742528
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.7834927   -0.8172714   -0.7497140
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.7744601   -0.8059106   -0.7430096
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.6653684   -0.7671730   -0.5635639
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.7105303   -0.8094708   -0.6115898
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.6941157   -0.7881234   -0.6001081
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.6869922   -0.7915051   -0.5824793
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0253909   -0.2531510    0.3039328
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.1232454   -0.3566620    0.1101711
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.2235474   -0.4883111    0.0412162
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.2036608   -0.4541392    0.0468177
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.7258412    0.3849942    1.0666881
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.9039972    0.5990404    1.2089541
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 1.0325499    0.6741671    1.3909326
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 1.0834339    0.7480930    1.4187748
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.6759157   -0.9168611   -0.4349703
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.7901448   -1.0723625   -0.5079271
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.7821564   -1.0427793   -0.5215334
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.6141141   -0.8472230   -0.3810051
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.1482885   -0.1469542    0.4435312
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.0961939   -0.1570105    0.3493982
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.1274747   -0.0997755    0.3547249
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.0845033   -0.2330607    0.4020674
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.9663840    0.7075737    1.2251944
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 1.2557314    1.0381090    1.4733538
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.9935177    0.7743157    1.2127197
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.9686472    0.6792650    1.2580293
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.7921861    0.4807628    1.1036095
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.3663620    0.0234218    0.7093023
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.4741166    0.1861553    0.7620778
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.5253105    0.2337828    0.8168383
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6449161    0.3966524    0.8931799
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.5904497    0.3514929    0.8294065
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.5141704    0.2530035    0.7753374
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.4279582    0.1209076    0.7350088
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0236705   -0.3080278    0.3553688
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8804942   -1.1630633   -0.5979251
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7582415   -1.0390755   -0.4774075
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.4162986   -0.7126274   -0.1199697
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.6446005   -0.9336717   -0.3555294
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.4986113   -0.7207532   -0.2764695
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.4917051   -0.7822562   -0.2011540
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.7496928   -1.0474104   -0.4519753
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3050321   -0.4625242   -0.1475400
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.1764096   -0.3374707   -0.0153484
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0680504   -0.2407306    0.1046299
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.2725997   -0.4278994   -0.1173000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1000619   -0.0059004    0.2060242
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0592273   -0.0426833    0.1611378
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0995769   -0.0132419    0.2123958
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0747071   -0.0282549    0.1776691
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5329353   -0.6929121   -0.3729584
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.6230553   -0.7897186   -0.4563920
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.6122657   -0.7827287   -0.4418027
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.5960174   -0.7891739   -0.4028608
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                 1.2443725    1.0108732    1.4778718
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.9154359    0.6761364    1.1547354
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                 1.0282984    0.7856847    1.2709122
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                 1.1208947    0.8895245    1.3522649
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2952990    0.1760317    0.4145663
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2075610    0.0526778    0.3624443
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.1105424   -0.0445511    0.2656359
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.0971604   -0.0657606    0.2600815
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2046844   -0.2791472   -0.1302215
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4572581   -0.5485728   -0.3659434
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2543021   -0.3528298   -0.1557745
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2856036   -0.3570261   -0.2141812
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5515084    0.4210553    0.6819616
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.3300845    0.1700341    0.4901350
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.3712517    0.2336549    0.5088485
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.5162536    0.3662065    0.6663008
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.5284881   -0.5629052   -0.4940711
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.6964619   -0.7336989   -0.6592249
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.6355988   -0.6751871   -0.5960105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.5591963   -0.5965978   -0.5217947
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2345268   -0.3088660   -0.1601875
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.5172478   -0.5863407   -0.4481549
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.4337166   -0.5024738   -0.3649594
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.3785521   -0.4455392   -0.3115650
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.8015389   -1.0593178   -0.5437601
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.6712235   -1.0127908   -0.3296561
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.9065031   -1.1167207   -0.6962855
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.8785529   -1.0917165   -0.6653893
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.3729034    0.0062765    0.7395303
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0493243   -0.5192702    0.4206216
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.6046491    0.1661338    1.0431644
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.4740425    0.0694798    0.8786052
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0206179   -1.2630817   -0.7781541
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.9164683   -1.1764940   -0.6564426
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.0117032   -1.2369292   -0.7864771
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.8646454   -1.0641136   -0.6651772
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1139944   -0.3631786    0.1351898
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.5613050   -0.7593577   -0.3632524
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.4340272   -0.6563273   -0.2117272
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.3821276   -0.6103132   -0.1539421
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0954435   -0.1015073    0.2923944
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 0.1564457   -0.1227061    0.4355976
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.2287824   -0.0276370    0.4852018
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.0932685   -0.1640872    0.3506241
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.6099124    0.3645680    0.8552568
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.4631025    0.2486832    0.6775218
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.1610835   -0.0855469    0.4077138
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.3949061    0.1449813    0.6448309
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2391207    0.0091454    0.4690959
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0209885   -0.3124293    0.3544062
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0083317   -0.2364057    0.2530692
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1221073   -0.3546091    0.1103945
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3145840   -0.5230071   -0.1061608
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6200339   -0.8066433   -0.4334245
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6585265   -0.8444575   -0.4725955
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.6182184   -0.8446413   -0.3917955
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.7081303   -0.9069463   -0.5093143
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.8601085   -1.0130723   -0.7071446
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.7478743   -0.9333802   -0.5623684
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.6469700   -0.8338587   -0.4600813
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.1565221   -1.3117892   -1.0012550
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.7965482   -0.9678236   -0.6252727
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.7142155   -0.8785988   -0.5498322
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.9704529   -1.1219557   -0.8189502
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0806495   -1.2667102   -0.8945888
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1954248   -1.3729066   -1.0179429
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1960398   -1.3735745   -1.0185051
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0323385   -1.2084440   -0.8562329
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.5566016    0.2624815    0.8507216
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.4689522    0.2528740    0.6850304
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.5751302    0.2727511    0.8775094
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                 0.6364911    0.3526732    0.9203090
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1817646   -0.2706674   -0.0928619
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.4013052   -0.5165778   -0.2860327
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3464156   -0.4627714   -0.2300598
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2788765   -0.4049724   -0.1527807
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4762070   -0.5427466   -0.4096675
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7434777   -0.8239577   -0.6629977
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6213518   -0.7096548   -0.5330489
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6506715   -0.7122232   -0.5891197
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0333716   -0.1248074    0.1915506
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.1386533   -0.3131340    0.0358275
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0736903   -0.2393849    0.0920042
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0472473   -0.2087056    0.1142110
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.2743340   -1.3157950   -1.2328731
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.3317105   -1.3763098   -1.2871112
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.3250345   -1.3708479   -1.2792211
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.2884897   -1.3367079   -1.2402714
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1597955   -1.2272103   -1.0923807
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.2761256   -1.3392858   -1.2129655
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.2336453   -1.2886428   -1.1786479
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.2186381   -1.2755067   -1.1617695


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7777103   -0.7967006   -0.7587201
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932502   -0.6127743   -0.5737261
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2791396   -0.3336899   -0.2245893
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0477867   -0.1301103    0.0345368
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2973086   -1.3206115   -1.2740057
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.1839871   -0.2144373    0.5824114
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1479253   -0.5297504    0.2338999
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0691153   -0.4965945    0.3583638
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0034249   -1.1756557    1.1688060
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.4237494   -0.6406283    1.4881270
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.3312547   -0.8847099    1.5472194
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1128846   -0.9011492    0.6753800
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.5608333   -1.4284279    0.3067612
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.4963889   -1.3945340    0.4017562
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.1468987   -0.4914577    0.1976604
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0636508   -0.2857894    0.4130910
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.1495694   -0.5269762    0.2278373
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6206841   -1.2934741    0.0521060
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.2366716   -0.9091334    0.4357901
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.5703829   -1.2778612    0.1370954
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1108497   -0.4251792    0.6468787
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0668569   -0.5069872    0.6407010
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0890535   -0.6566923    0.4785853
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0082873   -0.8879043    0.9044789
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0664051   -0.8954443    0.7626342
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.4498801   -0.3581834    1.2579436
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4751884   -0.8660416   -0.0843353
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0791380   -0.4947981    0.3365221
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0477640   -0.4389499    0.3434218
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0788148   -0.2775756    0.1199461
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0846763   -0.1038343    0.2731869
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0794862   -0.2740660    0.1150935
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0056322   -0.2189313    0.2076668
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0426038   -0.2629963    0.1777888
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0527741   -0.2782497    0.1727015
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2744845   -0.5303168   -0.0186523
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0323585   -0.2303405    0.2950575
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0104157   -0.2394617    0.2602930
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0204660   -0.1077420    0.1486741
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1195928   -0.0126817    0.2518672
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.1094469   -0.0040499    0.2229436
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0412971   -0.0918990    0.0093047
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0163911   -0.0652740    0.0324917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0073585   -0.0551776    0.0404606
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0451619   -0.1830720    0.0927483
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0287473   -0.1657160    0.1082215
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0216237   -0.1660926    0.1228451
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1486363   -0.5113622    0.2140895
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2489383   -0.6346847    0.1368080
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2290517   -0.6066275    0.1485242
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.1781561   -0.2768227    0.6331348
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.3067087   -0.1893169    0.8027343
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.3575927   -0.1183468    0.8335322
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1142291   -0.4858781    0.2574199
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.1062407   -0.4613771    0.2488957
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0618016   -0.2737404    0.3973437
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0520946   -0.4399865    0.3357973
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0208138   -0.3934497    0.3518222
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0637852   -0.4975110    0.3699407
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.2893474   -0.0478845    0.6265793
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0271336   -0.3109610    0.3652283
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0022631   -0.3849098    0.3894361
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.4258241   -0.8892829    0.0376348
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3180696   -0.7427436    0.1066044
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2668756   -0.6939290    0.1601779
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0544665   -0.4000979    0.2911650
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1307457   -0.4917946    0.2303032
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.2169580   -0.6122367    0.1783208
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.9041647   -1.3395565   -0.4687729
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7819120   -1.2162136   -0.3476104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.4399691   -0.8858361    0.0058980
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.1459892   -0.2174034    0.5093818
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.1528954   -0.2592583    0.5650492
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1050923   -0.5221256    0.3119410
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1286225   -0.0957696    0.3530146
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.2369817    0.0041961    0.4697673
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0324324   -0.1878974    0.2527622
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0408346   -0.1879608    0.1062915
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0004850   -0.1551359    0.1541659
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0253548   -0.1733339    0.1226244
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0901201   -0.3213717    0.1411316
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0793305   -0.3130201    0.1543592
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0630821   -0.3142254    0.1880612
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3289366   -0.6636728    0.0057997
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2160741   -0.5531945    0.1210464
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1234778   -0.4525294    0.2055738
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0877379   -0.2827132    0.1072373
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1847566   -0.3801270    0.0106138
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1981385   -0.3995150    0.0032379
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2525737   -0.3698877   -0.1352597
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0496177   -0.1725893    0.0733539
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0809193   -0.1836174    0.0217789
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2214239   -0.4280344   -0.0148135
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1802567   -0.3702170    0.0097036
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0352548   -0.2341252    0.1636156
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1679737   -0.2167425   -0.1192050
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1071106   -0.1579247   -0.0562966
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0307081   -0.0798052    0.0183889
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2827210   -0.3825713   -0.1828707
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1991898   -0.2991853   -0.0991944
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1440253   -0.2417378   -0.0463129
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.1303154   -0.2945516    0.5551825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1049642   -0.4401168    0.2301885
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0770140   -0.4148494    0.2608214
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.4222277   -1.0210373    0.1765819
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.2317457   -0.3338273    0.7973187
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.1011391   -0.4461165    0.6483947
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.1041496   -0.2514735    0.4597727
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0089147   -0.3221271    0.3399565
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.1559725   -0.1582176    0.4701627
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.4473107   -0.7656614   -0.1289599
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.3200328   -0.6544875    0.0144218
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.2681332   -0.6054076    0.0691411
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0610022   -0.2782456    0.4002500
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.1333389   -0.1898413    0.4565191
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0021751   -0.3236783    0.3193281
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1468099   -0.4735639    0.1799440
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.4488289   -0.7989628   -0.0986951
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2150063   -0.5664551    0.1364425
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.2181322   -0.6255640    0.1892996
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.2307889   -0.5655065    0.1039286
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.3612280   -0.6869063   -0.0355497
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.3054499   -0.5854194   -0.0254805
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3439425   -0.6233010   -0.0645841
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.3036345   -0.6117442    0.0044753
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1519781   -0.4028541    0.0988978
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0397440   -0.3108904    0.2314025
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0611604   -0.2112491    0.3335698
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.3599739    0.1292977    0.5906500
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.4423065    0.2162532    0.6683598
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.1860691   -0.0305068    0.4026450
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1147753   -0.3720967    0.1425461
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1153903   -0.3728073    0.1420266
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0483110   -0.2081142    0.3047362
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0876494   -0.4526080    0.2773093
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0185287   -0.4036742    0.4407316
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0798896   -0.3287074    0.4884865
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2195406   -0.3651423   -0.0739389
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1646509   -0.3111154   -0.0181865
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0971119   -0.2514494    0.0572256
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2672707   -0.3708867   -0.1636546
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1451448   -0.2551773   -0.0351123
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1744644   -0.2643236   -0.0846052
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1720249   -0.4070519    0.0630021
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1070620   -0.3363520    0.1222281
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0806189   -0.3062514    0.1450136
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0573765   -0.1153044    0.0005515
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0507005   -0.1106930    0.0092920
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0141556   -0.0780303    0.0497190
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1163302   -0.2077905   -0.0248698
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0738499   -0.1596560    0.0119562
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0588426   -0.1472009    0.0295156


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0058735   -0.2272435    0.2154964
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.3589641   -0.5087653    1.2266935
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.2816026   -0.8500282    0.2868230
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0610190   -0.2707516    0.1487137
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.3735840   -0.8361307    0.0889626
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0106753   -0.3867318    0.3653811
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0709264   -0.3599989    0.5018517
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1546888   -0.3935150    0.0841373
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0182998   -0.1357175    0.0991179
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0297808   -0.1622546    0.1026931
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0448740   -0.1758538    0.0861058
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0619540   -0.0091472    0.1330552
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0106088   -0.0432258    0.0220083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0228813   -0.1087011    0.0629384
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.1587242   -0.3931566    0.0757082
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.2462362   -0.0455871    0.5380595
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0343715   -0.2473288    0.1785857
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0378577   -0.2906466    0.2149312
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0848259   -0.1356063    0.3052580
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.2517511   -0.5232732    0.0197711
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1086948   -0.3298021    0.1124125
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5263471   -0.8025172   -0.2501771
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0456708   -0.2056317    0.2969733
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1059414   -0.0370813    0.2489642
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0198939   -0.1119193    0.0721315
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0709064   -0.2140767    0.0722640
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1759407   -0.3823053    0.0304239
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1038519   -0.1990530   -0.0086508
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0891589   -0.1534894   -0.0248285
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1097437   -0.2247835    0.0052960
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0647620   -0.0932713   -0.0362527
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1556327   -0.2188659   -0.0923996
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0177535   -0.2289112    0.1934041
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0897199   -0.2155949    0.3950347
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0689659   -0.1350749    0.2730067
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.2609179   -0.4715524   -0.0502834
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0157546   -0.1530323    0.1845415
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.2008823   -0.4122315    0.0104670
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1843232   -0.3807513    0.0121049
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2425666   -0.4206342   -0.0644989
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0376847   -0.2069570    0.1315876
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2636550    0.1199998    0.4073103
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0556613   -0.2144420    0.1031195
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0102277   -0.2409232    0.2613786
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0973749   -0.1665336   -0.0282163
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1337521   -0.1903714   -0.0771329
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0811584   -0.2148316    0.0525149
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0229746   -0.0587565    0.0128074
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0633821   -0.1200491   -0.0067151
