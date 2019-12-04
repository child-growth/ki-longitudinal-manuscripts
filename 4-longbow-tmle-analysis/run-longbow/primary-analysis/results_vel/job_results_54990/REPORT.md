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

**Intervention Variable:** impfloor

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
* W_nrooms
* W_nchldlt5
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        impfloor    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              217     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               19     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              161     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                2     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1              166     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               11     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               61     150  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               89     150  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1               53     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0              201     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              178     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10     223  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213     223  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               68      68  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0      68  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1              280     280  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0                0     280  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              501     564  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               63     564  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              586     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               54     640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              547     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     721  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               72     398  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0              326     398  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           1               27      29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           0                2      29  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1314   19836  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0            18522   19836  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              260    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             2253    2513  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              214     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               17     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              206     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                2     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1              215     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               15     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              101     227  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0              126     227  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1               58     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0              209     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              222     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     237  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              226     237  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              214     214  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     214  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1              297     297  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0                0     297  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              463     521  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               58     521  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              551     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               47     598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              521     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     695  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               69     370  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              301     370  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           1              200     214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           0               14     214  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1081   12551  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            11470   12551  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              200    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             1639    1839  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1              208     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               16     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              196     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                2     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1              215     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               15     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1              100     223  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0              123     223  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1               57     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0              188     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              213     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10     223  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213     223  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              219     219  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     219  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1              303     303  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0                0     303  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1              442     497  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0               55     497  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              522     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               43     565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              513     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              175     688  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               68     381  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0              313     381  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           1              200     214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           0               14     214  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              376    3051  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0             2675    3051  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              208     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               17     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              192     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                2     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1              213     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               14     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1               99     222  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0              123     222  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1               54     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0              181     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              214     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     222  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              210     222  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              224     224  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     224  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1              299     299  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0                0     299  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              426     480  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               54     480  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              521     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               45     566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              501     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              173     674  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               68     370  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0              302     370  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           1              198     212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           0               14     212  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              406    3498  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             3092    3498  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              182     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                2     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1              212     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               14     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1               99     223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0              124     223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1               51     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0              173     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              208     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              212     224  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              233     233  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     233  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1              292     292  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0                0     292  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1              410     460  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     460  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              490     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               42     532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              489     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              171     660  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               69     369  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0              300     369  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           1              185     199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           0               14     199  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              401    3546  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0             3145    3546  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              173     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                2     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1               96     220  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0              124     220  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1               48     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0              165     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              206     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     215  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              203     215  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              226     226  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     226  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1              284     284  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0                0     284  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1              400     448  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0               48     448  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              487     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               41     528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              434     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              170     604  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               71     375  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0              304     375  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           1              176     189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           0               13     189  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              399    3547  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0             3148    3547  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1              193     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               16     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              165     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                2     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1               96     220  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0              124     220  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1               48     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0              154     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              214     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              190     202  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              213     213  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     213  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1              283     283  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0                0     283  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1              372     421  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0               49     421  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              497     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               44     541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              381     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              165     546  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               64     342  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0              278     342  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           1              171     183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           0               12     183  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              191     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               16     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              163     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1               97     220  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0              123     220  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1               45     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0              144     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              217     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     202  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              190     202  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              213     213  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     213  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1              292     292  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0                0     292  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              363     410  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               47     410  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              435     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               36     471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              324     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              166     490  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               50     245  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0              195     245  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           1               33      38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           0                5      38  y_rate_len       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/1e127550-ca1e-4cdf-9885-5d0035e6b9fe/f31d2a2f-5db3-4569-946b-128a24e09404/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1e127550-ca1e-4cdf-9885-5d0035e6b9fe/f31d2a2f-5db3-4569-946b-128a24e09404/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1e127550-ca1e-4cdf-9885-5d0035e6b9fe/f31d2a2f-5db3-4569-946b-128a24e09404/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                3.3337389    3.2650774   3.4024004
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                3.5875729    3.3152209   3.8599249
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                3.3265167    3.2370236   3.4160098
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                2.8434138    2.2696616   3.4171661
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.6983290    3.4977372   3.8989208
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                3.5736253    3.4518376   3.6954131
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.1917218    3.0587633   3.3246803
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                3.0463000    2.9716696   3.1209304
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                3.1562440    3.0472031   3.2652848
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                3.3468572    3.1123627   3.5813516
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4216440    3.1039735   3.7393146
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2463707    3.1657389   3.3270024
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                3.1079764    3.0512905   3.1646624
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                3.1271795    2.9567181   3.2976409
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.2643749    3.2256772   3.3030727
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.1983463    3.0714675   3.3252252
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.1737915    3.1303712   3.2172118
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.9962578    2.9293510   3.0631646
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                3.4805662    3.3668718   3.5942606
0-3 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                3.6395990    3.5714505   3.7077474
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                3.7397135    3.6972668   3.7821603
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                3.6609216    3.6505575   3.6712857
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                2.8713481    2.6078867   3.1348096
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                3.0157479    2.9611066   3.0703892
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.9405241    1.8876248   1.9934234
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.6751991    1.5055492   1.8448491
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                1.8924691    1.8257274   1.9592108
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                1.8790717    1.4867295   2.2714139
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9736693    1.8815876   2.0657510
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.9551494    1.8785538   2.0317449
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                2.0724569    1.9232082   2.2217056
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                1.9939059    1.9183975   2.0694144
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.9859153    1.9013227   2.0705079
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.8997487    1.5980609   2.2014365
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7074030    1.3818381   2.0329678
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8335643    1.7633570   1.9037715
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.8405251    1.7894327   1.8916174
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.7774400    1.6184246   1.9364553
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.9742598    1.9389276   2.0095920
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.8648691    1.7365984   1.9931398
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.9709942    1.9307100   2.0112785
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.1027017    2.0139890   2.1914144
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.7620395    1.6533908   1.8706881
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.7040883    1.6522264   1.7559503
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                2.0866735    2.0367786   2.1365685
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                2.0611373    1.9106858   2.2115887
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                1.9483815    1.9065503   1.9902126
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                1.9170060    1.9058115   1.9282004
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.8896507    1.7054261   2.0738753
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.8982463    1.8683788   1.9281137
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.2454461    1.2042738   1.2866184
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.3593182    1.2093486   1.5092878
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    NA                1.2446422    1.1918222   1.2974623
6-9 months     ki0047075b-MAL-ED       INDIA                          0                    NA                1.3849258    1.1209484   1.6489032
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.3683498    1.3037207   1.4329788
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.3594973    1.2951656   1.4238289
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                1.3486336    1.2190179   1.4782492
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                1.3115373    1.2508484   1.3722263
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.3795688    1.3144478   1.4446899
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.2774308    0.9279640   1.6268977
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                2.0937867    1.3649299   2.8226435
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1884943    1.1126472   1.2643413
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.2717819    1.2278906   1.3156733
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.1552486    1.0434781   1.2670191
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.2887642    1.2627389   1.3147895
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.2494945    1.1505817   1.3484074
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.3528925    1.3183239   1.3874611
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.2537293    1.1977005   1.3097582
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.2192619    1.1313313   1.3071925
6-9 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.3306995    1.2675894   1.3938095
6-9 months     ki1114097-CONTENT       PERU                           1                    NA                1.3983758    1.3500681   1.4466836
6-9 months     ki1114097-CONTENT       PERU                           0                    NA                1.3790082    1.1893801   1.5686362
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.3693222    1.2925334   1.4461110
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.3169408    1.2946727   1.3392089
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.9899524    0.9491003   1.0308046
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.9937326    0.8752080   1.1122573
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                0.9850609    0.9461921   1.0239296
9-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                0.9281742    0.7153360   1.1410125
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.1096814    1.0392559   1.1801069
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                1.0676563    1.0170277   1.1182850
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.0597190    0.9481413   1.1712967
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                1.1087518    1.0508708   1.1666328
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.0096290    0.9414645   1.0777936
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9534628    0.7388628   1.1680628
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5650820   -0.3182414   1.4484055
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8190808    0.7421205   0.8960410
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.1019274    1.0649763   1.1388785
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.9922899    0.8774373   1.1071424
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.0564914    1.0280305   1.0849523
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.9588324    0.8792466   1.0384182
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.1159872    1.0847818   1.1471926
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.1459445    1.0911249   1.2007642
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.0378772    0.9638386   1.1119157
9-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.9936349    0.9461748   1.0410949
9-12 months    ki1114097-CONTENT       PERU                           1                    NA                1.2001996    1.1598177   1.2405814
9-12 months    ki1114097-CONTENT       PERU                           0                    NA                1.3387293    1.1457271   1.5317316
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.0974585    1.0318573   1.1630597
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.0666933    1.0461232   1.0872634
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.9240743    0.8824237   0.9657250
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.8088641    0.6550658   0.9626623
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.9180008    0.8775513   0.9584502
12-15 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.7970942    0.6091669   0.9850215
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.9577902    0.8914584   1.0241220
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.9587735    0.9086323   1.0089148
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.9235785    0.8251741   1.0219830
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8830396    0.8297039   0.9363753
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.9185627    0.8575170   0.9796083
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9421710    0.7689311   1.1154109
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8833914    0.5552814   1.2115013
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8541727    0.7877189   0.9206265
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7225422    0.6748763   0.7702081
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7279464    0.6168984   0.8389944
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.9639047    0.9365826   0.9912267
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.9083607    0.8145050   1.0022165
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.9737406    0.9440696   1.0034117
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9740127    0.9174926   1.0305328
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.8764466    0.8243612   0.9285320
12-15 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8961975    0.8539583   0.9384367
12-15 months   ki1114097-CONTENT       PERU                           1                    NA                0.9411007    0.8971508   0.9850507
12-15 months   ki1114097-CONTENT       PERU                           0                    NA                0.7307026    0.5674048   0.8940003
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.9918959    0.9415171   1.0422747
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.9372072    0.9202389   0.9541755
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.8283140    0.7903401   0.8662880
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.6910525    0.5253042   0.8568008
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8398566    0.8029809   0.8767324
15-18 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.8417278    0.6829265   1.0005292
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8500703    0.7864710   0.9136696
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8469039    0.7884557   0.9053521
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8443953    0.7497000   0.9390906
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8489401    0.8010418   0.8968384
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.8901933    0.8345605   0.9458262
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.8825644    0.7068067   1.0583220
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6685918    0.4732542   0.8639294
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6866509    0.6240353   0.7492666
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7762748    0.7337541   0.8187955
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7444045    0.5877924   0.9010166
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8610951    0.8360156   0.8861745
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8028987    0.7174784   0.8883189
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.9117782    0.8850192   0.9385372
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9417392    0.8880654   0.9954129
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.7730638    0.6978640   0.8482636
15-18 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.7572558    0.7058622   0.8086494
15-18 months   ki1114097-CONTENT       PERU                           1                    NA                0.9913445    0.9446065   1.0380824
15-18 months   ki1114097-CONTENT       PERU                           0                    NA                0.8281581    0.6304278   1.0258885
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.8778251    0.7979823   0.9576679
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.8595596    0.8421482   0.8769709
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.8134674    0.7772940   0.8496408
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.7372199    0.6357519   0.8386880
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8831793    0.8470745   0.9192841
18-21 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.8300258    0.6200912   1.0399603
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8612589    0.7988869   0.9236308
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.7932412    0.7414806   0.8450019
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8686435    0.7804450   0.9568419
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8210223    0.7695696   0.8724750
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.7866356    0.7267702   0.8465009
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.7550277    0.6141368   0.8959187
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6975792    0.3884597   1.0066987
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7495864    0.6802861   0.8188866
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7366203    0.6976820   0.7755587
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.6714774    0.5837389   0.7592158
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8367546    0.8120632   0.8614460
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8895870    0.7867794   0.9923945
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8029436    0.7754513   0.8304359
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8045659    0.7602918   0.8488400
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.9603322    0.8950030   1.0256615
18-21 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8947836    0.8451321   0.9444350
18-21 months   ki1114097-CONTENT       PERU                           1                    NA                0.9166098    0.8711143   0.9621054
18-21 months   ki1114097-CONTENT       PERU                           0                    NA                0.8291680    0.6901541   0.9681819
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.7571434    0.7207431   0.7935436
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.9346369    0.7703116   1.0989621
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8218286    0.7902171   0.8534402
21-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.8833271    0.7661479   1.0005062
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8072148    0.7434778   0.8709518
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.7492585    0.6936822   0.8048348
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.7769073    0.6826445   0.8711701
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.7546728    0.7002267   0.8091190
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.8313242    0.7754179   0.8872306
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9246359    0.7789924   1.0702794
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8472466    0.4894348   1.2050583
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7135788    0.6477473   0.7794103
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7164331    0.6795975   0.7532687
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7262968    0.5979175   0.8546760
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.7604414    0.7339376   0.7869452
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.7053787    0.6117910   0.7989665
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.7896315    0.7597134   0.8195496
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8195629    0.7735146   0.8656112
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.8347455    0.7469027   0.9225883
21-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8244216    0.7540495   0.8947937
21-24 months   ki1114097-CONTENT       PERU                           1                    NA                0.9374898    0.8493729   1.0256066
21-24 months   ki1114097-CONTENT       PERU                           0                    NA                0.9191808    0.7244090   1.1139526


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.6296286   3.5360391   3.7232181
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2545886   3.1766598   3.3325174
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                3.1103028   3.0567101   3.1638956
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                3.6174009   3.5587664   3.6760355
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                3.6642976   3.6540585   3.6745367
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                3.0081001   2.9551156   3.0610847
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9657452   1.9082948   2.0231956
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8323273   1.7640304   1.9006242
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.8344466   1.7863211   1.8825720
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.7124775   1.6680987   1.7568562
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                1.9201334   1.9096727   1.9305942
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.3619990   1.3172112   1.4067868
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1936201   1.1152491   1.2719912
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.2563364   1.2157525   1.2969202
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.3113264   1.2625909   1.3600619
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.3241253   1.3034398   1.3448108
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.0889658   1.0477966   1.1301350
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8097109   0.7283882   0.8910335
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.0908549   1.0557207   1.1259891
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.0061163   0.9672192   1.0450134
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.0715268   1.0535441   1.0895095
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.9519911   0.9122423   0.9917398
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8549769   0.7901258   0.9198280
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7243145   0.6797578   0.7688713
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.8872975   0.8534861   0.9211089
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.9413556   0.9255444   0.9571667
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8460773   0.8041876   0.8879670
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6874799   0.6258797   0.7490800
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7725355   0.7322370   0.8128339
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.7563204   0.7138144   0.7988263
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.8599842   0.8434536   0.8765149
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8197711   0.7806443   0.8588978
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7470886   0.6791662   0.8150110
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7273854   0.6914063   0.7633645
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.9021712   0.8606987   0.9436437
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.7793951   0.7378545   0.8209358
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7200647   0.6550341   0.7850953
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7165479   0.6809839   0.7521119
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.8230414   0.7663592   0.8797236
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9350807   0.8543561   1.0158053


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.2538340   -0.0268898    0.5345578
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    1                 -0.4831029   -1.0680854    0.1018796
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1247037   -0.3601506    0.1107431
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.1454218   -0.2988367    0.0079932
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.1906132   -0.0681738    0.4494001
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1752734   -0.5038538    0.1533070
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0192030   -0.1604444    0.1988505
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0660286   -0.1985576    0.0665003
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1775337   -0.2573750   -0.0976924
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.1590328    0.0265066    0.2915589
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0787919   -0.1223030   -0.0352808
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                  0.1443997   -0.1229938    0.4117933
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.2653249   -0.4446145   -0.0860354
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0133974   -0.4115654    0.3847707
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0185199   -0.1381760    0.1011361
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0785509   -0.2463409    0.0892390
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0861666   -0.3993178    0.2269846
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1261613   -0.2074543    0.4597769
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0630851   -0.2300570    0.1038868
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1093907   -0.2425496    0.0237682
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1317075    0.0346321    0.2287828
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0579511   -0.1794397    0.0635375
3-6 months     ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           0                    1                 -0.0255363   -0.1835868    0.1325142
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0313755   -0.0749900    0.0122390
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                  0.0085955   -0.1774219    0.1946130
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.1138721   -0.0415187    0.2692629
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          0                    1                  0.1402836   -0.1292014    0.4097686
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0088525   -0.1001218    0.0824168
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0370962   -0.1807538    0.1065613
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.1021380   -0.4591851    0.2549091
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.9052924   -1.6376099   -0.1729750
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1165333   -0.2376914    0.0046247
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0392696   -0.1414444    0.0629052
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0991632   -0.1649953   -0.0333311
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.1114376    0.0027265    0.2201486
6-9 months     ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           0                    1                 -0.0193677   -0.2144442    0.1757089
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0523814   -0.1323216    0.0275587
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0037802   -0.1215778    0.1291381
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0568866   -0.2734011    0.1596278
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0420251   -0.1290427    0.0449925
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.0490328   -0.0768304    0.1748960
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0561662   -0.2815183    0.1691859
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2539987   -0.6327893    1.1407868
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1096375   -0.2304816    0.0112065
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0976590   -0.1822422   -0.0130758
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0299573   -0.0332232    0.0931379
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0442423   -0.1321214    0.0436368
9-12 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           0                    1                  0.1385298   -0.0585812    0.3356407
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0307652   -0.0991079    0.0375776
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.1152103   -0.2744487    0.0440281
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.1209066   -0.3128219    0.0710088
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0009833   -0.0828974    0.0848641
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0405389   -0.1521755    0.0710977
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0236084   -0.1602474    0.2074641
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0292187   -0.3643955    0.3059581
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0054042   -0.1156668    0.1264751
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0555439   -0.1535567    0.0424689
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0002720   -0.0640293    0.0645734
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0197509   -0.0475190    0.0870207
12-15 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           0                    1                 -0.2103982   -0.3795961   -0.0412002
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0546887   -0.1084367   -0.0009407
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.1372615   -0.3075670    0.0330439
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          0                    1                  0.0018712   -0.1614400    0.1651824
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0031664   -0.0904768    0.0841440
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0045448   -0.1022450    0.1113346
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0076290   -0.1921296    0.1768716
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0180591   -0.1874939    0.2236121
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0318703   -0.1950479    0.1313073
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0581964   -0.1470915    0.0306987
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0299610   -0.0303837    0.0903056
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0158081   -0.1072818    0.0756656
15-18 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           0                    1                 -0.1631863   -0.3674730    0.0411003
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0182655   -0.1005260    0.0639950
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0762475   -0.1840701    0.0315752
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0531535   -0.2663420    0.1600349
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0680176   -0.1490787    0.0130434
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0476212   -0.1500006    0.0547583
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0316078   -0.1863655    0.1231499
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0520072   -0.2645454    0.3685597
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0651430   -0.1610813    0.0307953
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0528324   -0.0528254    0.1584901
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0016223   -0.0502727    0.0535173
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0655486   -0.1477168    0.0166196
18-21 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0874418   -0.2349111    0.0600274
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.1774935    0.0090105    0.3459765
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          0                    1                  0.0614984   -0.0599039    0.1829007
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0579563   -0.1429273    0.0270147
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0222345   -0.1310080    0.0865391
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0933117   -0.0627263    0.2493497
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1336678   -0.4975949    0.2302594
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0098636   -0.1237080    0.1434353
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0550627   -0.1523081    0.0421827
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0299314   -0.0253960    0.0852588
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0103239   -0.1235322    0.1028844
21-24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0183090   -0.2320860    0.1954681


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0132712   -0.0066067    0.0331491
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0040985   -0.0325602    0.0407572
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0687004   -0.2306396    0.0932388
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.1197107   -0.2441120    0.0046906
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0104619   -0.0163446    0.0372683
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1670554   -0.4847923    0.1506815
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0023264   -0.0164884    0.0211412
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0066939   -0.0177062    0.0043184
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0445466   -0.0642494   -0.0248438
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.1368347    0.0275730    0.2460964
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0754160   -0.1173687   -0.0334632
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.1367520   -0.1138515    0.3873555
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0128834   -0.0269690    0.0012023
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0001711   -0.0179822    0.0176400
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0079241   -0.0780607    0.0622124
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0567747   -0.1933673    0.0798179
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0090898   -0.0315718    0.0133923
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1249243   -0.1949306    0.4447793
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0060785   -0.0232312    0.0110742
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0085141   -0.0182007    0.0011725
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0348030    0.0103004    0.0593057
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0495620   -0.1503990    0.0512750
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0024894   -0.0136102    0.0086313
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0282480   -0.0696104    0.0131143
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0091060   -0.1668527    0.1850647
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0025990   -0.0086488    0.0138469
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0015814   -0.0148318    0.0179946
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0063508   -0.0572525    0.0445510
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0286370   -0.1411078    0.0838337
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0026430   -0.0274497    0.0221637
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.9001666   -1.6053382   -0.1949950
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0154456   -0.0290679   -0.0018232
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0063457   -0.0142860    0.0015947
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0246230   -0.0422526   -0.0069935
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0920645    0.0032268    0.1809022
6-9 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0009522   -0.0158578    0.0139534
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0451969   -0.1183607    0.0279670
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0003079   -0.0092631    0.0086473
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0035906   -0.0158136    0.0086323
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0207156   -0.0715140    0.0300828
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0387934   -0.0599512    0.1375380
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0046968   -0.0135362    0.0229298
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2446288   -0.6061774    1.0954351
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0110725   -0.0242573    0.0021122
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0065164   -0.0132028    0.0001700
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0074873   -0.0076705    0.0226450
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0317609   -0.1050454    0.0415236
9-12 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0046772   -0.0085482    0.0179026
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0259317   -0.0889879    0.0371246
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0099739   -0.0229832    0.0030354
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0075071   -0.0181007    0.0030864
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0057991   -0.0543821    0.0427839
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0318506   -0.1186668    0.0549657
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0010668   -0.0147879    0.0169215
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0284145   -0.3488016    0.2919727
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0017724   -0.0110133    0.0145580
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0041546   -0.0114572    0.0031480
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0026012   -0.0185003    0.0132980
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0108509   -0.0436144    0.0653162
12-15 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0119564   -0.0238782   -0.0000346
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0505403   -0.1002171   -0.0008636
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0041914   -0.0166410    0.0082582
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0045318   -0.0069584    0.0160220
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0039930   -0.0545247    0.0465386
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0090354   -0.0742603    0.0923312
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0030431   -0.0174525    0.0113663
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0188881   -0.1729856    0.2107618
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0037393   -0.0190516    0.0115730
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0049952   -0.0119332    0.0019427
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0059386   -0.0094854    0.0213625
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0167435   -0.0931221    0.0596352
15-18 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0053213   -0.0188836    0.0082410
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0178409   -0.0950480    0.0593663
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0000826   -0.0087978    0.0086325
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0044692   -0.0142404    0.0053020
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0414878   -0.0902643    0.0072888
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0271996   -0.1054244    0.0510252
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0044546   -0.0162369    0.0073278
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0495094   -0.2499136    0.3489324
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0092349   -0.0208427    0.0023729
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0025831   -0.0051866    0.0103528
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0051681   -0.0203296    0.0099935
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0581610   -0.1272937    0.0109717
18-21 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0019761   -0.0128622    0.0089101
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0122749   -0.0000325    0.0245822
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0037227   -0.0051373    0.0125827
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0278197   -0.0787689    0.0231296
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0158567   -0.0992187    0.0675052
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0081707   -0.0040084    0.0203499
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1271819   -0.4727738    0.2184100
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0001148   -0.0148357    0.0150653
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0026976   -0.0044645    0.0098598
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0097039   -0.0088075    0.0282153
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0117041   -0.1022948    0.0788865
21-24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0024091   -0.0306082    0.0257901
