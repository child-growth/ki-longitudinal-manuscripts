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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthwt                       n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------------------------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   54     231  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight        61      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    4      65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight        39      47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    8      47  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight        24      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    3      27  haz              
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       221     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                   12     233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       115     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    8     123  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       118     125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    7     125  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        81      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   11      92  haz              
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       317     383  haz              
Birth       ki1000108-IRC              INDIA                          Low birthweight                   66     383  haz              
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight       160     240  haz              
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                   80     240  haz              
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        35      42  haz              
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    7      42  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       914    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  338    1252  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       423     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  185     608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       402     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  137     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       560     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  172     732  haz              
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1308    1529  haz              
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                  221    1529  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       476     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  220     696  haz              
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight        14      26  haz              
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                   12      26  haz              
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  haz              
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    0       2  haz              
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13890   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13890  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1901   13830  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       717     784  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                   67     784  haz              
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5268    6638  haz              
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                 1370    6638  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  295    3004  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     12858   22454  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 9596   22454  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1799    2823  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1024    2823  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       188     238  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   50     238  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       199     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       193     227  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                   34     227  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       210     229  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19     229  haz              
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       254     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                   16     270  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       238     253  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   15     253  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       327     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   42     369  haz              
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       335     401  haz              
6 months    ki1000108-IRC              INDIA                          Low birthweight                   66     401  haz              
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       242     372  haz              
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                  130     372  haz              
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        29      34  haz              
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      34  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1003    1326  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  323    1326  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  151     518  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       461     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  143     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  170     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2011  haz              
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1146    1334  haz              
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                  188    1334  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       397     563  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  166     563  haz              
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         9      12  haz              
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      12  haz              
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  haz              
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2  haz              
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15761   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15761  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7566    8636  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1070    8636  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       703     771  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   68     771  haz              
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5005    6261  haz              
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                 1256    6261  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  248    2666  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      8359   14130  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5771   14130  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3004    4041  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1037    4041  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       165     210  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     210  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    8     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     218  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     218  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       203     221  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     221  haz              
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       187     199  haz              
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   12     199  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       224     237  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     237  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       328     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     371  haz              
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       335     403  haz              
24 months   ki1000108-IRC              INDIA                          Low birthweight                   68     403  haz              
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       100     167  haz              
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   67     167  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       287     414  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  127     414  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       439     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  139     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  126     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6  haz              
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       905    1056  haz              
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  151    1056  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       355     487  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  132     487  haz              
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11  haz              
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11  haz              
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  haz              
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  haz              
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      4035    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    4035  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1442    1635  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  193    1635  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       589     650  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   61     650  haz              
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3949    4858  haz              
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                  909    4858  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  212    2406  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      4241    7307  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3066    7307  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2955    4010  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1055    4010  haz              


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/86f4f81f-5c0c-4416-ac2a-4b41ab3549b5/fa195e1a-dffe-4326-a020-3acb5666da91/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/86f4f81f-5c0c-4416-ac2a-4b41ab3549b5/fa195e1a-dffe-4326-a020-3acb5666da91/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/86f4f81f-5c0c-4416-ac2a-4b41ab3549b5/fa195e1a-dffe-4326-a020-3acb5666da91/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7876392   -0.9135825   -0.6616959
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -2.1984314   -2.4366351   -1.9602277
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.0030769   -1.2939170   -0.7122369
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -2.1812500   -2.8210203   -1.5414797
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.7947696   -0.9059380   -0.6836013
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -2.5137877   -2.8060337   -2.2215417
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.5171304   -0.6817030   -0.3525578
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -2.2787500   -3.6302840   -0.9272160
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.0263559   -1.2219417   -0.8307702
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.3342857   -3.9682864   -2.7002851
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8079383   -1.0305474   -0.5853292
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.8798134   -2.2385924   -1.5210345
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1777996   -0.3457698   -0.0098294
Birth       ki1000108-IRC              INDIA                          Low birthweight              NA                -0.9418805   -1.3934302   -0.4903307
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -1.4255320   -1.6463027   -1.2047613
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              NA                -2.7390507   -3.0784740   -2.3996274
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.6417143   -1.0717036   -0.2117250
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                -2.6714286   -2.9208890   -2.4219682
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.0306842   -1.0997171   -0.9616513
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -2.5147069   -2.6948540   -2.3345597
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.5001564   -0.5890491   -0.4112637
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.9141817   -2.0405845   -1.7877788
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.5847173   -0.6599301   -0.5095044
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.7826685   -1.8777836   -1.6875533
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.6616038   -0.7353934   -0.5878141
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.7081837   -1.8354049   -1.5809624
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.2225494    0.1578825    0.2872163
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -1.0774544   -1.2295772   -0.9253315
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.6750004   -0.7540500   -0.5959507
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.9448840   -2.0672092   -1.8225587
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -1.2481616   -1.9184453   -0.5778779
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              NA                -3.2867514   -3.9987057   -2.5747971
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3124637   -0.3323495   -0.2925779
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.6852066   -1.7457581   -1.6246551
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2766911    0.1944499    0.3589323
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -1.5089494   -1.7949746   -1.2229242
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3593478   -0.3861198   -0.3325757
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.8678995   -1.9222043   -1.8135947
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0771999   -0.1130224   -0.0413773
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -1.7681222   -1.9045276   -1.6317168
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.9537047   -0.9709418   -0.9364675
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -2.4407273   -2.4628340   -2.4186207
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.0168985   -1.0649433   -0.9688537
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -2.4133182   -2.4767708   -2.3498655
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.0476156   -1.1731794   -0.9220518
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.8227118   -2.0683575   -1.5770660
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0837452   -0.0627741    0.2302645
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.6346563   -1.3991785    0.1298659
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.1092163   -1.2367967   -0.9816359
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.5135793   -1.7914834   -1.2356752
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.4811043   -0.5948650   -0.3673437
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -1.1152834   -1.5270675   -0.7034993
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.2309482   -1.3351721   -1.1267242
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -2.4705346   -2.9268230   -2.0142461
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.0041443   -1.1305685   -0.8777201
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -2.0398923   -2.7057301   -1.3740545
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.2511205   -1.3908548   -1.1113862
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -2.4651852   -2.9676305   -1.9627399
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.3066057   -1.4545931   -1.1586182
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.2950107   -2.6723724   -1.9176489
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.0734448   -1.2104258   -0.9364638
6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                -1.9355418   -2.2913195   -1.5797640
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -1.7353393   -1.8684073   -1.6022713
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                -2.7122397   -2.9074485   -2.5170309
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -1.4433908   -2.0510560   -0.8357256
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                -3.2410000   -4.1049865   -2.3770135
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.1531142   -1.2543660   -1.0518624
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -2.1717005   -2.2574392   -2.0859617
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1413026   -1.2397536   -1.0428516
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.0556341   -2.2152629   -1.8960053
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.8999580   -0.9805635   -0.8193526
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.7246054   -1.8610189   -1.5881919
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.0045632   -1.0813567   -0.9277697
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.8326788   -1.9686722   -1.6966853
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5108203   -0.5603134   -0.4613273
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -1.4648079   -1.7330188   -1.1965971
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7788584   -0.8377104   -0.7200064
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -1.6212455   -1.7704442   -1.4720469
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.1266559   -1.2123781   -1.0409338
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.8874039   -2.0260390   -1.7487689
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7363224   -0.7624588   -0.7101861
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.7866969   -1.8569250   -1.7164688
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6922106   -1.7652099   -1.6192113
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -2.7205469   -3.0112189   -2.4298748
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7930049   -0.8229949   -0.7630149
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.8074653   -1.8718875   -1.7430431
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0408668   -1.0835823   -0.9981513
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -2.0500501   -2.1917367   -1.9083634
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.9527944   -0.9793993   -0.9261895
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.8847112   -1.9160264   -1.8533959
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1355115   -1.1805436   -1.0904794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.9806175   -2.0529439   -1.9082911
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.8473910   -1.9807433   -1.7140387
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -2.4575741   -2.7542534   -2.1608948
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0113872   -0.1631537    0.1859280
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.1000000   -0.6968023    0.4968023
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.8374669   -1.9725316   -1.7024022
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.8234587   -2.1384455   -1.5084719
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -1.2490073   -1.3730401   -1.1249745
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -1.4873458   -1.9613825   -1.0133090
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.6684841   -1.7830917   -1.5538765
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -2.7348679   -3.3524333   -2.1173025
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.6237173   -1.7613951   -1.4860395
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -1.8882714   -2.6179903   -1.1585524
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.5160714   -2.6720371   -2.3601058
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.2281250   -3.6659520   -2.7902980
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.5031708   -2.6098508   -2.3964908
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -3.0860204   -3.3253595   -2.8466814
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.6749258   -1.7744310   -1.5754206
24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -2.2969081   -2.5175733   -2.0762430
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -2.4579858   -2.6225040   -2.2934676
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -3.0121325   -3.2588296   -2.7654355
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.9906437   -2.1105254   -1.8707620
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.7671859   -2.9465139   -2.5878579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -1.4579956   -1.5516408   -1.3643505
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -2.0768281   -2.2396237   -1.9140325
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.2707928   -1.3605341   -1.1810515
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.9687777   -2.1411369   -1.7964185
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -1.4677075   -1.5330757   -1.4023392
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -2.0686473   -2.2384925   -1.8988021
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.7551842   -1.8510341   -1.6593343
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -2.2277373   -2.3998033   -2.0556712
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.5221927   -1.5816395   -1.4627460
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.2149639   -2.3859343   -2.0439935
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.8926536   -2.9775181   -2.8077891
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -3.6121222   -3.8571664   -3.3670781
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -1.9692965   -2.0060721   -1.9325209
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                -2.7369373   -2.8111578   -2.6627167
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3449825   -2.3915750   -2.2983900
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -3.0888799   -3.2441044   -2.9336555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.7655487   -1.8013516   -1.7297458
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -2.4185796   -2.4573445   -2.3798147
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.6381218   -1.6813237   -1.5949199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -2.1555723   -2.2250340   -2.0861105


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3096345   -0.4709405   -0.1483285
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0272662   -0.0366578    0.0911901
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1221939    0.0348987    0.2094890
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698147   -0.6979800   -0.6416494
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2435386   -0.2827491   -0.2043282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5893720   -1.6085904   -1.5701537
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2094328   -1.3276892   -1.0911764
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1727166   -1.2902312   -1.0552020
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5397525   -0.6522623   -0.4272428
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3083549   -1.4159952   -1.2007147
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0619697   -1.1900452   -0.9338942
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3098656   -1.4501587   -1.1695725
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2148213   -1.3469493   -1.0826933
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0800314   -2.1993502   -1.9607126
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.7077451   -2.2839081   -1.1315821
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4032504   -1.4822018   -1.3242989
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4092745   -1.5003907   -1.3181582
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5394360   -0.5886359   -0.4902361
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9022065   -0.9593933   -0.8450196
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3510539   -1.4294158   -1.2726919
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8663392   -0.8919231   -0.8407552
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7858495   -1.8598889   -1.7118102
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9939850   -1.0230017   -0.9649683
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1372543   -1.1796249   -1.0948837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3327473   -1.3568007   -1.3086940
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9799762   -2.1065965   -1.8533558
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8550459   -1.9795611   -1.7305306
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2841403   -1.4044291   -1.1638514
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7484757   -1.8697456   -1.6272058
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6471273   -1.7822999   -1.5119547
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5512346   -2.7029497   -2.3995194
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7814309   -1.8749526   -1.6879093
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2268619   -2.3322626   -2.1214612
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5547363   -1.6172161   -1.4922564
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8864887   -1.9720856   -1.8008918
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6024251   -1.6594303   -1.5454198
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9641538   -3.0462906   -2.8820170
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1129333   -2.1469655   -2.0789011
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4107897   -2.4561358   -2.3654436
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0396606   -2.0692906   -2.0100306
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7744364   -1.8128124   -1.7360604


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4107922   -1.6806046   -1.1409797
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -1.1781731   -1.8809490   -0.4753972
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.7190181   -2.0308089   -1.4072273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.7616196   -3.1231364   -0.4001027
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -2.3079298   -2.9714135   -1.6444461
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.0718751   -1.4968240   -0.6469263
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.7640808   -1.2460609   -0.2821007
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.3135187   -1.7190640   -0.9079734
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -2.0297143   -2.5268273   -1.5326013
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.4840227   -1.6464608   -1.3215846
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4140253   -1.5685374   -1.2595131
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1979512   -1.3192148   -1.0766877
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0465799   -1.1938016   -0.8993582
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.3000037   -1.4653882   -1.1346192
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2698836   -1.4166400   -1.1231272
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0385898   -3.0777086   -0.9994710
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.3727429   -1.4364630   -1.3090228
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.7856405   -2.0830786   -1.4882023
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.5085517   -1.5691033   -1.4480002
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.6909224   -1.8319522   -1.5498925
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4870227   -1.5135873   -1.4604580
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.3964197   -1.4753025   -1.3175368
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7750962   -1.0511705   -0.4990220
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.7184015   -1.4960543    0.0592514
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.4043630   -0.7104502   -0.0982757
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.6341791   -1.0616108   -0.2067473
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.2395864   -1.7080693   -0.7711036
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.0357480   -1.7132847   -0.3582113
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -1.2140647   -1.7355787   -0.6925506
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.9884050   -1.3950404   -0.5817696
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.8620970   -1.2424626   -0.4817314
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9769003   -1.2134401   -0.7403606
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -1.7976092   -2.8538902   -0.7413281
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.0185863   -1.1231445   -0.9140281
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9143315   -1.1018637   -0.7267993
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8246474   -0.9834899   -0.6658049
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8281156   -0.9846133   -0.6716179
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.9539876   -1.2265440   -0.6814312
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.8423871   -1.0023119   -0.6824623
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.7607480   -0.9238182   -0.5976778
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.0503744   -1.1251868   -0.9755620
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.0283363   -1.3281993   -0.7284733
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.0144604   -1.0853378   -0.9435830
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.0091832   -1.1566671   -0.8616993
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9319168   -0.9693509   -0.8944826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8451060   -0.9295319   -0.7606801
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6101831   -0.9358716   -0.2844946
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.1113872   -0.7331890    0.5104147
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0140082   -0.3300062    0.3580226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.2383384   -0.7279868    0.2513099
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.0663838   -1.6943880   -0.4383797
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.2645541   -1.0074350    0.4783269
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.7120536   -1.1768306   -0.2472765
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.5828497   -0.8444972   -0.3212021
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6219823   -0.8641075   -0.3798571
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.5541467   -0.8503109   -0.2579825
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7765423   -0.9927655   -0.5603190
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6188325   -0.8072652   -0.4303997
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6979849   -0.8924749   -0.5034950
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.6009398   -0.7816560   -0.4202236
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4725531   -0.6677835   -0.2773227
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.6927712   -0.8734138   -0.5121285
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7194686   -0.9790158   -0.4599215
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.7676407   -0.8502773   -0.6850042
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.7438975   -0.9059356   -0.5818593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6530309   -0.7017376   -0.6043241
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5174505   -0.5975150   -0.4373860


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.3304560   -0.4293978   -0.2315142
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.2005401   -0.3757023   -0.0253779
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0880201   -0.1392548   -0.0367853
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1145769   -0.2319816    0.0028279
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1292441   -0.2297616   -0.0287265
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1532574   -0.2510386   -0.0554762
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1318348   -0.2190467   -0.0446229
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.4353430   -0.5989982   -0.2716878
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.3382857   -0.5842023   -0.0923692
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.4007375   -0.4600242   -0.3414509
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.4308633   -0.5009129   -0.3608138
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.3003848   -0.3542667   -0.2465028
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2478908   -0.2952295   -0.2005520
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1952832   -0.2296116   -0.1609548
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4101577   -0.4779553   -0.3423600
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.6329922   -1.2595580   -0.0064265
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1885023   -0.2002195   -0.1767851
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1544972   -0.1995052   -0.1094892
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3104669   -0.3297777   -0.2911562
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1663388   -0.1889559   -0.1437216
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.6356674   -0.6522589   -0.6190759
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.5063923   -0.5453995   -0.4673852
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1618172   -0.2322163   -0.0914182
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0361694   -0.0727072    0.0003684
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0635003   -0.1129669   -0.0140336
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0586482   -0.1020995   -0.0151970
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0774068   -0.1223507   -0.0324628
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0578254   -0.1055529   -0.0100979
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0587451   -0.1039785   -0.0135116
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1168451   -0.1729342   -0.0607560
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1413765   -0.2106871   -0.0720659
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.3446920   -0.4403115   -0.2490726
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.2643543   -0.5313970    0.0026884
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2501362   -0.3031714   -0.1971010
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2679719   -0.3334801   -0.2024636
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1917335   -0.2382558   -0.1452111
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1941151   -0.2389881   -0.1492422
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0286157   -0.0400115   -0.0172198
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1233481   -0.1511561   -0.0955400
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.2243979   -0.2801087   -0.1686871
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1300167   -0.1418303   -0.1182031
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0936390   -0.1273601   -0.0599179
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2009801   -0.2182471   -0.1837131
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0963875   -0.1141285   -0.0786465
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3799530   -0.3969380   -0.3629679
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2154239   -0.2400070   -0.1908407
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1325852   -0.2134297   -0.0517408
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0052728   -0.0349237    0.0243782
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0175790   -0.0705254    0.0353675
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0351330   -0.0760109    0.0057450
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0799916   -0.1359475   -0.0240358
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0234100   -0.0605104    0.0136904
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0351631   -0.0682494   -0.0020769
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0556972   -0.0899845   -0.0214098
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1065051   -0.1534516   -0.0595586
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.2120042   -0.3370891   -0.0869193
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2362183   -0.3109239   -0.1615126
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1444265   -0.1954014   -0.0934516
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1704718   -0.2246496   -0.1162939
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0870288   -0.1151085   -0.0589490
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1313045   -0.1869214   -0.0756876
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0802323   -0.1036620   -0.0568027
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0715002   -0.1017452   -0.0412553
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1436368   -0.1611524   -0.1261212
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0658072   -0.0822308   -0.0493836
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.2741119   -0.2955130   -0.2527108
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1363146   -0.1581204   -0.1145087
