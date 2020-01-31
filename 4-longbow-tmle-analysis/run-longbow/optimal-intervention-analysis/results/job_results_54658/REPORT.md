---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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







# Results Detail

## Results Plots
![](/tmp/ff80f357-5960-40d8-8d37-a55184d3588e/789e185c-4d63-45c3-8023-a9b430d3b139/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6955886   -0.9987856   -0.3923915
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4190501   -0.3553623    1.1934625
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0773123   -1.5237229   -0.6309017
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0041519   -0.2389854    0.2472891
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2667510   -0.2160828    0.7495847
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6574378    0.2926183    1.0222573
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1087046   -0.6163519    0.3989427
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.1596038   -1.4567574   -0.8624501
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1567565   -1.2941176   -1.0193954
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0880756   -1.2606343   -0.9155168
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9334092   -1.1225184   -0.7442999
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6714766   -0.7672393   -0.5757138
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7753892   -0.8119961   -0.7387823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7404149   -0.8442643   -0.6365655
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2388297   -0.4959625    0.0183031
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8613065    0.5787575    1.1438555
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6787019   -0.9304802   -0.4269236
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1070240   -0.3651064    0.1510585
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2432480    1.0218889    1.4646070
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.7357620    0.4060815    1.0654425
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3608441    0.1432820    0.5784063
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1100722   -0.4288931    0.2087486
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6969734   -0.9658250   -0.4281219
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0081613   -0.1962455    0.1799229
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0373526   -0.0715245    0.1462298
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7289281   -0.9040077   -0.5538485
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2416366    1.0085333    1.4747398
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3542856    0.2193542    0.4892170
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2319272   -0.3099752   -0.1538792
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5428369    0.4120421    0.6736316
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5347348   -0.5694980   -0.4999715
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2337782   -0.3052675   -0.1622888
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7423062   -1.0065927   -0.4780198
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3753927    0.0045220    0.7462634
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0752999   -1.2890567   -0.8615430
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1419505   -0.3896254    0.1057245
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0377709   -0.3003441    0.2248022
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6636777    0.4196527    0.9077026
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1663186   -0.0607147    0.3933518
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3262398   -0.5292791   -0.1232005
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8810755   -1.0618440   -0.7003071
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5893013   -0.7682850   -0.4103176
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1575298   -1.3333428   -0.9817169
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.4085159    0.1471095    0.6699223
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1884456   -0.2767123   -0.1001789
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4701683   -0.5366986   -0.4036380
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0741894   -0.2309296    0.0825508
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3211574   -1.3652099   -1.2771049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1585733   -1.2267151   -1.0904316


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0572840   -1.1606089   -0.9539590
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7422912   -0.7886598   -0.6959226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7777103   -0.7967006   -0.7587201
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7102872   -0.8371659   -0.5834085
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0512099    0.9285617    1.1738581
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5404351    0.3867005    0.6941696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1914471    0.1185005    0.2643936
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4417647    0.3702742    0.5132552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932502   -0.6127743   -0.5737261
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2791396   -0.3336899   -0.2245893
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0477867   -0.1301103    0.0345368
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2973086   -1.3206115   -1.2740057
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2772473   -0.5422189   -0.0122756
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0453358   -0.6416111    0.7322828
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1332097   -0.2994847    0.5659042
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0509614   -0.2684303    0.1665075
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4396983   -0.9032910    0.0238944
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1063122   -0.2077878    0.4204123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3561210   -0.8211474    0.1089055
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1490207   -0.0977809    0.3958222
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1417022   -0.2579430   -0.0254614
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0283675   -0.1696553    0.1129204
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1238748   -0.2841462    0.0363966
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0708147   -0.1540785    0.0124492
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0023212   -0.0344689    0.0298266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0521651   -0.0340949    0.1384251
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1054964   -0.1155725    0.3265653
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1107708   -0.1508770    0.3724186
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0315853   -0.2522112    0.1890405
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2174548   -0.0078910    0.4428005
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1920381   -0.3926415    0.0085653
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1953269   -0.4802982    0.0896444
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1753772   -0.0286316    0.3793860
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3926044   -0.6623761   -0.1228326
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0980437   -0.1352684    0.3313558
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1909294   -0.3444361   -0.0374227
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0428153   -0.0528067    0.1384374
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1250865   -0.0278603    0.2780333
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1732048   -0.3789504    0.0325409
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1628385   -0.2761494   -0.0495276
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0619161   -0.1304133    0.0065811
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1010721   -0.2174505    0.0153062
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0585154   -0.0882625   -0.0287683
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1563814   -0.2171676   -0.0955951
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0769862   -0.3324212    0.1784488
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0872306   -0.2464710    0.4209321
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1236479   -0.0672731    0.3145688
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2329618   -0.4403846   -0.0255390
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1489691   -0.0882356    0.3861738
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2546475   -0.4651940   -0.0441010
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1115210   -0.3090892    0.0860471
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2309107   -0.4051308   -0.0566907
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.1352605   -0.0227103    0.2932313
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3035657   -0.4491575   -0.1579739
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0212191   -0.1356100    0.1780482
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.1583133   -0.0743709    0.3909976
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0906939   -0.1588627   -0.0225252
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1397909   -0.1964112   -0.0831705
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0264027   -0.1086489    0.1614542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0238488   -0.0143862    0.0620839
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0646042   -0.1220119   -0.0071966
