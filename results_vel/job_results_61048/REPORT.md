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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid        country                        earlybf    n_cell       n
-------------  -------------  -----------------------------  --------  -------  ------
0-3 months     EE             PAKISTAN                       1              55     294
0-3 months     EE             PAKISTAN                       0             239     294
0-3 months     GMS-Nepal      NEPAL                          1             139     462
0-3 months     GMS-Nepal      NEPAL                          0             323     462
0-3 months     JiVitA-3       BANGLADESH                     1              55   19878
0-3 months     JiVitA-3       BANGLADESH                     0           19823   19878
0-3 months     JiVitA-4       BANGLADESH                     1            1295    1807
0-3 months     JiVitA-4       BANGLADESH                     0             512    1807
0-3 months     MAL-ED         BANGLADESH                     1             151     242
0-3 months     MAL-ED         BANGLADESH                     0              91     242
0-3 months     MAL-ED         BRAZIL                         1              76     168
0-3 months     MAL-ED         BRAZIL                         0              92     168
0-3 months     MAL-ED         INDIA                          1             110     183
0-3 months     MAL-ED         INDIA                          0              73     183
0-3 months     MAL-ED         NEPAL                          1              70     156
0-3 months     MAL-ED         NEPAL                          0              86     156
0-3 months     MAL-ED         PERU                           1             200     265
0-3 months     MAL-ED         PERU                           0              65     265
0-3 months     MAL-ED         SOUTH AFRICA                   1             134     208
0-3 months     MAL-ED         SOUTH AFRICA                   0              74     208
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             196     228
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     228
0-3 months     NIH-Crypto     BANGLADESH                     1             623     721
0-3 months     NIH-Crypto     BANGLADESH                     0              98     721
0-3 months     SAS-CompFeed   INDIA                          1              93    1261
0-3 months     SAS-CompFeed   INDIA                          0            1168    1261
0-3 months     ZVITAMBO       ZIMBABWE                       1            3772    7074
0-3 months     ZVITAMBO       ZIMBABWE                       0            3302    7074
3-6 months     EE             PAKISTAN                       1              49     272
3-6 months     EE             PAKISTAN                       0             223     272
3-6 months     GMS-Nepal      NEPAL                          1             127     422
3-6 months     GMS-Nepal      NEPAL                          0             295     422
3-6 months     JiVitA-3       BANGLADESH                     1              25   12581
3-6 months     JiVitA-3       BANGLADESH                     0           12556   12581
3-6 months     JiVitA-4       BANGLADESH                     1            1315    1840
3-6 months     JiVitA-4       BANGLADESH                     0             525    1840
3-6 months     MAL-ED         BANGLADESH                     1             140     230
3-6 months     MAL-ED         BANGLADESH                     0              90     230
3-6 months     MAL-ED         BRAZIL                         1              95     208
3-6 months     MAL-ED         BRAZIL                         0             113     208
3-6 months     MAL-ED         INDIA                          1             137     230
3-6 months     MAL-ED         INDIA                          0              93     230
3-6 months     MAL-ED         NEPAL                          1              95     233
3-6 months     MAL-ED         NEPAL                          0             138     233
3-6 months     MAL-ED         PERU                           1             199     267
3-6 months     MAL-ED         PERU                           0              68     267
3-6 months     MAL-ED         SOUTH AFRICA                   1             150     240
3-6 months     MAL-ED         SOUTH AFRICA                   0              90     240
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198     239
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41     239
3-6 months     NIH-Crypto     BANGLADESH                     1             602     695
3-6 months     NIH-Crypto     BANGLADESH                     0              93     695
3-6 months     SAS-CompFeed   INDIA                          1              87    1124
3-6 months     SAS-CompFeed   INDIA                          0            1037    1124
3-6 months     ZVITAMBO       ZIMBABWE                       1            2948    5473
3-6 months     ZVITAMBO       ZIMBABWE                       0            2525    5473
6-9 months     EE             PAKISTAN                       1              54     295
6-9 months     EE             PAKISTAN                       0             241     295
6-9 months     GMS-Nepal      NEPAL                          1             128     432
6-9 months     GMS-Nepal      NEPAL                          0             304     432
6-9 months     JiVitA-4       BANGLADESH                     1            2016    3054
6-9 months     JiVitA-4       BANGLADESH                     0            1038    3054
6-9 months     MAL-ED         BANGLADESH                     1             136     223
6-9 months     MAL-ED         BANGLADESH                     0              87     223
6-9 months     MAL-ED         BRAZIL                         1              91     198
6-9 months     MAL-ED         BRAZIL                         0             107     198
6-9 months     MAL-ED         INDIA                          1             138     230
6-9 months     MAL-ED         INDIA                          0              92     230
6-9 months     MAL-ED         NEPAL                          1              95     230
6-9 months     MAL-ED         NEPAL                          0             135     230
6-9 months     MAL-ED         PERU                           1             179     245
6-9 months     MAL-ED         PERU                           0              66     245
6-9 months     MAL-ED         SOUTH AFRICA                   1             138     227
6-9 months     MAL-ED         SOUTH AFRICA                   0              89     227
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     225
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37     225
6-9 months     NIH-Crypto     BANGLADESH                     1             595     688
6-9 months     NIH-Crypto     BANGLADESH                     0              93     688
6-9 months     SAS-CompFeed   INDIA                          1              91    1144
6-9 months     SAS-CompFeed   INDIA                          0            1053    1144
6-9 months     ZVITAMBO       ZIMBABWE                       1            2839    5271
6-9 months     ZVITAMBO       ZIMBABWE                       0            2432    5271
9-12 months    EE             PAKISTAN                       1              57     316
9-12 months    EE             PAKISTAN                       0             259     316
9-12 months    GMS-Nepal      NEPAL                          1             124     425
9-12 months    GMS-Nepal      NEPAL                          0             301     425
9-12 months    JiVitA-4       BANGLADESH                     1            2244    3501
9-12 months    JiVitA-4       BANGLADESH                     0            1257    3501
9-12 months    MAL-ED         BANGLADESH                     1             137     224
9-12 months    MAL-ED         BANGLADESH                     0              87     224
9-12 months    MAL-ED         BRAZIL                         1              89     194
9-12 months    MAL-ED         BRAZIL                         0             105     194
9-12 months    MAL-ED         INDIA                          1             135     227
9-12 months    MAL-ED         INDIA                          0              92     227
9-12 months    MAL-ED         NEPAL                          1              95     229
9-12 months    MAL-ED         NEPAL                          0             134     229
9-12 months    MAL-ED         PERU                           1             173     235
9-12 months    MAL-ED         PERU                           0              62     235
9-12 months    MAL-ED         SOUTH AFRICA                   1             138     230
9-12 months    MAL-ED         SOUTH AFRICA                   0              92     230
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     224
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36     224
9-12 months    NIH-Crypto     BANGLADESH                     1             580     674
9-12 months    NIH-Crypto     BANGLADESH                     0              94     674
9-12 months    SAS-CompFeed   INDIA                          1              86    1146
9-12 months    SAS-CompFeed   INDIA                          0            1060    1146
9-12 months    ZVITAMBO       ZIMBABWE                       1            2809    5265
9-12 months    ZVITAMBO       ZIMBABWE                       0            2456    5265
12-15 months   EE             PAKISTAN                       1              54     289
12-15 months   EE             PAKISTAN                       0             235     289
12-15 months   GMS-Nepal      NEPAL                          1             125     426
12-15 months   GMS-Nepal      NEPAL                          0             301     426
12-15 months   JiVitA-4       BANGLADESH                     1            2267    3549
12-15 months   JiVitA-4       BANGLADESH                     0            1282    3549
12-15 months   MAL-ED         BANGLADESH                     1             127     211
12-15 months   MAL-ED         BANGLADESH                     0              84     211
12-15 months   MAL-ED         BRAZIL                         1              86     184
12-15 months   MAL-ED         BRAZIL                         0              98     184
12-15 months   MAL-ED         INDIA                          1             135     226
12-15 months   MAL-ED         INDIA                          0              91     226
12-15 months   MAL-ED         NEPAL                          1              95     230
12-15 months   MAL-ED         NEPAL                          0             135     230
12-15 months   MAL-ED         PERU                           1             163     224
12-15 months   MAL-ED         PERU                           0              61     224
12-15 months   MAL-ED         SOUTH AFRICA                   1             136     225
12-15 months   MAL-ED         SOUTH AFRICA                   0              89     225
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             190     226
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36     226
12-15 months   NIH-Crypto     BANGLADESH                     1             565     660
12-15 months   NIH-Crypto     BANGLADESH                     0              95     660
12-15 months   SAS-CompFeed   INDIA                          1              84    1168
12-15 months   SAS-CompFeed   INDIA                          0            1084    1168
12-15 months   ZVITAMBO       ZIMBABWE                       1            1144    2218
12-15 months   ZVITAMBO       ZIMBABWE                       0            1074    2218
15-18 months   EE             PAKISTAN                       1              52     270
15-18 months   EE             PAKISTAN                       0             218     270
15-18 months   GMS-Nepal      NEPAL                          1             132     437
15-18 months   GMS-Nepal      NEPAL                          0             305     437
15-18 months   JiVitA-4       BANGLADESH                     1            2280    3550
15-18 months   JiVitA-4       BANGLADESH                     0            1270    3550
15-18 months   MAL-ED         BANGLADESH                     1             128     211
15-18 months   MAL-ED         BANGLADESH                     0              83     211
15-18 months   MAL-ED         BRAZIL                         1              85     175
15-18 months   MAL-ED         BRAZIL                         0              90     175
15-18 months   MAL-ED         INDIA                          1             135     226
15-18 months   MAL-ED         INDIA                          0              91     226
15-18 months   MAL-ED         NEPAL                          1              95     227
15-18 months   MAL-ED         NEPAL                          0             132     227
15-18 months   MAL-ED         PERU                           1             154     213
15-18 months   MAL-ED         PERU                           0              59     213
15-18 months   MAL-ED         SOUTH AFRICA                   1             133     222
15-18 months   MAL-ED         SOUTH AFRICA                   0              89     222
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             185     217
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     217
15-18 months   NIH-Crypto     BANGLADESH                     1             518     604
15-18 months   NIH-Crypto     BANGLADESH                     0              86     604
15-18 months   SAS-CompFeed   INDIA                          1              88    1171
15-18 months   SAS-CompFeed   INDIA                          0            1083    1171
15-18 months   ZVITAMBO       ZIMBABWE                       1             947    1776
15-18 months   ZVITAMBO       ZIMBABWE                       0             829    1776
18-21 months   EE             PAKISTAN                       1              52     248
18-21 months   EE             PAKISTAN                       0             196     248
18-21 months   GMS-Nepal      NEPAL                          1             122     406
18-21 months   GMS-Nepal      NEPAL                          0             284     406
18-21 months   MAL-ED         BANGLADESH                     1             126     208
18-21 months   MAL-ED         BANGLADESH                     0              82     208
18-21 months   MAL-ED         BRAZIL                         1              80     167
18-21 months   MAL-ED         BRAZIL                         0              87     167
18-21 months   MAL-ED         INDIA                          1             134     226
18-21 months   MAL-ED         INDIA                          0              92     226
18-21 months   MAL-ED         NEPAL                          1              95     227
18-21 months   MAL-ED         NEPAL                          0             132     227
18-21 months   MAL-ED         PERU                           1             147     202
18-21 months   MAL-ED         PERU                           0              55     202
18-21 months   MAL-ED         SOUTH AFRICA                   1             140     230
18-21 months   MAL-ED         SOUTH AFRICA                   0              90     230
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             173     204
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              31     204
18-21 months   NIH-Crypto     BANGLADESH                     1             469     546
18-21 months   NIH-Crypto     BANGLADESH                     0              77     546
18-21 months   ZVITAMBO       ZIMBABWE                       1             728    1382
18-21 months   ZVITAMBO       ZIMBABWE                       0             654    1382
21-24 months   EE             PAKISTAN                       1              21     103
21-24 months   EE             PAKISTAN                       0              82     103
21-24 months   GMS-Nepal      NEPAL                          1             100     318
21-24 months   GMS-Nepal      NEPAL                          0             218     318
21-24 months   MAL-ED         BANGLADESH                     1             126     206
21-24 months   MAL-ED         BANGLADESH                     0              80     206
21-24 months   MAL-ED         BRAZIL                         1              77     165
21-24 months   MAL-ED         BRAZIL                         0              88     165
21-24 months   MAL-ED         INDIA                          1             133     226
21-24 months   MAL-ED         INDIA                          0              93     226
21-24 months   MAL-ED         NEPAL                          1              94     227
21-24 months   MAL-ED         NEPAL                          0             133     227
21-24 months   MAL-ED         PERU                           1             139     189
21-24 months   MAL-ED         PERU                           0              50     189
21-24 months   MAL-ED         SOUTH AFRICA                   1             142     232
21-24 months   MAL-ED         SOUTH AFRICA                   0              90     232
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             171     204
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              33     204
21-24 months   NIH-Crypto     BANGLADESH                     1             422     490
21-24 months   NIH-Crypto     BANGLADESH                     0              68     490
21-24 months   ZVITAMBO       ZIMBABWE                       1             527    1000
21-24 months   ZVITAMBO       ZIMBABWE                       0             473    1000


