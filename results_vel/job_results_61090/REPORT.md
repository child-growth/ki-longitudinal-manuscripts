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
![](/tmp/4fc4ec72-b8fd-48f5-a584-ff073dfe6ec0/08299aac-19f3-4820-9e30-8c2ce05d928e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4fc4ec72-b8fd-48f5-a584-ff073dfe6ec0/08299aac-19f3-4820-9e30-8c2ce05d928e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4fc4ec72-b8fd-48f5-a584-ff073dfe6ec0/08299aac-19f3-4820-9e30-8c2ce05d928e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     EE             PAKISTAN                       1                    NA                3.0348599   2.8709610   3.1987587
0-3 months     EE             PAKISTAN                       0                    NA                3.0897192   2.9930778   3.1863606
0-3 months     GMS-Nepal      NEPAL                          1                    NA                3.6496559   3.5642910   3.7350207
0-3 months     GMS-Nepal      NEPAL                          0                    NA                3.5809215   3.5144011   3.6474420
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                3.2071355   3.1868410   3.2274301
0-3 months     JiVitA-3       BANGLADESH                     0                    NA                3.7247291   3.7141789   3.7352793
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                3.6430956   3.6053420   3.6808491
0-3 months     JiVitA-4       BANGLADESH                     0                    NA                3.6261656   3.5683041   3.6840271
0-3 months     MAL-ED         BANGLADESH                     1                    NA                3.3224028   3.2418445   3.4029612
0-3 months     MAL-ED         BANGLADESH                     0                    NA                3.3695752   3.2578082   3.4813422
0-3 months     MAL-ED         BRAZIL                         1                    NA                3.7865213   3.6199239   3.9531188
0-3 months     MAL-ED         BRAZIL                         0                    NA                3.8061391   3.6565845   3.9556937
0-3 months     MAL-ED         INDIA                          1                    NA                3.3578617   3.2222887   3.4934346
0-3 months     MAL-ED         INDIA                          0                    NA                3.3592366   3.2137536   3.5047196
0-3 months     MAL-ED         NEPAL                          1                    NA                3.5356444   3.3978763   3.6734126
0-3 months     MAL-ED         NEPAL                          0                    NA                3.6973062   3.5755380   3.8190745
0-3 months     MAL-ED         PERU                           1                    NA                3.0257224   2.9505482   3.1008966
0-3 months     MAL-ED         PERU                           0                    NA                3.1285353   2.9862347   3.2708359
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                3.1783109   3.0515071   3.3051147
0-3 months     MAL-ED         SOUTH AFRICA                   0                    NA                3.1834385   3.0303257   3.3365514
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2879748   3.2068863   3.3690633
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1770029   2.9381350   3.4158708
0-3 months     NIH-Crypto     BANGLADESH                     1                    NA                3.1340845   3.0952126   3.1729565
0-3 months     NIH-Crypto     BANGLADESH                     0                    NA                3.0788773   2.9757072   3.1820475
0-3 months     SAS-CompFeed   INDIA                          1                    NA                3.2791310   3.1276539   3.4306081
0-3 months     SAS-CompFeed   INDIA                          0                    NA                3.3498403   3.2984631   3.4012175
0-3 months     ZVITAMBO       ZIMBABWE                       1                    NA                3.3871382   3.3573838   3.4168926
0-3 months     ZVITAMBO       ZIMBABWE                       0                    NA                3.2834437   3.2513423   3.3155451
3-6 months     EE             PAKISTAN                       1                    NA                2.0436128   1.8908353   2.1963903
3-6 months     EE             PAKISTAN                       0                    NA                2.1086919   2.0437730   2.1736107
3-6 months     GMS-Nepal      NEPAL                          1                    NA                1.7411198   1.6609174   1.8213222
3-6 months     GMS-Nepal      NEPAL                          0                    NA                1.7038722   1.6576639   1.7500805
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                1.7549419   1.7326708   1.7772129
3-6 months     JiVitA-3       BANGLADESH                     0                    NA                1.9205532   1.9098484   1.9312580
3-6 months     JiVitA-4       BANGLADESH                     1                    NA                1.9021247   1.8656289   1.9386204
3-6 months     JiVitA-4       BANGLADESH                     0                    NA                1.8893752   1.8386129   1.9401375
3-6 months     MAL-ED         BANGLADESH                     1                    NA                1.9341876   1.8654332   2.0029421
3-6 months     MAL-ED         BANGLADESH                     0                    NA                1.9122448   1.8341430   1.9903466
3-6 months     MAL-ED         BRAZIL                         1                    NA                2.1988791   2.0836492   2.3141090
3-6 months     MAL-ED         BRAZIL                         0                    NA                2.0937795   1.9844690   2.2030900
3-6 months     MAL-ED         INDIA                          1                    NA                1.9029280   1.8252710   1.9805850
3-6 months     MAL-ED         INDIA                          0                    NA                1.8554627   1.7386234   1.9723020
3-6 months     MAL-ED         NEPAL                          1                    NA                1.9287029   1.8470204   2.0103853
3-6 months     MAL-ED         NEPAL                          0                    NA                1.9912819   1.9151176   2.0674462
3-6 months     MAL-ED         PERU                           1                    NA                1.9929069   1.9138589   2.0719549
3-6 months     MAL-ED         PERU                           0                    NA                2.1057018   1.9895362   2.2218675
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                1.9206630   1.8149707   2.0263554
3-6 months     MAL-ED         SOUTH AFRICA                   0                    NA                2.0313382   1.9055762   2.1571001
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8128768   1.7387660   1.8869877
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.9226018   1.7509766   2.0942269
3-6 months     NIH-Crypto     BANGLADESH                     1                    NA                1.9771529   1.9389927   2.0153131
3-6 months     NIH-Crypto     BANGLADESH                     0                    NA                2.1463495   2.0376933   2.2550056
3-6 months     SAS-CompFeed   INDIA                          1                    NA                1.8194627   1.6728342   1.9660911
3-6 months     SAS-CompFeed   INDIA                          0                    NA                1.9459101   1.9034931   1.9883272
3-6 months     ZVITAMBO       ZIMBABWE                       1                    NA                1.9750635   1.9466704   2.0034566
3-6 months     ZVITAMBO       ZIMBABWE                       0                    NA                1.9811783   1.9498386   2.0125181
6-9 months     EE             PAKISTAN                       1                    NA                1.1684107   1.0630912   1.2737302
6-9 months     EE             PAKISTAN                       0                    NA                1.1782287   1.1240129   1.2324446
6-9 months     GMS-Nepal      NEPAL                          1                    NA                1.3464846   1.2658828   1.4270864
6-9 months     GMS-Nepal      NEPAL                          0                    NA                1.3025803   1.2520911   1.3530694
6-9 months     JiVitA-4       BANGLADESH                     1                    NA                1.3244784   1.2986386   1.3503183
6-9 months     JiVitA-4       BANGLADESH                     0                    NA                1.3229496   1.2903890   1.3555101
6-9 months     MAL-ED         BANGLADESH                     1                    NA                1.2529867   1.1970189   1.3089545
6-9 months     MAL-ED         BANGLADESH                     0                    NA                1.2462360   1.1934987   1.2989733
6-9 months     MAL-ED         BRAZIL                         1                    NA                1.4812316   1.3726526   1.5898105
6-9 months     MAL-ED         BRAZIL                         0                    NA                1.4568700   1.3384933   1.5752467
6-9 months     MAL-ED         INDIA                          1                    NA                1.1927927   1.1255752   1.2600101
6-9 months     MAL-ED         INDIA                          0                    NA                1.3238205   1.2411010   1.4065399
6-9 months     MAL-ED         NEPAL                          1                    NA                1.3445371   1.2809570   1.4081173
6-9 months     MAL-ED         NEPAL                          0                    NA                1.3663791   1.3058683   1.4268898
6-9 months     MAL-ED         PERU                           1                    NA                1.3212193   1.2578039   1.3846347
6-9 months     MAL-ED         PERU                           0                    NA                1.3121303   1.2003527   1.4239080
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                1.3354911   1.2541836   1.4167985
6-9 months     MAL-ED         SOUTH AFRICA                   0                    NA                1.4260757   1.3131861   1.5389652
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1847496   1.0987628   1.2707363
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2030666   1.0201665   1.3859668
6-9 months     NIH-Crypto     BANGLADESH                     1                    NA                1.3231216   1.2917984   1.3544447
6-9 months     NIH-Crypto     BANGLADESH                     0                    NA                1.3169404   1.2321110   1.4017697
6-9 months     SAS-CompFeed   INDIA                          1                    NA                1.2098710   1.0723292   1.3474128
6-9 months     SAS-CompFeed   INDIA                          0                    NA                1.2194452   1.1936994   1.2451911
6-9 months     ZVITAMBO       ZIMBABWE                       1                    NA                1.3497172   1.3226228   1.3768117
6-9 months     ZVITAMBO       ZIMBABWE                       0                    NA                1.3384852   1.3088117   1.3681586
9-12 months    EE             PAKISTAN                       1                    NA                0.9145200   0.8351963   0.9938437
9-12 months    EE             PAKISTAN                       0                    NA                0.9084638   0.8686609   0.9482666
9-12 months    GMS-Nepal      NEPAL                          1                    NA                0.9825429   0.9113272   1.0537587
9-12 months    GMS-Nepal      NEPAL                          0                    NA                1.0032557   0.9635142   1.0429972
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                1.0623642   1.0402352   1.0844932
9-12 months    JiVitA-4       BANGLADESH                     0                    NA                1.0876276   1.0579377   1.1173176
9-12 months    MAL-ED         BANGLADESH                     1                    NA                0.9610894   0.9111435   1.0110353
9-12 months    MAL-ED         BANGLADESH                     0                    NA                1.0341459   0.9720002   1.0962916
9-12 months    MAL-ED         BRAZIL                         1                    NA                1.3097324   1.2157516   1.4037133
9-12 months    MAL-ED         BRAZIL                         0                    NA                1.2844080   1.1726090   1.3962070
9-12 months    MAL-ED         INDIA                          1                    NA                0.9798859   0.9308620   1.0289098
9-12 months    MAL-ED         INDIA                          0                    NA                0.9813583   0.9205218   1.0421949
9-12 months    MAL-ED         NEPAL                          1                    NA                1.0930489   1.0323156   1.1537823
9-12 months    MAL-ED         NEPAL                          0                    NA                1.0817427   1.0268482   1.1366372
9-12 months    MAL-ED         PERU                           1                    NA                1.1035943   1.0444998   1.1626888
9-12 months    MAL-ED         PERU                           0                    NA                1.0997229   0.9961288   1.2033169
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                1.0475394   0.9714783   1.1236006
9-12 months    MAL-ED         SOUTH AFRICA                   0                    NA                0.9431887   0.8254699   1.0609076
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8179238   0.7283130   0.9075346
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7889737   0.6079855   0.9699619
9-12 months    NIH-Crypto     BANGLADESH                     1                    NA                1.1259135   1.0974594   1.1543677
9-12 months    NIH-Crypto     BANGLADESH                     0                    NA                1.1081329   1.0382712   1.1779946
9-12 months    SAS-CompFeed   INDIA                          1                    NA                1.0665544   0.9745732   1.1585356
9-12 months    SAS-CompFeed   INDIA                          0                    NA                1.0005993   0.9609786   1.0402200
9-12 months    ZVITAMBO       ZIMBABWE                       1                    NA                1.0765823   1.0502096   1.1029550
9-12 months    ZVITAMBO       ZIMBABWE                       0                    NA                1.0900876   1.0627157   1.1174595
12-15 months   EE             PAKISTAN                       1                    NA                1.0344958   0.9609243   1.1080674
12-15 months   EE             PAKISTAN                       0                    NA                1.0033687   0.9658673   1.0408700
12-15 months   GMS-Nepal      NEPAL                          1                    NA                0.9121526   0.8617408   0.9625644
12-15 months   GMS-Nepal      NEPAL                          0                    NA                0.8608478   0.8228191   0.8988764
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                0.9438527   0.9244153   0.9632901
12-15 months   JiVitA-4       BANGLADESH                     0                    NA                0.9368733   0.9111673   0.9625792
12-15 months   MAL-ED         BANGLADESH                     1                    NA                0.8893119   0.8359043   0.9427195
12-15 months   MAL-ED         BANGLADESH                     0                    NA                0.9508746   0.8869855   1.0147637
12-15 months   MAL-ED         BRAZIL                         1                    NA                1.1391315   1.0529860   1.2252771
12-15 months   MAL-ED         BRAZIL                         0                    NA                1.1323109   1.0523349   1.2122870
12-15 months   MAL-ED         INDIA                          1                    NA                0.9115292   0.8609006   0.9621578
12-15 months   MAL-ED         INDIA                          0                    NA                0.9040418   0.8408103   0.9672733
12-15 months   MAL-ED         NEPAL                          1                    NA                0.9358700   0.8754259   0.9963140
12-15 months   MAL-ED         NEPAL                          0                    NA                0.9487036   0.8954532   1.0019540
12-15 months   MAL-ED         PERU                           1                    NA                0.8670360   0.8162966   0.9177754
12-15 months   MAL-ED         PERU                           0                    NA                1.0064523   0.9082248   1.1046798
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.9515868   0.8804957   1.0226780
12-15 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.8820037   0.7796675   0.9843400
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8565859   0.7866870   0.9264847
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8494731   0.6778681   1.0210780
12-15 months   NIH-Crypto     BANGLADESH                     1                    NA                0.9712561   0.9445916   0.9979206
12-15 months   NIH-Crypto     BANGLADESH                     0                    NA                0.9710921   0.9083621   1.0338222
12-15 months   SAS-CompFeed   INDIA                          1                    NA                0.7738293   0.5495008   0.9981578
12-15 months   SAS-CompFeed   INDIA                          0                    NA                0.8335823   0.8022751   0.8648895
12-15 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.9009803   0.8596751   0.9422856
12-15 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.9300523   0.8873926   0.9727119
15-18 months   EE             PAKISTAN                       1                    NA                0.8193132   0.7605825   0.8780439
15-18 months   EE             PAKISTAN                       0                    NA                0.8528912   0.8135656   0.8922169
15-18 months   GMS-Nepal      NEPAL                          1                    NA                0.7854879   0.7284027   0.8425731
15-18 months   GMS-Nepal      NEPAL                          0                    NA                0.7372621   0.6896848   0.7848394
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                0.8556308   0.8343318   0.8769297
15-18 months   JiVitA-4       BANGLADESH                     0                    NA                0.8685388   0.8438900   0.8931876
15-18 months   MAL-ED         BANGLADESH                     1                    NA                0.8197234   0.7695368   0.8699100
15-18 months   MAL-ED         BANGLADESH                     0                    NA                0.8323790   0.7771939   0.8875641
15-18 months   MAL-ED         BRAZIL                         1                    NA                1.0175464   0.9279795   1.1071134
15-18 months   MAL-ED         BRAZIL                         0                    NA                0.9855276   0.9052245   1.0658307
15-18 months   MAL-ED         INDIA                          1                    NA                0.8592221   0.8117648   0.9066793
15-18 months   MAL-ED         INDIA                          0                    NA                0.8170259   0.7587748   0.8752769
15-18 months   MAL-ED         NEPAL                          1                    NA                0.8640504   0.7973885   0.9307123
15-18 months   MAL-ED         NEPAL                          0                    NA                0.8226504   0.7693166   0.8759843
15-18 months   MAL-ED         PERU                           1                    NA                0.8493019   0.7992378   0.8993660
15-18 months   MAL-ED         PERU                           0                    NA                0.8628964   0.7835939   0.9421989
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8885600   0.8189263   0.9581937
15-18 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.8967452   0.8133633   0.9801270
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6860260   0.6211938   0.7508581
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6992185   0.4825280   0.9159089
15-18 months   NIH-Crypto     BANGLADESH                     1                    NA                0.9123215   0.8872653   0.9373776
15-18 months   NIH-Crypto     BANGLADESH                     0                    NA                0.9348053   0.8785732   0.9910373
15-18 months   SAS-CompFeed   INDIA                          1                    NA                1.0409713   0.9159591   1.1659835
15-18 months   SAS-CompFeed   INDIA                          0                    NA                0.9020942   0.8727388   0.9314495
15-18 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.7839638   0.7391495   0.8287780
15-18 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.8170796   0.7688381   0.8653211
18-21 months   EE             PAKISTAN                       1                    NA                0.7194986   0.6439913   0.7950059
18-21 months   EE             PAKISTAN                       0                    NA                0.7188472   0.6786503   0.7590440
18-21 months   GMS-Nepal      NEPAL                          1                    NA                0.8707461   0.7921749   0.9493173
18-21 months   GMS-Nepal      NEPAL                          0                    NA                0.9237786   0.8831301   0.9644271
18-21 months   MAL-ED         BANGLADESH                     1                    NA                0.8273582   0.7792914   0.8754250
18-21 months   MAL-ED         BANGLADESH                     0                    NA                0.7953997   0.7458116   0.8449878
18-21 months   MAL-ED         BRAZIL                         1                    NA                0.9425219   0.8193154   1.0657284
18-21 months   MAL-ED         BRAZIL                         0                    NA                0.8973152   0.8076488   0.9869817
18-21 months   MAL-ED         INDIA                          1                    NA                0.8658364   0.8231266   0.9085461
18-21 months   MAL-ED         INDIA                          0                    NA                0.8756162   0.8150146   0.9362177
18-21 months   MAL-ED         NEPAL                          1                    NA                0.7971325   0.7364642   0.8578008
18-21 months   MAL-ED         NEPAL                          0                    NA                0.8382811   0.7899310   0.8866312
18-21 months   MAL-ED         PERU                           1                    NA                0.8553980   0.8081101   0.9026859
18-21 months   MAL-ED         PERU                           0                    NA                0.8321450   0.7265316   0.9377584
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.7634697   0.6982976   0.8286419
18-21 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.8208213   0.7180305   0.9236121
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7625662   0.6896404   0.8354921
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6358158   0.4459413   0.8256903
18-21 months   NIH-Crypto     BANGLADESH                     1                    NA                0.7916931   0.7661115   0.8172746
18-21 months   NIH-Crypto     BANGLADESH                     0                    NA                0.8367200   0.7795062   0.8939338
18-21 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.7011836   0.6498548   0.7525125
18-21 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.6329662   0.5801250   0.6858074
21-24 months   EE             PAKISTAN                       1                    NA                0.6511759   0.5615234   0.7408284
21-24 months   EE             PAKISTAN                       0                    NA                0.6549294   0.6110618   0.6987970
21-24 months   GMS-Nepal      NEPAL                          1                    NA                0.8475398   0.7560661   0.9390134
21-24 months   GMS-Nepal      NEPAL                          0                    NA                0.7740470   0.7175331   0.8305610
21-24 months   MAL-ED         BANGLADESH                     1                    NA                0.7646902   0.7171245   0.8122558
21-24 months   MAL-ED         BANGLADESH                     0                    NA                0.7792290   0.7254501   0.8330078
21-24 months   MAL-ED         BRAZIL                         1                    NA                0.7594199   0.6895546   0.8292852
21-24 months   MAL-ED         BRAZIL                         0                    NA                0.8237389   0.7670758   0.8804020
21-24 months   MAL-ED         INDIA                          1                    NA                0.8229948   0.7825790   0.8634107
21-24 months   MAL-ED         INDIA                          0                    NA                0.8062340   0.7579983   0.8544697
21-24 months   MAL-ED         NEPAL                          1                    NA                0.8323444   0.7612822   0.9034067
21-24 months   MAL-ED         NEPAL                          0                    NA                0.7563009   0.7095367   0.8030650
21-24 months   MAL-ED         PERU                           1                    NA                0.7442904   0.6875266   0.8010542
21-24 months   MAL-ED         PERU                           0                    NA                0.8166195   0.7363317   0.8969072
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8505521   0.7835768   0.9175274
21-24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.8247178   0.7414044   0.9080312
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7101375   0.6358171   0.7844579
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7268571   0.6117769   0.8419373
21-24 months   NIH-Crypto     BANGLADESH                     1                    NA                0.8016766   0.7747425   0.8286108
21-24 months   NIH-Crypto     BANGLADESH                     0                    NA                0.7964712   0.7372524   0.8556900
21-24 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.6576098   0.6068598   0.7083598
21-24 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.7217537   0.6574631   0.7860443


### Parameter: E(Y)


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     EE             PAKISTAN                       NA                   NA                3.0768634   2.9920049   3.1617219
0-3 months     GMS-Nepal      NEPAL                          NA                   NA                3.6007099   3.5477591   3.6536607
0-3 months     JiVitA-3       BANGLADESH                     NA                   NA                3.7233830   3.7130769   3.7336890
0-3 months     JiVitA-4       BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
0-3 months     MAL-ED         BANGLADESH                     NA                   NA                3.3417037   3.2759713   3.4074362
0-3 months     MAL-ED         BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     MAL-ED         INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     MAL-ED         NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     MAL-ED         PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     MAL-ED         SOUTH AFRICA                   NA                   NA                3.1814611   3.0837784   3.2791439
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     NIH-Crypto     BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     SAS-CompFeed   INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ZVITAMBO       ZIMBABWE                       NA                   NA                3.3363113   3.3143866   3.3582359
3-6 months     EE             PAKISTAN                       NA                   NA                2.0964784   2.0370459   2.1559108
3-6 months     GMS-Nepal      NEPAL                          NA                   NA                1.7149484   1.6747185   1.7551783
3-6 months     JiVitA-3       BANGLADESH                     NA                   NA                1.9202003   1.9097349   1.9306657
3-6 months     JiVitA-4       BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
3-6 months     MAL-ED         BANGLADESH                     NA                   NA                1.9261396   1.8757731   1.9765061
3-6 months     MAL-ED         BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED         INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED         NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED         PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED         SOUTH AFRICA                   NA                   NA                1.9675632   1.8869774   2.0481490
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Crypto     BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     SAS-CompFeed   INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ZVITAMBO       ZIMBABWE                       NA                   NA                1.9798025   1.9589541   2.0006508
6-9 months     EE             PAKISTAN                       NA                   NA                1.1759299   1.1281312   1.2237286
6-9 months     GMS-Nepal      NEPAL                          NA                   NA                1.3149951   1.2714994   1.3584908
6-9 months     JiVitA-4       BANGLADESH                     NA                   NA                1.3242433   1.3035625   1.3449241
6-9 months     MAL-ED         BANGLADESH                     NA                   NA                1.2501943   1.2105165   1.2898721
6-9 months     MAL-ED         BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED         INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED         NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED         PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED         SOUTH AFRICA                   NA                   NA                1.3727471   1.3076679   1.4378262
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Crypto     BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     SAS-CompFeed   INDIA                          NA                   NA                1.2164378   1.1971945   1.2356811
6-9 months     ZVITAMBO       ZIMBABWE                       NA                   NA                1.3463873   1.3263814   1.3663933
9-12 months    EE             PAKISTAN                       NA                   NA                0.9088153   0.8730486   0.9445821
9-12 months    GMS-Nepal      NEPAL                          NA                   NA                0.9962469   0.9614166   1.0310773
9-12 months    JiVitA-4       BANGLADESH                     NA                   NA                1.0714791   1.0535276   1.0894307
9-12 months    MAL-ED         BANGLADESH                     NA                   NA                0.9891384   0.9503088   1.0279680
9-12 months    MAL-ED         BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED         INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED         NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED         PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED         SOUTH AFRICA                   NA                   NA                1.0154176   0.9498134   1.0810218
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Crypto     BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    SAS-CompFeed   INDIA                          NA                   NA                0.9997324   0.9682232   1.0312416
9-12 months    ZVITAMBO       ZIMBABWE                       NA                   NA                1.0802479   1.0614441   1.0990518
12-15 months   EE             PAKISTAN                       NA                   NA                1.0093391   0.9760739   1.0426043
12-15 months   GMS-Nepal      NEPAL                          NA                   NA                0.8761489   0.8451937   0.9071041
12-15 months   JiVitA-4       BANGLADESH                     NA                   NA                0.9415306   0.9256966   0.9573645
12-15 months   MAL-ED         BANGLADESH                     NA                   NA                0.9138320   0.8732892   0.9543748
12-15 months   MAL-ED         BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED         INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED         NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED         PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.9204319   0.8621345   0.9787294
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   SAS-CompFeed   INDIA                          NA                   NA                0.8334688   0.7956713   0.8712664
12-15 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.9168654   0.8876056   0.9461252
15-18 months   EE             PAKISTAN                       NA                   NA                0.8423245   0.8096780   0.8749710
15-18 months   GMS-Nepal      NEPAL                          NA                   NA                0.7530525   0.7156232   0.7904818
15-18 months   JiVitA-4       BANGLADESH                     NA                   NA                0.8599177   0.8433915   0.8764438
15-18 months   MAL-ED         BANGLADESH                     NA                   NA                0.8245812   0.7874849   0.8616775
15-18 months   MAL-ED         BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED         INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED         NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED         PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.8927939   0.8398181   0.9457697
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   SAS-CompFeed   INDIA                          NA                   NA                0.9046837   0.8805433   0.9288241
15-18 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.7990024   0.7666506   0.8313542
18-21 months   EE             PAKISTAN                       NA                   NA                0.7207894   0.6859832   0.7555957
18-21 months   GMS-Nepal      NEPAL                          NA                   NA                0.9071693   0.8706533   0.9436852
18-21 months   MAL-ED         BANGLADESH                     NA                   NA                0.8149421   0.7805357   0.8493484
18-21 months   MAL-ED         BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED         INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED         NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED         PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.7830843   0.7268811   0.8392874
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.6698320   0.6330206   0.7066433
21-24 months   EE             PAKISTAN                       NA                   NA                0.6539968   0.6154353   0.6925583
21-24 months   GMS-Nepal      NEPAL                          NA                   NA                0.8033069   0.7554279   0.8511859
21-24 months   MAL-ED         BANGLADESH                     NA                   NA                0.7716930   0.7363295   0.8070564
21-24 months   MAL-ED         BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED         INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED         NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED         PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.8379978   0.7860329   0.8899627
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.6878183   0.6475714   0.7280651


### Parameter: ATE


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     EE             PAKISTAN                       0                    1                  0.0548593   -0.1355525    0.2452711
0-3 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL                          0                    1                 -0.0687343   -0.1771012    0.0396325
0-3 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH                     0                    1                  0.5175936    0.4943775    0.5408096
0-3 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH                     0                    1                 -0.0169300   -0.0867068    0.0528468
0-3 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH                     0                    1                  0.0471724   -0.0897122    0.1840570
0-3 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL                         0                    1                  0.0196177   -0.2066632    0.2458987
0-3 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA                          0                    1                  0.0013749   -0.2009878    0.2037377
0-3 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL                          0                    1                  0.1616618   -0.0213510    0.3446746
0-3 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU                           0                    1                  0.1028128   -0.0578707    0.2634964
0-3 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0051276   -0.1943428    0.2045981
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1109719   -0.3632404    0.1412966
0-3 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto     BANGLADESH                     0                    1                 -0.0552072   -0.1654859    0.0550715
0-3 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA                          0                    1                  0.0707093   -0.0757364    0.2171549
0-3 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO       ZIMBABWE                       0                    1                 -0.1036945   -0.1466640   -0.0607251
3-6 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     EE             PAKISTAN                       0                    1                  0.0650791   -0.1010620    0.2312202
3-6 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL                          0                    1                 -0.0372476   -0.1298787    0.0553835
3-6 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH                     0                    1                  0.1656114    0.1413080    0.1899147
3-6 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4       BANGLADESH                     0                    1                 -0.0127495   -0.0744273    0.0489283
3-6 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH                     0                    1                 -0.0219428   -0.1262121    0.0823265
3-6 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL                         0                    1                 -0.1050996   -0.2641863    0.0539871
3-6 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA                          0                    1                 -0.0474653   -0.1917478    0.0968172
3-6 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL                          0                    1                  0.0625790   -0.0487049    0.1738629
3-6 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU                           0                    1                  0.1127950   -0.0279311    0.2535210
3-6 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.1106751   -0.0545997    0.2759499
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1097249   -0.0776277    0.2970776
3-6 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto     BANGLADESH                     0                    1                  0.1691965    0.0541896    0.2842034
3-6 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA                          0                    1                  0.1264474   -0.0217530    0.2746479
3-6 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO       ZIMBABWE                       0                    1                  0.0061148   -0.0359717    0.0482014
6-9 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN                       0                    1                  0.0098180   -0.1087278    0.1283638
6-9 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL                          0                    1                 -0.0439044   -0.1377436    0.0499349
6-9 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4       BANGLADESH                     0                    1                 -0.0015289   -0.0421273    0.0390696
6-9 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH                     0                    1                 -0.0067507   -0.0839202    0.0704188
6-9 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL                         0                    1                 -0.0243615   -0.1873246    0.1386016
6-9 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA                          0                    1                  0.1310278    0.0242019    0.2378536
6-9 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL                          0                    1                  0.0218419   -0.0654010    0.1090848
6-9 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU                           0                    1                 -0.0090889   -0.1379584    0.1197806
6-9 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0905846   -0.0503600    0.2315292
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0183171   -0.1858873    0.2225215
6-9 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto     BANGLADESH                     0                    1                 -0.0061812   -0.0965918    0.0842294
6-9 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA                          0                    1                  0.0095743   -0.1427801    0.1619286
6-9 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO       ZIMBABWE                       0                    1                 -0.0112321   -0.0513600    0.0288958
9-12 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN                       0                    1                 -0.0060562   -0.0940007    0.0818883
9-12 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL                          0                    1                  0.0207128   -0.0613372    0.1027627
9-12 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH                     0                    1                  0.0252634   -0.0114947    0.0620216
9-12 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH                     0                    1                  0.0730565   -0.0065414    0.1526545
9-12 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL                         0                    1                 -0.0253245   -0.1711333    0.1204844
9-12 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA                          0                    1                  0.0014724   -0.0764293    0.0793741
9-12 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL                          0                    1                 -0.0113062   -0.0935497    0.0709372
9-12 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU                           0                    1                 -0.0038714   -0.1233350    0.1155921
9-12 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.1043507   -0.2450958    0.0363944
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0289501   -0.2311820    0.1732817
9-12 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto     BANGLADESH                     0                    1                 -0.0177806   -0.0933854    0.0578241
9-12 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA                          0                    1                 -0.0659551   -0.1928515    0.0609414
9-12 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO       ZIMBABWE                       0                    1                  0.0135053   -0.0244846    0.0514951
12-15 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN                       0                    1                 -0.0311272   -0.1136318    0.0513774
12-15 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL                          0                    1                 -0.0513049   -0.1141040    0.0114942
12-15 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH                     0                    1                 -0.0069794   -0.0387180    0.0247591
12-15 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH                     0                    1                  0.0615626   -0.0219298    0.1450551
12-15 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL                         0                    1                 -0.0068206   -0.1239231    0.1102820
12-15 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA                          0                    1                 -0.0074874   -0.0886123    0.0736375
12-15 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL                          0                    1                  0.0128336   -0.0685078    0.0941750
12-15 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU                           0                    1                  0.1394163    0.0295261    0.2493064
12-15 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0695831   -0.1945678    0.0554016
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0071128   -0.1925969    0.1783713
12-15 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto     BANGLADESH                     0                    1                 -0.0001640   -0.0681369    0.0678089
12-15 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA                          0                    1                  0.0597530   -0.1523233    0.2718292
12-15 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0290719   -0.0306083    0.0887521
15-18 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN                       0                    1                  0.0335780   -0.0373901    0.1045462
15-18 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL                          0                    1                 -0.0482258   -0.1226102    0.0261587
15-18 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH                     0                    1                  0.0129080   -0.0189365    0.0447525
15-18 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH                     0                    1                  0.0126556   -0.0620776    0.0873888
15-18 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL                         0                    1                 -0.0320188   -0.1534444    0.0894068
15-18 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA                          0                    1                 -0.0421962   -0.1177848    0.0333924
15-18 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL                          0                    1                 -0.0413999   -0.1267007    0.0439008
15-18 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU                           0                    1                  0.0135945   -0.0803056    0.1074946
15-18 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0081851   -0.1011612    0.1175315
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0131925   -0.2131654    0.2395504
15-18 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0224838   -0.0392847    0.0842524
15-18 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA                          0                    1                 -0.1388772   -0.2714130   -0.0063413
15-18 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0331158   -0.0331960    0.0994277
18-21 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN                       0                    1                 -0.0006515   -0.0883736    0.0870707
18-21 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL                          0                    1                  0.0530326   -0.0356623    0.1417274
18-21 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH                     0                    1                 -0.0319584   -0.1011193    0.0372024
18-21 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL                         0                    1                 -0.0452067   -0.2047114    0.1142980
18-21 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA                          0                    1                  0.0097798   -0.0648355    0.0843951
18-21 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL                          0                    1                  0.0411486   -0.0362748    0.1185721
18-21 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU                           0                    1                 -0.0232530   -0.1393635    0.0928575
18-21 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0573516   -0.0653699    0.1800730
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1267505   -0.3290867    0.0755858
18-21 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0450270   -0.0175336    0.1075875
18-21 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0682175   -0.1421688    0.0057339
21-24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   EE             PAKISTAN                       0                    1                  0.0037534   -0.0969004    0.1044072
21-24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL                          0                    1                 -0.0734927   -0.1811325    0.0341471
21-24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH                     0                    1                  0.0145388   -0.0573869    0.0864645
21-24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL                         0                    1                  0.0643190   -0.0258484    0.1544863
21-24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA                          0                    1                 -0.0167608   -0.0802114    0.0466898
21-24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL                          0                    1                 -0.0760436   -0.1612678    0.0091807
21-24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU                           0                    1                  0.0723291   -0.0263813    0.1710395
21-24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0258343   -0.1330413    0.0813728
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0167196   -0.1212678    0.1547070
21-24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto     BANGLADESH                     0                    1                 -0.0052054   -0.0704023    0.0599914
21-24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0641439   -0.0184434    0.1467313


### Parameter: PAR


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    NA                 0.0420035   -0.1142773    0.1982843
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0489460   -0.1250772    0.0271853
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                 0.5162474    0.4935765    0.5389183
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0049789   -0.0244193    0.0144615
0-3 months     MAL-ED         BANGLADESH                     1                    NA                 0.0193009   -0.0331042    0.0717060
0-3 months     MAL-ED         BRAZIL                         1                    NA                 0.0121800   -0.1112098    0.1355699
0-3 months     MAL-ED         INDIA                          1                    NA                -0.0096367   -0.0899946    0.0707213
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.0877731   -0.0140504    0.1895965
0-3 months     MAL-ED         PERU                           1                    NA                 0.0262312   -0.0129850    0.0654474
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0031503   -0.0675876    0.0738882
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0234756   -0.0595926    0.0126414
0-3 months     NIH-Crypto     BANGLADESH                     1                    NA                -0.0048396   -0.0199370    0.0102577
0-3 months     SAS-CompFeed   INDIA                          1                    NA                 0.0724296   -0.0627670    0.2076262
0-3 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0508270   -0.0715877   -0.0300662
3-6 months     EE             PAKISTAN                       1                    NA                 0.0528656   -0.0846969    0.1904280
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.0261714   -0.0911474    0.0388046
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                 0.1652585    0.1415458    0.1889711
3-6 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0037571   -0.0211513    0.0136372
3-6 months     MAL-ED         BANGLADESH                     1                    NA                -0.0080480   -0.0482057    0.0321097
3-6 months     MAL-ED         BRAZIL                         1                    NA                -0.0527975   -0.1395936    0.0339985
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0106300   -0.0678887    0.0466286
3-6 months     MAL-ED         NEPAL                          1                    NA                 0.0357572   -0.0302168    0.1017312
3-6 months     MAL-ED         PERU                           1                    NA                 0.0227752   -0.0141683    0.0597188
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0469001   -0.0149673    0.1087675
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0172134   -0.0142408    0.0486676
3-6 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0286443    0.0124097    0.0448790
3-6 months     SAS-CompFeed   INDIA                          1                    NA                 0.1211792   -0.0164719    0.2588303
3-6 months     ZVITAMBO       ZIMBABWE                       1                    NA                 0.0047390   -0.0150821    0.0245601
6-9 months     EE             PAKISTAN                       1                    NA                 0.0075191   -0.0905042    0.1055424
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0314895   -0.0984770    0.0354980
6-9 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0002351   -0.0141314    0.0136611
6-9 months     MAL-ED         BANGLADESH                     1                    NA                -0.0027924   -0.0328879    0.0273031
6-9 months     MAL-ED         BRAZIL                         1                    NA                 0.0018844   -0.0873818    0.0911506
6-9 months     MAL-ED         INDIA                          1                    NA                 0.0534310    0.0102714    0.0965906
6-9 months     MAL-ED         NEPAL                          1                    NA                 0.0126037   -0.0390498    0.0642571
6-9 months     MAL-ED         PERU                           1                    NA                -0.0012227   -0.0353587    0.0329132
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0372560   -0.0179593    0.0924713
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0060060   -0.0255536    0.0375657
6-9 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0051479   -0.0072804    0.0175763
6-9 months     SAS-CompFeed   INDIA                          1                    NA                 0.0065668   -0.1356347    0.1487683
6-9 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0033299   -0.0220307    0.0153709
9-12 months    EE             PAKISTAN                       1                    NA                -0.0057047   -0.0786552    0.0672459
9-12 months    GMS-Nepal      NEPAL                          1                    NA                 0.0137040   -0.0445300    0.0719381
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0091149   -0.0039563    0.0221862
9-12 months    MAL-ED         BANGLADESH                     1                    NA                 0.0280490   -0.0029040    0.0590021
9-12 months    MAL-ED         BRAZIL                         1                    NA                -0.0114765   -0.0899592    0.0670062
9-12 months    MAL-ED         INDIA                          1                    NA                 0.0015843   -0.0298139    0.0329826
9-12 months    MAL-ED         NEPAL                          1                    NA                -0.0038118   -0.0524298    0.0448063
9-12 months    MAL-ED         PERU                           1                    NA                -0.0050819   -0.0361050    0.0259412
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0321218   -0.0885880    0.0243443
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0048162   -0.0376159    0.0279836
9-12 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0024391   -0.0128635    0.0079854
9-12 months    SAS-CompFeed   INDIA                          1                    NA                -0.0668220   -0.1834303    0.0497863
9-12 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0036657   -0.0139933    0.0213246
12-15 months   EE             PAKISTAN                       1                    NA                -0.0251568   -0.0930864    0.0427729
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0360037   -0.0810610    0.0090536
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0023221   -0.0139262    0.0092819
12-15 months   MAL-ED         BANGLADESH                     1                    NA                 0.0245201   -0.0087958    0.0578359
12-15 months   MAL-ED         BRAZIL                         1                    NA                 0.0030459   -0.0595724    0.0656641
12-15 months   MAL-ED         INDIA                          1                    NA                -0.0010355   -0.0337049    0.0316338
12-15 months   MAL-ED         NEPAL                          1                    NA                 0.0155424   -0.0327934    0.0638783
12-15 months   MAL-ED         PERU                           1                    NA                 0.0246919   -0.0060710    0.0554549
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0311549   -0.0808194    0.0185095
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0002300   -0.0286295    0.0281694
12-15 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0001166   -0.0098382    0.0096050
12-15 months   SAS-CompFeed   INDIA                          1                    NA                 0.0596395   -0.1409121    0.2601911
12-15 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0158851   -0.0131979    0.0449680
15-18 months   EE             PAKISTAN                       1                    NA                 0.0230113   -0.0347337    0.0807562
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0324354   -0.0845909    0.0197201
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0042869   -0.0070641    0.0156379
15-18 months   MAL-ED         BANGLADESH                     1                    NA                 0.0048578   -0.0247783    0.0344939
15-18 months   MAL-ED         BRAZIL                         1                    NA                -0.0154350   -0.0781798    0.0473097
15-18 months   MAL-ED         INDIA                          1                    NA                -0.0148337   -0.0450908    0.0154235
15-18 months   MAL-ED         NEPAL                          1                    NA                -0.0232142   -0.0731947    0.0267663
15-18 months   MAL-ED         PERU                           1                    NA                 0.0041288   -0.0216978    0.0299555
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0042339   -0.0394599    0.0479277
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0007220   -0.0257076    0.0271515
15-18 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0053953   -0.0035127    0.0143033
15-18 months   SAS-CompFeed   INDIA                          1                    NA                -0.1362876   -0.2593440   -0.0132312
15-18 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0150386   -0.0165308    0.0466080
18-21 months   EE             PAKISTAN                       1                    NA                 0.0012908   -0.0689202    0.0715019
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0364232   -0.0268555    0.0997018
18-21 months   MAL-ED         BANGLADESH                     1                    NA                -0.0124161   -0.0394817    0.0146495
18-21 months   MAL-ED         BRAZIL                         1                    NA                -0.0264461   -0.1100283    0.0571362
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0128737   -0.0183235    0.0440709
18-21 months   MAL-ED         NEPAL                          1                    NA                 0.0211473   -0.0240998    0.0663943
18-21 months   MAL-ED         PERU                           1                    NA                -0.0139541   -0.0456200    0.0177117
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0196145   -0.0289305    0.0681595
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0188624   -0.0482469    0.0105220
18-21 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0060825   -0.0024325    0.0145975
18-21 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0313517   -0.0662867    0.0035833
21-24 months   EE             PAKISTAN                       1                    NA                 0.0028209   -0.0789993    0.0846410
21-24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0442329   -0.1183718    0.0299060
21-24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0070028   -0.0210676    0.0350732
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0367320   -0.0117648    0.0852288
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0025565   -0.0235977    0.0287107
21-24 months   MAL-ED         NEPAL                          1                    NA                -0.0489879   -0.0993911    0.0014152
21-24 months   MAL-ED         PERU                           1                    NA                 0.0167602   -0.0094528    0.0429732
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0125542   -0.0545111    0.0294026
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0087953   -0.0198957    0.0374862
21-24 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0023413   -0.0112247    0.0065421
21-24 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0302085   -0.0089643    0.0693812
