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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** enwast

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

agecat      studyid          country                        enwast    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0               0       66      87  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0               1        9      87  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1               0        9      87  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1               1        3      87  stunted          
Birth       CMIN             BANGLADESH                     0               0       14      19  stunted          
Birth       CMIN             BANGLADESH                     0               1        1      19  stunted          
Birth       CMIN             BANGLADESH                     1               0        3      19  stunted          
Birth       CMIN             BANGLADESH                     1               1        1      19  stunted          
Birth       COHORTS          GUATEMALA                      0               0      540     762  stunted          
Birth       COHORTS          GUATEMALA                      0               1       24     762  stunted          
Birth       COHORTS          GUATEMALA                      1               0      198     762  stunted          
Birth       COHORTS          GUATEMALA                      1               1        0     762  stunted          
Birth       COHORTS          INDIA                          0               0     4772    6231  stunted          
Birth       COHORTS          INDIA                          0               1      325    6231  stunted          
Birth       COHORTS          INDIA                          1               0     1074    6231  stunted          
Birth       COHORTS          INDIA                          1               1       60    6231  stunted          
Birth       COHORTS          PHILIPPINES                    0               0     2373    2910  stunted          
Birth       COHORTS          PHILIPPINES                    0               1       75    2910  stunted          
Birth       COHORTS          PHILIPPINES                    1               0      451    2910  stunted          
Birth       COHORTS          PHILIPPINES                    1               1       11    2910  stunted          
Birth       CONTENT          PERU                           0               0        2       2  stunted          
Birth       CONTENT          PERU                           0               1        0       2  stunted          
Birth       CONTENT          PERU                           1               0        0       2  stunted          
Birth       CONTENT          PERU                           1               1        0       2  stunted          
Birth       EE               PAKISTAN                       0               0      120     180  stunted          
Birth       EE               PAKISTAN                       0               1       35     180  stunted          
Birth       EE               PAKISTAN                       1               0       20     180  stunted          
Birth       EE               PAKISTAN                       1               1        5     180  stunted          
Birth       GMS-Nepal        NEPAL                          0               0      450     645  stunted          
Birth       GMS-Nepal        NEPAL                          0               1       59     645  stunted          
Birth       GMS-Nepal        NEPAL                          1               0      124     645  stunted          
Birth       GMS-Nepal        NEPAL                          1               1       12     645  stunted          
Birth       IRC              INDIA                          0               0      228     364  stunted          
Birth       IRC              INDIA                          0               1       23     364  stunted          
Birth       IRC              INDIA                          1               0      111     364  stunted          
Birth       IRC              INDIA                          1               1        2     364  stunted          
Birth       JiVitA-3         BANGLADESH                     0               0    13377   18062  stunted          
Birth       JiVitA-3         BANGLADESH                     0               1     2664   18062  stunted          
Birth       JiVitA-3         BANGLADESH                     1               0     1691   18062  stunted          
Birth       JiVitA-3         BANGLADESH                     1               1      330   18062  stunted          
Birth       JiVitA-4         BANGLADESH                     0               0     1777    2399  stunted          
Birth       JiVitA-4         BANGLADESH                     0               1      380    2399  stunted          
Birth       JiVitA-4         BANGLADESH                     1               0      189    2399  stunted          
Birth       JiVitA-4         BANGLADESH                     1               1       53    2399  stunted          
Birth       Keneba           GAMBIA                         0               0     1065    1488  stunted          
Birth       Keneba           GAMBIA                         0               1       37    1488  stunted          
Birth       Keneba           GAMBIA                         1               0      381    1488  stunted          
Birth       Keneba           GAMBIA                         1               1        5    1488  stunted          
Birth       MAL-ED           BANGLADESH                     0               0      155     215  stunted          
Birth       MAL-ED           BANGLADESH                     0               1       24     215  stunted          
Birth       MAL-ED           BANGLADESH                     1               0       32     215  stunted          
Birth       MAL-ED           BANGLADESH                     1               1        4     215  stunted          
Birth       MAL-ED           BRAZIL                         0               0       54      62  stunted          
Birth       MAL-ED           BRAZIL                         0               1        6      62  stunted          
Birth       MAL-ED           BRAZIL                         1               0        2      62  stunted          
Birth       MAL-ED           BRAZIL                         1               1        0      62  stunted          
Birth       MAL-ED           INDIA                          0               0       33      45  stunted          
Birth       MAL-ED           INDIA                          0               1        7      45  stunted          
Birth       MAL-ED           INDIA                          1               0        4      45  stunted          
Birth       MAL-ED           INDIA                          1               1        1      45  stunted          
Birth       MAL-ED           NEPAL                          0               0       24      26  stunted          
Birth       MAL-ED           NEPAL                          0               1        0      26  stunted          
Birth       MAL-ED           NEPAL                          1               0        1      26  stunted          
Birth       MAL-ED           NEPAL                          1               1        1      26  stunted          
Birth       MAL-ED           PERU                           0               0      202     228  stunted          
Birth       MAL-ED           PERU                           0               1       21     228  stunted          
Birth       MAL-ED           PERU                           1               0        5     228  stunted          
Birth       MAL-ED           PERU                           1               1        0     228  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0               0      100     121  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0               1        8     121  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1               0       13     121  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1               1        0     121  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      102     115  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       12     115  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        0     115  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     115  stunted          
Birth       NIH-Birth        BANGLADESH                     0               0      360     580  stunted          
Birth       NIH-Birth        BANGLADESH                     0               1       47     580  stunted          
Birth       NIH-Birth        BANGLADESH                     1               0      151     580  stunted          
Birth       NIH-Birth        BANGLADESH                     1               1       22     580  stunted          
Birth       NIH-Crypto       BANGLADESH                     0               0      468     713  stunted          
Birth       NIH-Crypto       BANGLADESH                     0               1       67     713  stunted          
Birth       NIH-Crypto       BANGLADESH                     1               0      163     713  stunted          
Birth       NIH-Crypto       BANGLADESH                     1               1       15     713  stunted          
Birth       PROBIT           BELARUS                        0               0    10882   13886  stunted          
Birth       PROBIT           BELARUS                        0               1       27   13886  stunted          
Birth       PROBIT           BELARUS                        1               0     2977   13886  stunted          
Birth       PROBIT           BELARUS                        1               1        0   13886  stunted          
Birth       PROVIDE          BANGLADESH                     0               0      386     532  stunted          
Birth       PROVIDE          BANGLADESH                     0               1       29     532  stunted          
Birth       PROVIDE          BANGLADESH                     1               0      105     532  stunted          
Birth       PROVIDE          BANGLADESH                     1               1       12     532  stunted          
Birth       ResPak           PAKISTAN                       0               0       26      38  stunted          
Birth       ResPak           PAKISTAN                       0               1        8      38  stunted          
Birth       ResPak           PAKISTAN                       1               0        2      38  stunted          
Birth       ResPak           PAKISTAN                       1               1        2      38  stunted          
Birth       SAS-CompFeed     INDIA                          0               0      806    1105  stunted          
Birth       SAS-CompFeed     INDIA                          0               1      179    1105  stunted          
Birth       SAS-CompFeed     INDIA                          1               0       97    1105  stunted          
Birth       SAS-CompFeed     INDIA                          1               1       23    1105  stunted          
Birth       ZVITAMBO         ZIMBABWE                       0               0    10252   13092  stunted          
Birth       ZVITAMBO         ZIMBABWE                       0               1      604   13092  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1               0     2146   13092  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1               1       90   13092  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0               0      196     363  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0               1       76     363  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1               0       57     363  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1               1       34     363  stunted          
6 months    CMIN             BANGLADESH                     0               0      142     232  stunted          
6 months    CMIN             BANGLADESH                     0               1       76     232  stunted          
6 months    CMIN             BANGLADESH                     1               0        8     232  stunted          
6 months    CMIN             BANGLADESH                     1               1        6     232  stunted          
6 months    COHORTS          GUATEMALA                      0               0      420     901  stunted          
6 months    COHORTS          GUATEMALA                      0               1      305     901  stunted          
6 months    COHORTS          GUATEMALA                      1               0      115     901  stunted          
6 months    COHORTS          GUATEMALA                      1               1       61     901  stunted          
6 months    COHORTS          INDIA                          0               0     4516    6508  stunted          
6 months    COHORTS          INDIA                          0               1      848    6508  stunted          
6 months    COHORTS          INDIA                          1               0      943    6508  stunted          
6 months    COHORTS          INDIA                          1               1      201    6508  stunted          
6 months    COHORTS          PHILIPPINES                    0               0     1760    2593  stunted          
6 months    COHORTS          PHILIPPINES                    0               1      431    2593  stunted          
6 months    COHORTS          PHILIPPINES                    1               0      332    2593  stunted          
6 months    COHORTS          PHILIPPINES                    1               1       70    2593  stunted          
6 months    CONTENT          PERU                           0               0      205     215  stunted          
6 months    CONTENT          PERU                           0               1        9     215  stunted          
6 months    CONTENT          PERU                           1               0        1     215  stunted          
6 months    CONTENT          PERU                           1               1        0     215  stunted          
6 months    EE               PAKISTAN                       0               0      152     292  stunted          
6 months    EE               PAKISTAN                       0               1      103     292  stunted          
6 months    EE               PAKISTAN                       1               0       22     292  stunted          
6 months    EE               PAKISTAN                       1               1       15     292  stunted          
6 months    GMS-Nepal        NEPAL                          0               0      345     528  stunted          
6 months    GMS-Nepal        NEPAL                          0               1       76     528  stunted          
6 months    GMS-Nepal        NEPAL                          1               0       86     528  stunted          
6 months    GMS-Nepal        NEPAL                          1               1       21     528  stunted          
6 months    Guatemala BSC    GUATEMALA                      0               0      208     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      0               1       85     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      1               0        1     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      1               1        5     299  stunted          
6 months    IRC              INDIA                          0               0      214     382  stunted          
6 months    IRC              INDIA                          0               1       54     382  stunted          
6 months    IRC              INDIA                          1               0       84     382  stunted          
6 months    IRC              INDIA                          1               1       30     382  stunted          
6 months    JiVitA-3         BANGLADESH                     0               0    10434   14244  stunted          
6 months    JiVitA-3         BANGLADESH                     0               1     2290   14244  stunted          
6 months    JiVitA-3         BANGLADESH                     1               0     1225   14244  stunted          
6 months    JiVitA-3         BANGLADESH                     1               1      295   14244  stunted          
6 months    JiVitA-4         BANGLADESH                     0               0     3163    4410  stunted          
6 months    JiVitA-4         BANGLADESH                     0               1      847    4410  stunted          
6 months    JiVitA-4         BANGLADESH                     1               0      295    4410  stunted          
6 months    JiVitA-4         BANGLADESH                     1               1      105    4410  stunted          
6 months    Keneba           GAMBIA                         0               0     1425    2029  stunted          
6 months    Keneba           GAMBIA                         0               1      216    2029  stunted          
6 months    Keneba           GAMBIA                         1               0      325    2029  stunted          
6 months    Keneba           GAMBIA                         1               1       63    2029  stunted          
6 months    LCNI-5           MALAWI                         0               0      522     839  stunted          
6 months    LCNI-5           MALAWI                         0               1      303     839  stunted          
6 months    LCNI-5           MALAWI                         1               0        8     839  stunted          
6 months    LCNI-5           MALAWI                         1               1        6     839  stunted          
6 months    MAL-ED           BANGLADESH                     0               0      158     229  stunted          
6 months    MAL-ED           BANGLADESH                     0               1       30     229  stunted          
6 months    MAL-ED           BANGLADESH                     1               0       34     229  stunted          
6 months    MAL-ED           BANGLADESH                     1               1        7     229  stunted          
6 months    MAL-ED           BRAZIL                         0               0      186     199  stunted          
6 months    MAL-ED           BRAZIL                         0               1        6     199  stunted          
6 months    MAL-ED           BRAZIL                         1               0        7     199  stunted          
6 months    MAL-ED           BRAZIL                         1               1        0     199  stunted          
6 months    MAL-ED           INDIA                          0               0      154     232  stunted          
6 months    MAL-ED           INDIA                          0               1       35     232  stunted          
6 months    MAL-ED           INDIA                          1               0       36     232  stunted          
6 months    MAL-ED           INDIA                          1               1        7     232  stunted          
6 months    MAL-ED           NEPAL                          0               0      193     232  stunted          
6 months    MAL-ED           NEPAL                          0               1        8     232  stunted          
6 months    MAL-ED           NEPAL                          1               0       29     232  stunted          
6 months    MAL-ED           NEPAL                          1               1        2     232  stunted          
6 months    MAL-ED           PERU                           0               0      205     266  stunted          
6 months    MAL-ED           PERU                           0               1       56     266  stunted          
6 months    MAL-ED           PERU                           1               0        5     266  stunted          
6 months    MAL-ED           PERU                           1               1        0     266  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0               0      189     253  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0               1       46     253  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1               0       15     253  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1               1        3     253  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      184     238  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       51     238  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        2     238  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     238  stunted          
6 months    NIH-Birth        BANGLADESH                     0               0      282     514  stunted          
6 months    NIH-Birth        BANGLADESH                     0               1       86     514  stunted          
6 months    NIH-Birth        BANGLADESH                     1               0      107     514  stunted          
6 months    NIH-Birth        BANGLADESH                     1               1       39     514  stunted          
6 months    NIH-Crypto       BANGLADESH                     0               0      417     694  stunted          
6 months    NIH-Crypto       BANGLADESH                     0               1      100     694  stunted          
6 months    NIH-Crypto       BANGLADESH                     1               0      143     694  stunted          
6 months    NIH-Crypto       BANGLADESH                     1               1       34     694  stunted          
6 months    PROBIT           BELARUS                        0               0    12188   15753  stunted          
6 months    PROBIT           BELARUS                        0               1      501   15753  stunted          
6 months    PROBIT           BELARUS                        1               0     2947   15753  stunted          
6 months    PROBIT           BELARUS                        1               1      117   15753  stunted          
6 months    PROVIDE          BANGLADESH                     0               0      403     597  stunted          
6 months    PROVIDE          BANGLADESH                     0               1       69     597  stunted          
6 months    PROVIDE          BANGLADESH                     1               0      104     597  stunted          
6 months    PROVIDE          BANGLADESH                     1               1       21     597  stunted          
6 months    ResPak           PAKISTAN                       0               0      120     228  stunted          
6 months    ResPak           PAKISTAN                       0               1       65     228  stunted          
6 months    ResPak           PAKISTAN                       1               0       26     228  stunted          
6 months    ResPak           PAKISTAN                       1               1       17     228  stunted          
6 months    SAS-CompFeed     INDIA                          0               0      831    1213  stunted          
6 months    SAS-CompFeed     INDIA                          0               1      243    1213  stunted          
6 months    SAS-CompFeed     INDIA                          1               0       90    1213  stunted          
6 months    SAS-CompFeed     INDIA                          1               1       49    1213  stunted          
6 months    SAS-FoodSuppl    INDIA                          0               0      181     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          0               1      130     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1               0       36     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1               1       33     380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1715    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      186    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      111    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        8    2020  stunted          
6 months    ZVITAMBO         ZIMBABWE                       0               0     6001    8174  stunted          
6 months    ZVITAMBO         ZIMBABWE                       0               1      903    8174  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1               0      974    8174  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1               1      296    8174  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0               0       73     364  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0               1      199     364  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1               0       29     364  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1               1       63     364  stunted          
24 months   CMIN             BANGLADESH                     0               0       71     232  stunted          
24 months   CMIN             BANGLADESH                     0               1      146     232  stunted          
24 months   CMIN             BANGLADESH                     1               0        6     232  stunted          
24 months   CMIN             BANGLADESH                     1               1        9     232  stunted          
24 months   COHORTS          GUATEMALA                      0               0      160    1027  stunted          
24 months   COHORTS          GUATEMALA                      0               1      714    1027  stunted          
24 months   COHORTS          GUATEMALA                      1               0       32    1027  stunted          
24 months   COHORTS          GUATEMALA                      1               1      121    1027  stunted          
24 months   COHORTS          INDIA                          0               0     2031    5070  stunted          
24 months   COHORTS          INDIA                          0               1     2221    5070  stunted          
24 months   COHORTS          INDIA                          1               0      393    5070  stunted          
24 months   COHORTS          INDIA                          1               1      425    5070  stunted          
24 months   COHORTS          PHILIPPINES                    0               0      761    2347  stunted          
24 months   COHORTS          PHILIPPINES                    0               1     1228    2347  stunted          
24 months   COHORTS          PHILIPPINES                    1               0      147    2347  stunted          
24 months   COHORTS          PHILIPPINES                    1               1      211    2347  stunted          
24 months   CONTENT          PERU                           0               0      150     164  stunted          
24 months   CONTENT          PERU                           0               1       13     164  stunted          
24 months   CONTENT          PERU                           1               0        1     164  stunted          
24 months   CONTENT          PERU                           1               1        0     164  stunted          
24 months   EE               PAKISTAN                       0               0       35     137  stunted          
24 months   EE               PAKISTAN                       0               1       80     137  stunted          
24 months   EE               PAKISTAN                       1               0        7     137  stunted          
24 months   EE               PAKISTAN                       1               1       15     137  stunted          
24 months   GMS-Nepal        NEPAL                          0               0      204     455  stunted          
24 months   GMS-Nepal        NEPAL                          0               1      161     455  stunted          
24 months   GMS-Nepal        NEPAL                          1               0       54     455  stunted          
24 months   GMS-Nepal        NEPAL                          1               1       36     455  stunted          
24 months   IRC              INDIA                          0               0      164     383  stunted          
24 months   IRC              INDIA                          0               1      105     383  stunted          
24 months   IRC              INDIA                          1               0       63     383  stunted          
24 months   IRC              INDIA                          1               1       51     383  stunted          
24 months   JiVitA-3         BANGLADESH                     0               0     3592    7242  stunted          
24 months   JiVitA-3         BANGLADESH                     0               1     2830    7242  stunted          
24 months   JiVitA-3         BANGLADESH                     1               0      474    7242  stunted          
24 months   JiVitA-3         BANGLADESH                     1               1      346    7242  stunted          
24 months   JiVitA-4         BANGLADESH                     0               0     2490    4315  stunted          
24 months   JiVitA-4         BANGLADESH                     0               1     1453    4315  stunted          
24 months   JiVitA-4         BANGLADESH                     1               0      214    4315  stunted          
24 months   JiVitA-4         BANGLADESH                     1               1      158    4315  stunted          
24 months   Keneba           GAMBIA                         0               0      915    1677  stunted          
24 months   Keneba           GAMBIA                         0               1      439    1677  stunted          
24 months   Keneba           GAMBIA                         1               0      200    1677  stunted          
24 months   Keneba           GAMBIA                         1               1      123    1677  stunted          
24 months   LCNI-5           MALAWI                         0               0      317     579  stunted          
24 months   LCNI-5           MALAWI                         0               1      252     579  stunted          
24 months   LCNI-5           MALAWI                         1               0        4     579  stunted          
24 months   LCNI-5           MALAWI                         1               1        6     579  stunted          
24 months   MAL-ED           BANGLADESH                     0               0       88     201  stunted          
24 months   MAL-ED           BANGLADESH                     0               1       76     201  stunted          
24 months   MAL-ED           BANGLADESH                     1               0       22     201  stunted          
24 months   MAL-ED           BANGLADESH                     1               1       15     201  stunted          
24 months   MAL-ED           BRAZIL                         0               0      147     160  stunted          
24 months   MAL-ED           BRAZIL                         0               1        7     160  stunted          
24 months   MAL-ED           BRAZIL                         1               0        6     160  stunted          
24 months   MAL-ED           BRAZIL                         1               1        0     160  stunted          
24 months   MAL-ED           INDIA                          0               0       98     223  stunted          
24 months   MAL-ED           INDIA                          0               1       82     223  stunted          
24 months   MAL-ED           INDIA                          1               0       32     223  stunted          
24 months   MAL-ED           INDIA                          1               1       11     223  stunted          
24 months   MAL-ED           NEPAL                          0               0      155     225  stunted          
24 months   MAL-ED           NEPAL                          0               1       40     225  stunted          
24 months   MAL-ED           NEPAL                          1               0       22     225  stunted          
24 months   MAL-ED           NEPAL                          1               1        8     225  stunted          
24 months   MAL-ED           PERU                           0               0      122     197  stunted          
24 months   MAL-ED           PERU                           0               1       71     197  stunted          
24 months   MAL-ED           PERU                           1               0        3     197  stunted          
24 months   MAL-ED           PERU                           1               1        1     197  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0               0      140     237  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0               1       81     237  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1               0       13     237  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1               1        3     237  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0       56     205  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1      146     205  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        2     205  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     205  stunted          
24 months   NIH-Birth        BANGLADESH                     0               0      129     409  stunted          
24 months   NIH-Birth        BANGLADESH                     0               1      164     409  stunted          
24 months   NIH-Birth        BANGLADESH                     1               0       56     409  stunted          
24 months   NIH-Birth        BANGLADESH                     1               1       60     409  stunted          
24 months   NIH-Crypto       BANGLADESH                     0               0      276     500  stunted          
24 months   NIH-Crypto       BANGLADESH                     0               1       88     500  stunted          
24 months   NIH-Crypto       BANGLADESH                     1               0      100     500  stunted          
24 months   NIH-Crypto       BANGLADESH                     1               1       36     500  stunted          
24 months   PROBIT           BELARUS                        0               0     2921    4032  stunted          
24 months   PROBIT           BELARUS                        0               1      197    4032  stunted          
24 months   PROBIT           BELARUS                        1               0      837    4032  stunted          
24 months   PROBIT           BELARUS                        1               1       77    4032  stunted          
24 months   PROVIDE          BANGLADESH                     0               0      303     570  stunted          
24 months   PROVIDE          BANGLADESH                     0               1      149     570  stunted          
24 months   PROVIDE          BANGLADESH                     1               0       82     570  stunted          
24 months   PROVIDE          BANGLADESH                     1               1       36     570  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        4       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       0               0      918    1505  stunted          
24 months   ZVITAMBO         ZIMBABWE                       0               1      428    1505  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1               0      100    1505  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1               1       59    1505  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