The following strata were considered:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7560e42b-d3c4-475b-9b57-a63619702a48/155b8a13-727f-4d92-85a1-08db367a8eee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7560e42b-d3c4-475b-9b57-a63619702a48/155b8a13-727f-4d92-85a1-08db367a8eee/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7560e42b-d3c4-475b-9b57-a63619702a48/155b8a13-727f-4d92-85a1-08db367a8eee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    NA                -0.2583301   -0.3381322   -0.1785280
0-3 months     EE             PAKISTAN                       0                    NA                -0.2074518   -0.2572369   -0.1576667
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0146645   -0.0569739    0.0276450
0-3 months     GMS-Nepal      NEPAL                          0                    NA                -0.0390739   -0.0718832   -0.0062646
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                -0.1178475   -0.1280480   -0.1076469
0-3 months     JiVitA-3       BANGLADESH                     0                    NA                 0.0745921    0.0695344    0.0796498
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                 0.0657744    0.0481069    0.0834419
0-3 months     JiVitA-4       BANGLADESH                     0                    NA                 0.0713695    0.0450619    0.0976772
0-3 months     MAL-ED         BANGLADESH                     1                    NA                -0.1341664   -0.1747956   -0.0935372
0-3 months     MAL-ED         BANGLADESH                     0                    NA                -0.0994600   -0.1575860   -0.0413341
0-3 months     MAL-ED         BRAZIL                         1                    NA                 0.1299674    0.0452222    0.2147126
0-3 months     MAL-ED         BRAZIL                         0                    NA                 0.1350322    0.0586559    0.2114086
0-3 months     MAL-ED         INDIA                          1                    NA                -0.0673190   -0.1326583   -0.0019797
0-3 months     MAL-ED         INDIA                          0                    NA                -0.0449347   -0.1192564    0.0293869
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.0123734   -0.0546831    0.0794298
0-3 months     MAL-ED         NEPAL                          0                    NA                 0.0944384    0.0363581    0.1525186
0-3 months     MAL-ED         PERU                           1                    NA                -0.2780867   -0.3151158   -0.2410576
0-3 months     MAL-ED         PERU                           0                    NA                -0.2096306   -0.2889170   -0.1303443
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.1855868   -0.2486599   -0.1225136
0-3 months     MAL-ED         SOUTH AFRICA                   0                    NA                -0.1801933   -0.2565506   -0.1038360
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1281610   -0.1697787   -0.0865433
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1641160   -0.2787350   -0.0494969
0-3 months     NIH-Crypto     BANGLADESH                     1                    NA                -0.2281328   -0.2467742   -0.2094914
0-3 months     NIH-Crypto     BANGLADESH                     0                    NA                -0.2582998   -0.3069968   -0.2096028
0-3 months     SAS-CompFeed   INDIA                          1                    NA                -0.1696327   -0.2439436   -0.0953218
0-3 months     SAS-CompFeed   INDIA                          0                    NA                -0.1272717   -0.1534597   -0.1010838
0-3 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.1160609   -0.1310196   -0.1011022
0-3 months     ZVITAMBO       ZIMBABWE                       0                    NA                -0.1684223   -0.1842569   -0.1525876
3-6 months     EE             PAKISTAN                       1                    NA                 0.0353320   -0.0394938    0.1101577
3-6 months     EE             PAKISTAN                       0                    NA                 0.0731006    0.0425973    0.1036039
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.1501867   -0.1874947   -0.1128787
3-6 months     GMS-Nepal      NEPAL                          0                    NA                -0.1623801   -0.1843598   -0.1404004
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                -0.0489280   -0.0603882   -0.0374678
3-6 months     JiVitA-3       BANGLADESH                     0                    NA                -0.0033299   -0.0083033    0.0016434
3-6 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0065653   -0.0234614    0.0103309
3-6 months     JiVitA-4       BANGLADESH                     0                    NA                -0.0121552   -0.0357453    0.0114349
3-6 months     MAL-ED         BANGLADESH                     1                    NA                -0.0154660   -0.0476590    0.0167271
3-6 months     MAL-ED         BANGLADESH                     0                    NA                -0.0272629   -0.0638745    0.0093487
3-6 months     MAL-ED         BRAZIL                         1                    NA                 0.0904442    0.0376349    0.1432535
3-6 months     MAL-ED         BRAZIL                         0                    NA                 0.0365815   -0.0139208    0.0870839
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0279105   -0.0639400    0.0081190
3-6 months     MAL-ED         INDIA                          0                    NA                -0.0429977   -0.0930299    0.0070345
3-6 months     MAL-ED         NEPAL                          1                    NA                -0.0450548   -0.0829615   -0.0071482
3-6 months     MAL-ED         NEPAL                          0                    NA                -0.0079024   -0.0439880    0.0281832
3-6 months     MAL-ED         PERU                           1                    NA                 0.0149633   -0.0222751    0.0522017
3-6 months     MAL-ED         PERU                           0                    NA                 0.0681674    0.0140212    0.1223136
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0233307   -0.0734893    0.0268279
3-6 months     MAL-ED         SOUTH AFRICA                   0                    NA                 0.0326477   -0.0248673    0.0901627
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0791242   -0.1142630   -0.0439853
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0252191   -0.1035271    0.0530889
3-6 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0151998   -0.0023899    0.0327896
3-6 months     NIH-Crypto     BANGLADESH                     0                    NA                 0.1047518    0.0534656    0.1560379
3-6 months     SAS-CompFeed   INDIA                          1                    NA                -0.0529303   -0.1158064    0.0099458
3-6 months     SAS-CompFeed   INDIA                          0                    NA                -0.0131576   -0.0319007    0.0055855
3-6 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0019729   -0.0152471    0.0113012
3-6 months     ZVITAMBO       ZIMBABWE                       0                    NA                 0.0043610   -0.0103929    0.0191150
6-9 months     EE             PAKISTAN                       1                    NA                -0.0921079   -0.1394802   -0.0447357
6-9 months     EE             PAKISTAN                       0                    NA                -0.0842315   -0.1078945   -0.0605685
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0359740   -0.0710984   -0.0008496
6-9 months     GMS-Nepal      NEPAL                          0                    NA                -0.0487376   -0.0708519   -0.0266232
6-9 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0299348   -0.0412530   -0.0186167
6-9 months     JiVitA-4       BANGLADESH                     0                    NA                -0.0277694   -0.0418547   -0.0136842
6-9 months     MAL-ED         BANGLADESH                     1                    NA                -0.0702991   -0.0943104   -0.0462878
6-9 months     MAL-ED         BANGLADESH                     0                    NA                -0.0691026   -0.0921931   -0.0460120
6-9 months     MAL-ED         BRAZIL                         1                    NA                 0.0191527   -0.0287658    0.0670712
6-9 months     MAL-ED         BRAZIL                         0                    NA                 0.0019154   -0.0493868    0.0532176
6-9 months     MAL-ED         INDIA                          1                    NA                -0.0939703   -0.1237280   -0.0642126
6-9 months     MAL-ED         INDIA                          0                    NA                -0.0414589   -0.0773113   -0.0056065
6-9 months     MAL-ED         NEPAL                          1                    NA                -0.0411770   -0.0688165   -0.0135375
6-9 months     MAL-ED         NEPAL                          0                    NA                -0.0306730   -0.0573379   -0.0040080
6-9 months     MAL-ED         PERU                           1                    NA                -0.0354898   -0.0637591   -0.0072205
6-9 months     MAL-ED         PERU                           0                    NA                -0.0269190   -0.0777782    0.0239403
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0353848   -0.0702567   -0.0005129
6-9 months     MAL-ED         SOUTH AFRICA                   0                    NA                 0.0059994   -0.0429057    0.0549046
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0918668   -0.1294058   -0.0543278
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1071330   -0.1863288   -0.0279373
6-9 months     NIH-Crypto     BANGLADESH                     1                    NA                -0.0325982   -0.0460637   -0.0191328
6-9 months     NIH-Crypto     BANGLADESH                     0                    NA                -0.0234848   -0.0619476    0.0149781
6-9 months     SAS-CompFeed   INDIA                          1                    NA                -0.0916487   -0.1500382   -0.0332591
6-9 months     SAS-CompFeed   INDIA                          0                    NA                -0.0810844   -0.0913109   -0.0708580
6-9 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0296032   -0.0415403   -0.0176660
6-9 months     ZVITAMBO       ZIMBABWE                       0                    NA                -0.0360122   -0.0489496   -0.0230748
9-12 months    EE             PAKISTAN                       1                    NA                -0.1028763   -0.1355463   -0.0702062
9-12 months    EE             PAKISTAN                       0                    NA                -0.1037445   -0.1203743   -0.0871147
9-12 months    GMS-Nepal      NEPAL                          1                    NA                -0.0947040   -0.1218598   -0.0675481
9-12 months    GMS-Nepal      NEPAL                          0                    NA                -0.0755834   -0.0921907   -0.0589762
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0557005   -0.0651001   -0.0463009
9-12 months    JiVitA-4       BANGLADESH                     0                    NA                -0.0454683   -0.0576774   -0.0332592
9-12 months    MAL-ED         BANGLADESH                     1                    NA                -0.0993295   -0.1198393   -0.0788196
9-12 months    MAL-ED         BANGLADESH                     0                    NA                -0.0697129   -0.0957661   -0.0436597
9-12 months    MAL-ED         BRAZIL                         1                    NA                 0.0134553   -0.0251755    0.0520861
9-12 months    MAL-ED         BRAZIL                         0                    NA                 0.0026622   -0.0433973    0.0487218
9-12 months    MAL-ED         INDIA                          1                    NA                -0.0896057   -0.1099588   -0.0692525
9-12 months    MAL-ED         INDIA                          0                    NA                -0.0898710   -0.1147828   -0.0649592
9-12 months    MAL-ED         NEPAL                          1                    NA                -0.0561945   -0.0816572   -0.0307317
9-12 months    MAL-ED         NEPAL                          0                    NA                -0.0671496   -0.0899431   -0.0443561
9-12 months    MAL-ED         PERU                           1                    NA                -0.0396463   -0.0645790   -0.0147136
9-12 months    MAL-ED         PERU                           0                    NA                -0.0490573   -0.0917368   -0.0063779
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0673968   -0.0994014   -0.0353922
9-12 months    MAL-ED         SOUTH AFRICA                   0                    NA                -0.1092780   -0.1574182   -0.0611379
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1537236   -0.1913660   -0.1160812
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1461336   -0.2225663   -0.0697009
9-12 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0322954   -0.0441850   -0.0204058
9-12 months    NIH-Crypto     BANGLADESH                     0                    NA                -0.0478808   -0.0775521   -0.0182095
9-12 months    SAS-CompFeed   INDIA                          1                    NA                -0.0602447   -0.0930101   -0.0274793
9-12 months    SAS-CompFeed   INDIA                          0                    NA                -0.0807101   -0.0977266   -0.0636935
9-12 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.0622255   -0.0731711   -0.0512799
9-12 months    ZVITAMBO       ZIMBABWE                       0                    NA                -0.0546100   -0.0658857   -0.0433343
12-15 months   EE             PAKISTAN                       1                    NA                 0.0085505   -0.0189210    0.0360221
12-15 months   EE             PAKISTAN                       0                    NA                -0.0013984   -0.0163434    0.0135466
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0591595   -0.0778640   -0.0404549
12-15 months   GMS-Nepal      NEPAL                          0                    NA                -0.0724040   -0.0869603   -0.0578477
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0439765   -0.0514050   -0.0365480
12-15 months   JiVitA-4       BANGLADESH                     0                    NA                -0.0471407   -0.0572871   -0.0369944
12-15 months   MAL-ED         BANGLADESH                     1                    NA                -0.0654725   -0.0863020   -0.0446431
12-15 months   MAL-ED         BANGLADESH                     0                    NA                -0.0416364   -0.0652037   -0.0180690
12-15 months   MAL-ED         BRAZIL                         1                    NA                 0.0024980   -0.0314199    0.0364158
12-15 months   MAL-ED         BRAZIL                         0                    NA                -0.0075378   -0.0378656    0.0227900
12-15 months   MAL-ED         INDIA                          1                    NA                -0.0561486   -0.0757130   -0.0365842
12-15 months   MAL-ED         INDIA                          0                    NA                -0.0622392   -0.0867819   -0.0376965
12-15 months   MAL-ED         NEPAL                          1                    NA                -0.0595067   -0.0814147   -0.0375986
12-15 months   MAL-ED         NEPAL                          0                    NA                -0.0593350   -0.0803703   -0.0382997
12-15 months   MAL-ED         PERU                           1                    NA                -0.0764171   -0.0958360   -0.0569983
12-15 months   MAL-ED         PERU                           0                    NA                -0.0316856   -0.0703231    0.0069519
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0499618   -0.0782085   -0.0217151
12-15 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0710718   -0.1132769   -0.0288667
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0699644   -0.0973780   -0.0425507
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0657438   -0.1307356   -0.0007520
12-15 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0380370   -0.0482608   -0.0278132
12-15 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.0379090   -0.0627520   -0.0130660
12-15 months   SAS-CompFeed   INDIA                          1                    NA                -0.1088386   -0.1994868   -0.0181905
12-15 months   SAS-CompFeed   INDIA                          0                    NA                -0.0847354   -0.0956450   -0.0738257
12-15 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0717593   -0.0879740   -0.0555446
12-15 months   ZVITAMBO       ZIMBABWE                       0                    NA                -0.0571880   -0.0739037   -0.0404723
15-18 months   EE             PAKISTAN                       1                    NA                -0.0318736   -0.0534211   -0.0103262
15-18 months   EE             PAKISTAN                       0                    NA                -0.0203369   -0.0340930   -0.0065808
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0612255   -0.0820688   -0.0403822
15-18 months   GMS-Nepal      NEPAL                          0                    NA                -0.0749142   -0.0921590   -0.0576693
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0348399   -0.0427245   -0.0269554
15-18 months   JiVitA-4       BANGLADESH                     0                    NA                -0.0298819   -0.0388637   -0.0209001
15-18 months   MAL-ED         BANGLADESH                     1                    NA                -0.0467444   -0.0657893   -0.0276995
15-18 months   MAL-ED         BANGLADESH                     0                    NA                -0.0428591   -0.0643007   -0.0214175
15-18 months   MAL-ED         BRAZIL                         1                    NA                -0.0124495   -0.0437824    0.0188834
15-18 months   MAL-ED         BRAZIL                         0                    NA                -0.0263979   -0.0550199    0.0022241
15-18 months   MAL-ED         INDIA                          1                    NA                -0.0312993   -0.0477399   -0.0148587
15-18 months   MAL-ED         INDIA                          0                    NA                -0.0426940   -0.0637734   -0.0216147
15-18 months   MAL-ED         NEPAL                          1                    NA                -0.0421721   -0.0662687   -0.0180754
15-18 months   MAL-ED         NEPAL                          0                    NA                -0.0618773   -0.0811274   -0.0426271
15-18 months   MAL-ED         PERU                           1                    NA                -0.0372369   -0.0559085   -0.0185654
15-18 months   MAL-ED         PERU                           0                    NA                -0.0378681   -0.0657298   -0.0100064
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0321684   -0.0576395   -0.0066972
15-18 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0200916   -0.0494433    0.0092601
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0886464   -0.1127903   -0.0645025
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1115747   -0.1685492   -0.0546003
15-18 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0187235   -0.0278420   -0.0096050
15-18 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.0061247   -0.0272391    0.0149897
15-18 months   SAS-CompFeed   INDIA                          1                    NA                 0.0233853   -0.0209559    0.0677264
15-18 months   SAS-CompFeed   INDIA                          0                    NA                -0.0128987   -0.0244597   -0.0013377
15-18 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0702819   -0.0865965   -0.0539674
15-18 months   ZVITAMBO       ZIMBABWE                       0                    NA                -0.0555228   -0.0739213   -0.0371243
18-21 months   EE             PAKISTAN                       1                    NA                -0.0305790   -0.0544067   -0.0067514
18-21 months   EE             PAKISTAN                       0                    NA                -0.0359191   -0.0492034   -0.0226348
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0004772   -0.0260243    0.0269788
18-21 months   GMS-Nepal      NEPAL                          0                    NA                 0.0227750    0.0083022    0.0372477
18-21 months   MAL-ED         BANGLADESH                     1                    NA                -0.0110921   -0.0273215    0.0051373
18-21 months   MAL-ED         BANGLADESH                     0                    NA                -0.0183864   -0.0350878   -0.0016849
18-21 months   MAL-ED         BRAZIL                         1                    NA                 0.0001385   -0.0423662    0.0426432
18-21 months   MAL-ED         BRAZIL                         0                    NA                -0.0467188   -0.0764210   -0.0170166
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0043052   -0.0097016    0.0183120
18-21 months   MAL-ED         INDIA                          0                    NA                 0.0063772   -0.0132401    0.0259946
18-21 months   MAL-ED         NEPAL                          1                    NA                -0.0339493   -0.0547133   -0.0131854
18-21 months   MAL-ED         NEPAL                          0                    NA                -0.0224406   -0.0392025   -0.0056787
18-21 months   MAL-ED         PERU                           1                    NA                -0.0027438   -0.0187743    0.0132866
18-21 months   MAL-ED         PERU                           0                    NA                -0.0147989   -0.0514195    0.0218217
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0443296   -0.0669124   -0.0217469
18-21 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0233159   -0.0597417    0.0131099
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0216771   -0.0462573    0.0029031
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0521578   -0.1166350    0.0123193
18-21 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0295837   -0.0383820   -0.0207854
18-21 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.0160926   -0.0357113    0.0035261
18-21 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0612597   -0.0791038   -0.0434156
18-21 months   ZVITAMBO       ZIMBABWE                       0                    NA                -0.0866226   -0.1049377   -0.0683076
21-24 months   EE             PAKISTAN                       1                    NA                -0.0031030   -0.0281101    0.0219041
21-24 months   EE             PAKISTAN                       0                    NA                -0.0061939   -0.0208126    0.0084247
21-24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0668253    0.0358654    0.0977853
21-24 months   GMS-Nepal      NEPAL                          0                    NA                 0.0427415    0.0237704    0.0617126
21-24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0230426    0.0068212    0.0392640
21-24 months   MAL-ED         BANGLADESH                     0                    NA                 0.0319826    0.0141110    0.0498542
21-24 months   MAL-ED         BRAZIL                         1                    NA                -0.0016166   -0.0270760    0.0238427
21-24 months   MAL-ED         BRAZIL                         0                    NA                 0.0315637    0.0114247    0.0517026
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0284344    0.0150889    0.0417800
21-24 months   MAL-ED         INDIA                          0                    NA                 0.0342407    0.0154870    0.0529944
21-24 months   MAL-ED         NEPAL                          1                    NA                 0.0295869    0.0033532    0.0558206
21-24 months   MAL-ED         NEPAL                          0                    NA                -0.0106207   -0.0265771    0.0053358
21-24 months   MAL-ED         PERU                           1                    NA                 0.0535566    0.0350344    0.0720787
21-24 months   MAL-ED         PERU                           0                    NA                 0.0710758    0.0435387    0.0986129
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0474682    0.0262749    0.0686615
21-24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.0403347    0.0117878    0.0688816
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0076086   -0.0164048    0.0316220
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0286616   -0.0223974    0.0797206
21-24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0587155    0.0496182    0.0678128
21-24 months   NIH-Crypto     BANGLADESH                     0                    NA                 0.0692491    0.0499855    0.0885128
21-24 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0060488   -0.0103364    0.0224340
21-24 months   ZVITAMBO       ZIMBABWE                       0                    NA                 0.0271814    0.0059940    0.0483688


### Parameter: E(Y)


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       NA                   NA                -0.2168533   -0.2604590   -0.1732477
0-3 months     GMS-Nepal      NEPAL                          NA                   NA                -0.0317949   -0.0581322   -0.0054576
0-3 months     JiVitA-3       BANGLADESH                     NA                   NA                 0.0740557    0.0691191    0.0789922
0-3 months     JiVitA-4       BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
0-3 months     MAL-ED         BANGLADESH                     NA                   NA                -0.1205719   -0.1542907   -0.0868531
0-3 months     MAL-ED         BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED         INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED         NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED         PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1798454   -0.2290406   -0.1306502
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Crypto     BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     SAS-CompFeed   INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO       ZIMBABWE                       NA                   NA                -0.1412023   -0.1521143   -0.1302904
3-6 months     EE             PAKISTAN                       NA                   NA                 0.0671456    0.0392459    0.0950453
3-6 months     GMS-Nepal      NEPAL                          NA                   NA                -0.1591815   -0.1781032   -0.1402599
3-6 months     JiVitA-3       BANGLADESH                     NA                   NA                -0.0034426   -0.0083086    0.0014234
3-6 months     JiVitA-4       BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
3-6 months     MAL-ED         BANGLADESH                     NA                   NA                -0.0230615   -0.0467241    0.0006011
3-6 months     MAL-ED         BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED         INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED         NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED         PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0063939   -0.0443613    0.0315736
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Crypto     BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     SAS-CompFeed   INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ZVITAMBO       ZIMBABWE                       NA                   NA                 0.0004960   -0.0092614    0.0102534
6-9 months     EE             PAKISTAN                       NA                   NA                -0.0857021   -0.1067530   -0.0646512
6-9 months     GMS-Nepal      NEPAL                          NA                   NA                -0.0457287   -0.0644131   -0.0270443
6-9 months     JiVitA-4       BANGLADESH                     NA                   NA                -0.0289482   -0.0379437   -0.0199527
6-9 months     MAL-ED         BANGLADESH                     NA                   NA                -0.0690631   -0.0862955   -0.0518308
6-9 months     MAL-ED         BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED         INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED         NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED         PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0196358   -0.0481734    0.0089019
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Crypto     BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     SAS-CompFeed   INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0319359   -0.0407462   -0.0231255
9-12 months    EE             PAKISTAN                       NA                   NA                -0.1037570   -0.1187285   -0.0887854
9-12 months    GMS-Nepal      NEPAL                          NA                   NA                -0.0811779   -0.0957386   -0.0666171
9-12 months    JiVitA-4       BANGLADESH                     NA                   NA                -0.0521209   -0.0596089   -0.0446330
9-12 months    MAL-ED         BANGLADESH                     NA                   NA                -0.0874604   -0.1036871   -0.0712337
9-12 months    MAL-ED         BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED         INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED         NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED         PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0844236   -0.1116292   -0.0572179
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Crypto     BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    SAS-CompFeed   INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0595243   -0.0673765   -0.0516722
12-15 months   EE             PAKISTAN                       NA                   NA                -0.0005298   -0.0137044    0.0126448
12-15 months   GMS-Nepal      NEPAL                          NA                   NA                -0.0680116   -0.0796374   -0.0563858
12-15 months   JiVitA-4       BANGLADESH                     NA                   NA                -0.0450644   -0.0511488   -0.0389801
12-15 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0558690   -0.0714769   -0.0402611
12-15 months   MAL-ED         BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED         INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED         NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED         PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0588925   -0.0820323   -0.0357527
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Crypto     BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   SAS-CompFeed   INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0637488   -0.0752400   -0.0522576
15-18 months   EE             PAKISTAN                       NA                   NA                -0.0237393   -0.0352187   -0.0122599
15-18 months   GMS-Nepal      NEPAL                          NA                   NA                -0.0698764   -0.0833902   -0.0563627
15-18 months   JiVitA-4       BANGLADESH                     NA                   NA                -0.0328742   -0.0389268   -0.0268217
15-18 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0456666   -0.0592050   -0.0321282
15-18 months   MAL-ED         BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED         INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED         NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED         PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0266033   -0.0457128   -0.0074939
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Crypto     BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   SAS-CompFeed   INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0625385   -0.0743837   -0.0506933
18-21 months   EE             PAKISTAN                       NA                   NA                -0.0346625   -0.0461403   -0.0231846
18-21 months   GMS-Nepal      NEPAL                          NA                   NA                 0.0164715    0.0038362    0.0291068
18-21 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0150418   -0.0266855   -0.0033981
18-21 months   MAL-ED         BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED         INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED         NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED         PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0320929   -0.0514760   -0.0127099
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Crypto     BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0727232   -0.0854271   -0.0600192
21-24 months   EE             PAKISTAN                       NA                   NA                -0.0054503   -0.0181653    0.0072646
21-24 months   GMS-Nepal      NEPAL                          NA                   NA                 0.0496459    0.0332837    0.0660081
21-24 months   MAL-ED         BANGLADESH                     NA                   NA                 0.0264403    0.0143283    0.0385522
21-24 months   MAL-ED         BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED         INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED         NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED         PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                 0.0436475    0.0267011    0.0605939
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Crypto     BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                 0.0164988    0.0033358    0.0296618


### Parameter: ATE


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     EE             PAKISTAN                       0                    1                  0.0508782   -0.0432057    0.1449622
0-3 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL                          0                    1                 -0.0244094   -0.0778091    0.0289903
0-3 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH                     0                    1                  0.1924396    0.1808963    0.2039829
0-3 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH                     0                    1                  0.0055951   -0.0254064    0.0365966
0-3 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH                     0                    1                  0.0347064   -0.0358084    0.1052212
0-3 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL                         0                    1                  0.0050648   -0.1094349    0.1195646
0-3 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA                          0                    1                  0.0223843   -0.0768295    0.1215981
0-3 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL                          0                    1                  0.0820650   -0.0064117    0.1705417
0-3 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU                           0                    1                  0.0684561   -0.0189332    0.1558454
0-3 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0053934   -0.0926149    0.1034018
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0359550   -0.1575214    0.0856115
0-3 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto     BANGLADESH                     0                    1                 -0.0301670   -0.0823034    0.0219694
0-3 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA                          0                    1                  0.0423610   -0.0283955    0.1131175
0-3 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO       ZIMBABWE                       0                    1                 -0.0523614   -0.0736879   -0.0310349
3-6 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     EE             PAKISTAN                       0                    1                  0.0377686   -0.0430609    0.1185981
3-6 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL                          0                    1                 -0.0121934   -0.0555366    0.0311499
3-6 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH                     0                    1                  0.0455981    0.0331144    0.0580819
3-6 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH                     0                    1                 -0.0055900   -0.0343971    0.0232172
3-6 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH                     0                    1                 -0.0117969   -0.0616229    0.0380290
3-6 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL                         0                    1                 -0.0538627   -0.1270701    0.0193448
3-6 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA                          0                    1                 -0.0150872   -0.0769869    0.0468125
3-6 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL                          0                    1                  0.0371525   -0.0143359    0.0886409
3-6 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU                           0                    1                  0.0532041   -0.0121783    0.1185865
3-6 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0559784   -0.0202798    0.1322367
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0539050   -0.0318092    0.1396193
3-6 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto     BANGLADESH                     0                    1                  0.0895520    0.0356030    0.1435009
3-6 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA                          0                    1                  0.0397727   -0.0200499    0.0995953
3-6 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO       ZIMBABWE                       0                    1                  0.0063340   -0.0133891    0.0260570
6-9 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN                       0                    1                  0.0078765   -0.0450857    0.0608386
6-9 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL                          0                    1                 -0.0127635   -0.0543488    0.0288218
6-9 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH                     0                    1                  0.0021654   -0.0155777    0.0199085
6-9 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH                     0                    1                  0.0011965   -0.0322737    0.0346668
6-9 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL                         0                    1                 -0.0172373   -0.0878644    0.0533898
6-9 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA                          0                    1                  0.0525114    0.0056835    0.0993393
6-9 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL                          0                    1                  0.0105040   -0.0278659    0.0488739
6-9 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU                           0                    1                  0.0085708   -0.0503190    0.0674605
6-9 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0413842   -0.0187817    0.1015501
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0152662   -0.1039307    0.0733983
6-9 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto     BANGLADESH                     0                    1                  0.0091134   -0.0315948    0.0498216
6-9 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA                          0                    1                  0.0105642   -0.0539638    0.0750922
6-9 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO       ZIMBABWE                       0                    1                 -0.0064090   -0.0239871    0.0111690
9-12 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN                       0                    1                 -0.0008682   -0.0370445    0.0353081
9-12 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL                          0                    1                  0.0191205   -0.0122530    0.0504941
9-12 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH                     0                    1                  0.0102322   -0.0050013    0.0254656
9-12 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH                     0                    1                  0.0296166   -0.0033780    0.0626111
9-12 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL                         0                    1                 -0.0107931   -0.0704247    0.0488386
9-12 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA                          0                    1                 -0.0002654   -0.0324618    0.0319311
9-12 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL                          0                    1                 -0.0109551   -0.0451773    0.0232671
9-12 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU                           0                    1                 -0.0094111   -0.0586180    0.0397958
9-12 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.0418812   -0.0998630    0.0161005
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0075900   -0.0777876    0.0929676
9-12 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto     BANGLADESH                     0                    1                 -0.0155854   -0.0477082    0.0165374
9-12 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA                          0                    1                 -0.0204654   -0.0688462    0.0279155
9-12 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO       ZIMBABWE                       0                    1                  0.0076155   -0.0080747    0.0233057
12-15 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN                       0                    1                 -0.0099489   -0.0411454    0.0212476
12-15 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL                          0                    1                 -0.0132445   -0.0369971    0.0105081
12-15 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH                     0                    1                 -0.0031642   -0.0155020    0.0091735
12-15 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH                     0                    1                  0.0238362   -0.0076953    0.0553677
12-15 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL                         0                    1                 -0.0100358   -0.0553817    0.0353101
12-15 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA                          0                    1                 -0.0060906   -0.0375351    0.0253539
12-15 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL                          0                    1                  0.0001717   -0.0305086    0.0308520
12-15 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU                           0                    1                  0.0447315    0.0017716    0.0876914
12-15 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0211100   -0.0724597    0.0302397
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0042206   -0.0664256    0.0748668
12-15 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0001280   -0.0266079    0.0268639
12-15 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA                          0                    1                  0.0241032   -0.0613076    0.1095141
12-15 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0145713   -0.0088309    0.0379735
15-18 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN                       0                    1                  0.0115367   -0.0141449    0.0372183
15-18 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL                          0                    1                 -0.0136886   -0.0409166    0.0135393
15-18 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH                     0                    1                  0.0049581   -0.0067684    0.0166845
15-18 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH                     0                    1                  0.0038853   -0.0255072    0.0332779
15-18 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL                         0                    1                 -0.0139484   -0.0564195    0.0285226
15-18 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA                          0                    1                 -0.0113947   -0.0384357    0.0156463
15-18 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL                          0                    1                 -0.0197052   -0.0506115    0.0112011
15-18 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU                           0                    1                 -0.0006312   -0.0342118    0.0329495
15-18 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0120768   -0.0269192    0.0510728
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0229283   -0.0848874    0.0390307
15-18 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0125988   -0.0104793    0.0356770
15-18 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA                          0                    1                 -0.0362839   -0.0839261    0.0113582
15-18 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0147592   -0.0100521    0.0395704
18-21 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN                       0                    1                 -0.0053401   -0.0330493    0.0223692
18-21 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL                          0                    1                  0.0222978   -0.0084912    0.0530867
18-21 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH                     0                    1                 -0.0072943   -0.0306767    0.0160882
18-21 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL                         0                    1                 -0.0468573   -0.0998923    0.0061778
18-21 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA                          0                    1                  0.0020721   -0.0220315    0.0261756
18-21 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL                          0                    1                  0.0115088   -0.0152292    0.0382467
18-21 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU                           0                    1                 -0.0120551   -0.0521154    0.0280052
18-21 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0210138   -0.0221758    0.0642033
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0304807   -0.0996519    0.0386904
18-21 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0134911   -0.0080184    0.0350007
18-21 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0253629   -0.0510216    0.0002958
21-24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   EE             PAKISTAN                       0                    1                 -0.0030909   -0.0320328    0.0258509
21-24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL                          0                    1                 -0.0240839   -0.0604368    0.0122691
21-24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH                     0                    1                  0.0089400   -0.0153556    0.0332356
21-24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL                         0                    1                  0.0331803    0.0004143    0.0659463
21-24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA                          0                    1                  0.0058063   -0.0173586    0.0289711
21-24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL                          0                    1                 -0.0402076   -0.0708915   -0.0095236
21-24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU                           0                    1                  0.0175192   -0.0158223    0.0508607
21-24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0071335   -0.0427422    0.0284752
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0210530   -0.0356014    0.0777075
21-24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0105336   -0.0108678    0.0319350
21-24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0211326   -0.0059605    0.0482257


### Parameter: PAR


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    NA                 0.0414767   -0.0347802    0.1177337
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0171304   -0.0544888    0.0202279
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                 0.1919031    0.1806302    0.2031761
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                 0.0015399   -0.0072148    0.0102946
0-3 months     MAL-ED         BANGLADESH                     1                    NA                 0.0135945   -0.0135679    0.0407568
0-3 months     MAL-ED         BRAZIL                         1                    NA                 0.0041040   -0.0590174    0.0672254
0-3 months     MAL-ED         INDIA                          1                    NA                 0.0082807   -0.0300542    0.0466157
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.0423892   -0.0078473    0.0926257
0-3 months     MAL-ED         PERU                           1                    NA                 0.0152861   -0.0062544    0.0368265
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0057414   -0.0288945    0.0403772
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0094256   -0.0260914    0.0072403
0-3 months     NIH-Crypto     BANGLADESH                     1                    NA                -0.0031279   -0.0102330    0.0039771
0-3 months     SAS-CompFeed   INDIA                          1                    NA                 0.0422761   -0.0235957    0.1081479
0-3 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0251414   -0.0356079   -0.0146750
3-6 months     EE             PAKISTAN                       1                    NA                 0.0318136   -0.0359910    0.0996182
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.0089948   -0.0393928    0.0214032
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                 0.0454854    0.0332901    0.0576807
3-6 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0024937   -0.0107168    0.0057294
3-6 months     MAL-ED         BANGLADESH                     1                    NA                -0.0075955   -0.0270601    0.0118690
3-6 months     MAL-ED         BRAZIL                         1                    NA                -0.0307150   -0.0707981    0.0093681
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0081297   -0.0331166    0.0168571
3-6 months     MAL-ED         NEPAL                          1                    NA                 0.0219764   -0.0087575    0.0527102
3-6 months     MAL-ED         PERU                           1                    NA                 0.0107827   -0.0060818    0.0276473
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0169369   -0.0120593    0.0459330
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0085793   -0.0063658    0.0235244
3-6 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0115742    0.0043106    0.0188379
3-6 months     SAS-CompFeed   INDIA                          1                    NA                 0.0362954   -0.0183284    0.0909193
3-6 months     ZVITAMBO       ZIMBABWE                       1                    NA                 0.0024689   -0.0067553    0.0116932
6-9 months     EE             PAKISTAN                       1                    NA                 0.0064059   -0.0374264    0.0502381
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0097547   -0.0391616    0.0196522
6-9 months     JiVitA-4       BANGLADESH                     1                    NA                 0.0009866   -0.0051629    0.0071360
6-9 months     MAL-ED         BANGLADESH                     1                    NA                 0.0012360   -0.0119247    0.0143966
6-9 months     MAL-ED         BRAZIL                         1                    NA                -0.0103693   -0.0489255    0.0281869
6-9 months     MAL-ED         INDIA                          1                    NA                 0.0236347    0.0045559    0.0427136
6-9 months     MAL-ED         NEPAL                          1                    NA                 0.0066174   -0.0158710    0.0291059
6-9 months     MAL-ED         PERU                           1                    NA                 0.0019113   -0.0136171    0.0174398
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0157490   -0.0080372    0.0395352
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0015430   -0.0156465    0.0125604
6-9 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0012344   -0.0041964    0.0066652
6-9 months     SAS-CompFeed   INDIA                          1                    NA                 0.0093004   -0.0508256    0.0694265
6-9 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0023327   -0.0106100    0.0059446
9-12 months    EE             PAKISTAN                       1                    NA                -0.0008807   -0.0309329    0.0291715
9-12 months    GMS-Nepal      NEPAL                          1                    NA                 0.0135261   -0.0084777    0.0355299
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0035795   -0.0018952    0.0090543
9-12 months    MAL-ED         BANGLADESH                     1                    NA                 0.0118691   -0.0010140    0.0247522
9-12 months    MAL-ED         BRAZIL                         1                    NA                -0.0052769   -0.0378387    0.0272850
9-12 months    MAL-ED         INDIA                          1                    NA                -0.0016343   -0.0150068    0.0117383
9-12 months    MAL-ED         NEPAL                          1                    NA                -0.0061020   -0.0262383    0.0140343
9-12 months    MAL-ED         PERU                           1                    NA                -0.0022798   -0.0149716    0.0104121
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0170268   -0.0404444    0.0063909
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0012425   -0.0148305    0.0123455
9-12 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0020041   -0.0063874    0.0023792
9-12 months    SAS-CompFeed   INDIA                          1                    NA                -0.0209516   -0.0651538    0.0232505
9-12 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0027011   -0.0046078    0.0100101
12-15 months   EE             PAKISTAN                       1                    NA                -0.0090803   -0.0344672    0.0163066
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0088521   -0.0256697    0.0079655
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0010879   -0.0055300    0.0033541
12-15 months   MAL-ED         BANGLADESH                     1                    NA                 0.0096035   -0.0030513    0.0222583
12-15 months   MAL-ED         BRAZIL                         1                    NA                -0.0055410   -0.0297863    0.0187043
12-15 months   MAL-ED         INDIA                          1                    NA                -0.0003738   -0.0130701    0.0123226
12-15 months   MAL-ED         NEPAL                          1                    NA                 0.0020517   -0.0160765    0.0201799
12-15 months   MAL-ED         PERU                           1                    NA                 0.0110639   -0.0007662    0.0228940
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0089307   -0.0290194    0.0111580
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0006080   -0.0103199    0.0115359
12-15 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0002943   -0.0041009    0.0035122
12-15 months   SAS-CompFeed   INDIA                          1                    NA                 0.0240996   -0.0565560    0.1047552
12-15 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0080104   -0.0034798    0.0195007
15-18 months   EE             PAKISTAN                       1                    NA                 0.0081343   -0.0129467    0.0292154
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0086509   -0.0276835    0.0103817
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0019657   -0.0021810    0.0061124
15-18 months   MAL-ED         BANGLADESH                     1                    NA                 0.0010778   -0.0104217    0.0125773
15-18 months   MAL-ED         BRAZIL                         1                    NA                -0.0078927   -0.0297611    0.0139756
15-18 months   MAL-ED         INDIA                          1                    NA                -0.0067042   -0.0175648    0.0041565
15-18 months   MAL-ED         NEPAL                          1                    NA                -0.0127625   -0.0307867    0.0052617
15-18 months   MAL-ED         PERU                           1                    NA                 0.0011804   -0.0082803    0.0106412
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0055650   -0.0100182    0.0211483
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0030122   -0.0068564    0.0128808
15-18 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0018162   -0.0014808    0.0051132
15-18 months   SAS-CompFeed   INDIA                          1                    NA                -0.0351008   -0.0794868    0.0092851
15-18 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0077434   -0.0038149    0.0193017
18-21 months   EE             PAKISTAN                       1                    NA                -0.0040834   -0.0260898    0.0179229
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0159943   -0.0054951    0.0374837
18-21 months   MAL-ED         BANGLADESH                     1                    NA                -0.0039497   -0.0131428    0.0052434
18-21 months   MAL-ED         BRAZIL                         1                    NA                -0.0204975   -0.0485259    0.0075309
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0014689   -0.0083322    0.0112699
18-21 months   MAL-ED         NEPAL                          1                    NA                 0.0058441   -0.0098046    0.0214928
18-21 months   MAL-ED         PERU                           1                    NA                -0.0053703   -0.0162259    0.0054854
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0122367   -0.0046449    0.0291182
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0065262   -0.0170275    0.0039752
18-21 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0016150   -0.0014138    0.0046438
18-21 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0114635   -0.0236774    0.0007505
21-24 months   EE             PAKISTAN                       1                    NA                -0.0023473   -0.0255785    0.0208838
21-24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0171795   -0.0420376    0.0076786
21-24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0033976   -0.0063197    0.0131150
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0181036    0.0004120    0.0357953
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0013542   -0.0081340    0.0108424
21-24 months   MAL-ED         NEPAL                          1                    NA                -0.0241321   -0.0435114   -0.0047528
21-24 months   MAL-ED         PERU                           1                    NA                 0.0034178   -0.0052423    0.0120779
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0038207   -0.0177143    0.0100729
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0012312   -0.0079695    0.0104318
21-24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0000466   -0.0028573    0.0029505
21-24 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0104500   -0.0023807    0.0232807
