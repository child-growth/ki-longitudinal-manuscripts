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

**Intervention Variable:** perdiar6

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
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        perdiar6    n_cell     n  outcome_variable 
-------------  ----------------------  -----------------------------  ---------  -------  ----  -----------------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%              70   243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             77   243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0%             154   168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       INDIA                          0%              38   183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       101   183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%             44   183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%              54   156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        45   156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%             57   156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       PERU                           0%              66   265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       PERU                           >5%            113   265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             160   211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        43   211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        91   228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   228  y_rate_haz       
0-3 months     ki1000109-EE            PAKISTAN                       0%             270   303  y_rate_haz       
0-3 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        31   303  y_rate_haz       
0-3 months     ki1000109-EE            PAKISTAN                       >5%              2   303  y_rate_haz       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%             137   566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            252   566  y_rate_haz       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%             172   640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       258   640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            210   640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       169   721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            211   721  y_rate_haz       
0-3 months     ki1114097-CMIN          BANGLADESH                     0%              17    43  y_rate_haz       
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        13    43  y_rate_haz       
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%             13    43  y_rate_haz       
0-3 months     ki1114097-CONTENT       PERU                           0%              16    29  y_rate_haz       
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]         6    29  y_rate_haz       
0-3 months     ki1114097-CONTENT       PERU                           >5%              7    29  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        88   231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             75   231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0%             191   208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       INDIA                          0%              49   230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%              78   233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%             80   233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       PERU                           0%              66   267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       PERU                           >5%            115   267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             182   243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        53   243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             101   239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   239  y_rate_haz       
3-6 months     ki1000109-EE            PAKISTAN                       0%             248   280  y_rate_haz       
3-6 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        30   280  y_rate_haz       
3-6 months     ki1000109-EE            PAKISTAN                       >5%              2   280  y_rate_haz       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%             124   523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       164   523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            235   523  y_rate_haz       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%             155   598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       245   598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            198   598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             331   695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       164   695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            200   695  y_rate_haz       
3-6 months     ki1114097-CMIN          BANGLADESH                     0%              60   185  y_rate_haz       
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        46   185  y_rate_haz       
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%             79   185  y_rate_haz       
3-6 months     ki1114097-CONTENT       PERU                           0%             115   214  y_rate_haz       
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214  y_rate_haz       
3-6 months     ki1114097-CONTENT       PERU                           >5%             56   214  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             73   224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0%             181   198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       INDIA                          0%              49   230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%              76   230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%             78   230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       PERU                           0%              61   245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        79   245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       PERU                           >5%            105   245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        90   225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   225  y_rate_haz       
6-9 months     ki1000109-EE            PAKISTAN                       0%             274   304  y_rate_haz       
6-9 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        28   304  y_rate_haz       
6-9 months     ki1000109-EE            PAKISTAN                       >5%              2   304  y_rate_haz       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%             120   498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       156   498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            222   498  y_rate_haz       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%             145   565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       231   565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            189   565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       160   688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            196   688  y_rate_haz       
6-9 months     ki1114097-CMIN          BANGLADESH                     0%              56   177  y_rate_haz       
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        41   177  y_rate_haz       
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%             80   177  y_rate_haz       
6-9 months     ki1114097-CONTENT       PERU                           0%             115   214  y_rate_haz       
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214  y_rate_haz       
6-9 months     ki1114097-CONTENT       PERU                           >5%             56   214  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%              67   225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        86   225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             72   225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0%             177   194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       INDIA                          0%              46   227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%             58   227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%              76   229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%             77   229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       PERU                           0%              58   235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        77   235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       PERU                           >5%            100   235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             179   233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        87   224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   224  y_rate_haz       
9-12 months    ki1000109-EE            PAKISTAN                       0%             296   326  y_rate_haz       
9-12 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        28   326  y_rate_haz       
9-12 months    ki1000109-EE            PAKISTAN                       >5%              2   326  y_rate_haz       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%             118   482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       150   482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            214   482  y_rate_haz       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%             148   566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       226   566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            192   566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             330   674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       155   674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            189   674  y_rate_haz       
9-12 months    ki1114097-CMIN          BANGLADESH                     0%              49   160  y_rate_haz       
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160  y_rate_haz       
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%             75   160  y_rate_haz       
9-12 months    ki1114097-CONTENT       PERU                           0%             115   212  y_rate_haz       
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]        41   212  y_rate_haz       
9-12 months    ki1114097-CONTENT       PERU                           >5%             56   212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0%             167   184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       INDIA                          0%              46   226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%             57   226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%              77   230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%             77   230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       PERU                           0%              57   224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        69   224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       PERU                           >5%             98   224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             173   228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   226  y_rate_haz       
12-15 months   ki1000109-EE            PAKISTAN                       0%             269   297  y_rate_haz       
12-15 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        26   297  y_rate_haz       
12-15 months   ki1000109-EE            PAKISTAN                       >5%              2   297  y_rate_haz       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%             114   461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       145   461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            202   461  y_rate_haz       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%             139   532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       212   532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            181   532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             324   660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       147   660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            189   660  y_rate_haz       
12-15 months   ki1114097-CMIN          BANGLADESH                     0%              54   160  y_rate_haz       
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160  y_rate_haz       
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%             70   160  y_rate_haz       
12-15 months   ki1114097-CONTENT       PERU                           0%             106   199  y_rate_haz       
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]        39   199  y_rate_haz       
12-15 months   ki1114097-CONTENT       PERU                           >5%             54   199  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0%             159   175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        14   175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       PERU                           0%              54   213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        67   213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       PERU                           >5%             92   213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              93   217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   217  y_rate_haz       
15-18 months   ki1000109-EE            PAKISTAN                       0%             251   278  y_rate_haz       
15-18 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        25   278  y_rate_haz       
15-18 months   ki1000109-EE            PAKISTAN                       >5%              2   278  y_rate_haz       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%             112   449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       138   449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            199   449  y_rate_haz       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%             143   528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       206   528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            179   528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             304   604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       131   604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            169   604  y_rate_haz       
15-18 months   ki1114097-CMIN          BANGLADESH                     0%              59   163  y_rate_haz       
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   163  y_rate_haz       
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%             64   163  y_rate_haz       
15-18 months   ki1114097-CONTENT       PERU                           0%              98   189  y_rate_haz       
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   189  y_rate_haz       
15-18 months   ki1114097-CONTENT       PERU                           >5%             53   189  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        82   209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0%             152   167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       PERU                           0%              54   202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        65   202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       PERU                           >5%             83   202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             174   233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              86   204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             37   204  y_rate_haz       
18-21 months   ki1000109-EE            PAKISTAN                       0%             229   254  y_rate_haz       
18-21 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        23   254  y_rate_haz       
18-21 months   ki1000109-EE            PAKISTAN                       >5%              2   254  y_rate_haz       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            193   422  y_rate_haz       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%             143   541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       218   541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            180   541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             289   546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       112   546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            145   546  y_rate_haz       
18-21 months   ki1114097-CMIN          BANGLADESH                     0%              52   165  y_rate_haz       
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   165  y_rate_haz       
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%             73   165  y_rate_haz       
18-21 months   ki1114097-CONTENT       PERU                           0%              94   183  y_rate_haz       
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   183  y_rate_haz       
18-21 months   ki1114097-CONTENT       PERU                           >5%             51   183  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        79   207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0%             151   165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%              76   227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       PERU                           0%              49   189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        63   189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       PERU                           >5%             77   189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             175   235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        51   235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              86   204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        80   204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   204  y_rate_haz       
21-24 months   ki1000109-EE            PAKISTAN                       0%              97   106  y_rate_haz       
21-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]         8   106  y_rate_haz       
21-24 months   ki1000109-EE            PAKISTAN                       >5%              1   106  y_rate_haz       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       124   411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            185   411  y_rate_haz       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             118   471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       190   471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            163   471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             271   490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]        98   490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            121   490  y_rate_haz       
21-24 months   ki1114097-CMIN          BANGLADESH                     0%              47   133  y_rate_haz       
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        30   133  y_rate_haz       
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%             56   133  y_rate_haz       
21-24 months   ki1114097-CONTENT       PERU                           0%              23    38  y_rate_haz       
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]         7    38  y_rate_haz       
21-24 months   ki1114097-CONTENT       PERU                           >5%              8    38  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/9451a953-f56c-493b-a59d-6149fcf3e6e7/7858c953-74b5-46a6-a73d-e759775dbd5c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9451a953-f56c-493b-a59d-6149fcf3e6e7/7858c953-74b5-46a6-a73d-e759775dbd5c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9451a953-f56c-493b-a59d-6149fcf3e6e7/7858c953-74b5-46a6-a73d-e759775dbd5c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1404234   -0.2019266   -0.0789203
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.1174092   -0.1733076   -0.0615109
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.1101623   -0.1648710   -0.0554536
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0362608   -0.1063311    0.1788528
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0439582   -0.0992797    0.0113634
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.1607547   -0.2670706   -0.0544387
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0741946   -0.0076452    0.1560344
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0681115   -0.0055321    0.1417552
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.0541402   -0.0196308    0.1279111
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2657928   -0.3174333   -0.2141523
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.2896735   -0.3574968   -0.2218502
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.2454003   -0.2977265   -0.1930742
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.2038407   -0.2590258   -0.1486556
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.1132958   -0.2244504   -0.0021412
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0303247   -0.2963167    0.2356674
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1125629   -0.1712836   -0.0538422
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1438028   -0.2089024   -0.0787031
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1544587   -0.2443321   -0.0645853
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.2572316   -0.3065833   -0.2078798
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.2275153   -0.2721193   -0.1829113
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.2248623   -0.2662811   -0.1834436
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.1742928   -0.2070477   -0.1415380
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.1825364   -0.2083265   -0.1567463
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.2064961   -0.2397318   -0.1732604
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.2372101   -0.2608638   -0.2135565
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.2310609   -0.2715574   -0.1905644
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.2294719   -0.2656038   -0.1933400
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0109445   -0.1180596    0.0961706
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                 0.1261584    0.0032779    0.2490388
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                 0.0090155   -0.1368796    0.1549105
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0077360   -0.1528592    0.1683312
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0228392   -0.1433226    0.1890010
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                -0.0330771   -0.1848777    0.1187235
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0068728   -0.0527869    0.0390412
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0148911   -0.0501457    0.0203635
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0394913   -0.0830704    0.0040878
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0165256   -0.0857404    0.0526893
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0379187   -0.0760449    0.0002074
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0484348   -0.1042814    0.0074117
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0131758   -0.0566752    0.0303236
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0027179   -0.0507476    0.0453118
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0479651   -0.0953906   -0.0005396
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0185281   -0.0776954    0.0406393
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0532287   -0.0040834    0.1105408
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                 0.0316473   -0.0179902    0.0812849
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0029171   -0.0415252    0.0473595
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0115740   -0.0924982    0.0693502
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1395719   -0.2546049   -0.0245388
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0831454   -0.1352501   -0.0310408
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0726658   -0.1211990   -0.0241325
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0051169   -0.0826962    0.0724625
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0452453   -0.0932097    0.0027191
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0520287   -0.0885444   -0.0155130
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0528679   -0.0872911   -0.0184447
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0291233   -0.0601700    0.0019235
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0313555   -0.0558683   -0.0068428
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0191824   -0.0474319    0.0090671
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0490216    0.0241018    0.0739414
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0145075   -0.0495151    0.0205000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0232192   -0.0058914    0.0523298
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0062430   -0.0703885    0.0579026
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0157204   -0.0833182    0.0518774
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0091310   -0.0573065    0.0390445
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0058088   -0.0363859    0.0247682
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0418136   -0.0071070    0.0907342
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                 0.0313988   -0.0143607    0.0771582
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1007921   -0.1298493   -0.0717349
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0735179   -0.1036150   -0.0434207
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0372275   -0.0665877   -0.0078672
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0743766   -0.1363331   -0.0124200
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0686832   -0.0965070   -0.0408594
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0645501   -0.1141699   -0.0149303
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0416212   -0.0746476   -0.0085948
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0318026   -0.0656053    0.0020001
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0247681   -0.0595444    0.0100082
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0036812   -0.0438373    0.0511996
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0326475   -0.0714242    0.0061292
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0526432   -0.0928256   -0.0124607
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0042039   -0.0366034    0.0281957
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0677469   -0.1311773   -0.0043164
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0309229   -0.0902187    0.0283730
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1053139   -0.1555450   -0.0550827
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0800080   -0.1396102   -0.0204059
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0972851   -0.1575727   -0.0369975
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0239090   -0.0616165    0.0137986
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0408597   -0.0762455   -0.0054739
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0917993   -0.1157831   -0.0678155
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0658367   -0.0878778   -0.0437955
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0597599   -0.0775592   -0.0419607
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0620055   -0.0796956   -0.0443154
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0437011   -0.0613368   -0.0260654
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0283869   -0.0563349   -0.0004388
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0159416   -0.0408024    0.0089191
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0604401   -0.1113460   -0.0095342
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0081435   -0.0752464    0.0589593
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0660283   -0.1011782   -0.0308785
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0308019   -0.0585690   -0.0030349
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.0534750   -0.1097664    0.0028165
6-9 months     ki1114097-CONTENT       PERU                           >5%                  NA                 0.0105038   -0.0296850    0.0506925
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0965536   -0.1305310   -0.0625763
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0767355   -0.1025606   -0.0509104
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0981576   -0.1251758   -0.0711395
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1239505   -0.1598183   -0.0880826
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0868008   -0.1071166   -0.0664851
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0608323   -0.0965913   -0.0250733
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0648936   -0.0955311   -0.0342561
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0450051   -0.0741107   -0.0158995
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0678423   -0.0961721   -0.0395125
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0568690   -0.0984973   -0.0152407
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0683581   -0.1032134   -0.0335027
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0156458   -0.0509289    0.0196373
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0827680   -0.1133771   -0.0521588
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0870312   -0.1503594   -0.0237031
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1192457   -0.2232053   -0.0152862
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1404363   -0.1850842   -0.0957884
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1862627   -0.2465429   -0.1259824
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1437887   -0.2237847   -0.0637927
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0400644   -0.0674566   -0.0126722
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0486469   -0.0754559   -0.0218379
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0393169   -0.0618660   -0.0167679
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0700143   -0.0921925   -0.0478360
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0605439   -0.0778487   -0.0432391
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0575671   -0.0759813   -0.0391529
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0341977   -0.0496122   -0.0187832
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0253751   -0.0496807   -0.0010695
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0421833   -0.0633690   -0.0209976
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0779612   -0.1174267   -0.0384956
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0712078   -0.1372883   -0.0051273
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.1018278   -0.1370075   -0.0666481
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.0213919   -0.0430351    0.0002513
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.0279694   -0.0712246    0.0152859
9-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.0314942   -0.0649930    0.0020046
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0518952   -0.0803070   -0.0234835
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0760967   -0.0996787   -0.0525147
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0286353   -0.0573353    0.0000648
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0678603   -0.1040300   -0.0316906
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0707813   -0.0906246   -0.0509380
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0190446   -0.0488911    0.0108019
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0657240   -0.0942939   -0.0371540
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0491391   -0.0734593   -0.0248190
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0509366   -0.0783410   -0.0235322
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0724136   -0.1058443   -0.0389830
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0628655   -0.0977959   -0.0279351
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0705997   -0.0977735   -0.0434259
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0626305   -0.0866229   -0.0386382
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0557666   -0.1216830    0.0101498
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0101942   -0.1012493    0.0808608
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0721976   -0.1070811   -0.0373142
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0524311   -0.1000601   -0.0048021
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1088835   -0.1565468   -0.0612201
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.1424563   -0.1685846   -0.1163281
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.1279641   -0.1519052   -0.1040230
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.1164529   -0.1464595   -0.0864463
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0361651   -0.0568146   -0.0155157
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0457721   -0.0618229   -0.0297214
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0328774   -0.0497842   -0.0159705
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0395665   -0.0526280   -0.0265050
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0462656   -0.0653016   -0.0272296
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0282760   -0.0480029   -0.0085492
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0742229   -0.1148007   -0.0336451
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0653956   -0.1134201   -0.0173710
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0490731   -0.0805378   -0.0176083
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0705681   -0.0942911   -0.0468452
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.0779735   -0.1104707   -0.0454763
12-15 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.0799044   -0.1133142   -0.0464946
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0440068   -0.0698292   -0.0181844
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0403858   -0.0616628   -0.0191088
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0544017   -0.0793702   -0.0294331
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0360732   -0.0672974   -0.0048490
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0363970   -0.0540313   -0.0187627
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0439378   -0.0683372   -0.0195383
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0394135   -0.0679393   -0.0108876
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0724865   -0.1001237   -0.0448494
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0492759   -0.0727562   -0.0257956
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0426282   -0.0744271   -0.0108292
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0504579   -0.0795192   -0.0213965
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0218398   -0.0456628    0.0019832
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0289522   -0.0511533   -0.0067510
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0292705   -0.0725821    0.0140411
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0172464   -0.0374974    0.0030046
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1051050   -0.1394838   -0.0707261
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0817000   -0.1161424   -0.0472576
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0267747   -0.0835669    0.0300175
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0503123   -0.0810068   -0.0196177
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0656768   -0.0941198   -0.0372338
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0572329   -0.0781340   -0.0363317
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0364845   -0.0536184   -0.0193506
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0325552   -0.0469544   -0.0181560
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0452614   -0.0605683   -0.0299546
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0165511   -0.0287131   -0.0043891
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0045289   -0.0229915    0.0139336
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0280773   -0.0436795   -0.0124752
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0697458   -0.1024506   -0.0370411
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0810183   -0.1253033   -0.0367334
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0458141   -0.0741579   -0.0174702
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0063742   -0.0308862    0.0181378
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.0055141   -0.0440116    0.0329833
15-18 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.0183908   -0.0506725    0.0138910
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0172165   -0.0381380    0.0037050
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0293009   -0.0498692   -0.0087325
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                 0.0027532   -0.0159496    0.0214561
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0049650   -0.0230495    0.0329795
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0065138   -0.0090760    0.0221037
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                 0.0009773   -0.0211579    0.0231126
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0194605   -0.0429855    0.0040644
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0158143   -0.0397577    0.0081290
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0358076   -0.0556163   -0.0159989
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0129590   -0.0440673    0.0181493
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0027465   -0.0307833    0.0252904
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0088667   -0.0315394    0.0138060
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0313231   -0.0542249   -0.0084214
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0420689   -0.0794828   -0.0046550
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.0065420   -0.0714208    0.0845049
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0080650   -0.0443843    0.0282543
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0265519   -0.0592354    0.0061316
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0213667   -0.0835525    0.0408190
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0435961   -0.0663229   -0.0208694
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0448974   -0.0688825   -0.0209124
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0330172   -0.0514967   -0.0145376
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0075484   -0.0227704    0.0076735
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0215240   -0.0348930   -0.0081551
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0059925   -0.0197358    0.0077509
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0252331   -0.0361645   -0.0143018
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0267059   -0.0447252   -0.0086867
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0309122   -0.0464003   -0.0154241
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0053186   -0.0278653    0.0385024
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0116320   -0.0472926    0.0240286
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0102839   -0.0343959    0.0138281
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0066588   -0.0290429    0.0157253
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0012167   -0.0357364    0.0381698
18-21 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.0081735   -0.0316179    0.0152710
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0513683    0.0291962    0.0735404
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0177501   -0.0008695    0.0363697
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                 0.0104512   -0.0139885    0.0348909
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0315847    0.0102137    0.0529557
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0380187    0.0213014    0.0547361
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                 0.0258283    0.0070534    0.0446033
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0070924   -0.0323916    0.0182068
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0186550   -0.0057061    0.0430160
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.0089574   -0.0122487    0.0301636
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0382876    0.0122798    0.0642954
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0663291    0.0381981    0.0944601
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                 0.0611967    0.0371115    0.0852819
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0424024    0.0220391    0.0627657
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.0484143    0.0171607    0.0796679
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.0467120   -0.0115728    0.1049968
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0137662   -0.0196291    0.0471615
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0145571   -0.0231719    0.0522860
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0029278   -0.0465610    0.0407054
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0275065    0.0053458    0.0496672
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0453107    0.0238139    0.0668074
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                 0.0460543    0.0274078    0.0647007
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0487088    0.0305960    0.0668216
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0437836    0.0296589    0.0579083
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                 0.0477612    0.0336744    0.0618479
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0653630    0.0544875    0.0762385
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0504416    0.0320354    0.0688478
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0516900    0.0348239    0.0685560
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0316708   -0.0016250    0.0649667
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0078859   -0.0468305    0.0310586
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                 0.0073200   -0.0217818    0.0364218
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0195940   -0.0217660    0.0609541
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0010358   -0.0505328    0.0526043
21-24 months   ki1114097-CONTENT       PERU                           >5%                  NA                 0.0443184   -0.0008979    0.0895346


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                 0.0122587   -0.0591325    0.0836499
0-3 months     ki1114097-CONTENT       PERU                           NA                   NA                 0.0010094   -0.1011210    0.1031397
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0059547   -0.0211395    0.0092302
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.0213805   -0.0073799    0.0501409


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0230142   -0.0590617    0.1050901
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0302611   -0.0517334    0.1122557
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0802190   -0.2329216    0.0724836
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1970155   -0.3750619   -0.0189691
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0060831   -0.1154187    0.1032525
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0200545   -0.1303748    0.0902659
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0238807   -0.1093690    0.0616076
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0203924   -0.0535100    0.0942948
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0905449   -0.0335548    0.2146446
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1735160   -0.0981403    0.4451724
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0312399   -0.1187758    0.0562960
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0418958   -0.1491415    0.0653499
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0297163   -0.0362759    0.0957085
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0323692   -0.0313931    0.0961315
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0082435   -0.0499196    0.0334325
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0322033   -0.0788491    0.0144425
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0061493   -0.0408342    0.0531327
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0077382   -0.0354545    0.0509309
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1371029   -0.0292584    0.3034642
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0199600   -0.1619384    0.2018584
0-3 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0151032   -0.2159824    0.2461887
0-3 months     ki1114097-CONTENT       PERU                           >5%                  0%                -0.0408131   -0.2617978    0.1801716
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0080183   -0.0657377    0.0497012
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0326185   -0.0958834    0.0306465
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0213932   -0.1004809    0.0576946
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0319093   -0.1209120    0.0570935
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0104579   -0.0543915    0.0753072
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0347893   -0.0991927    0.0296141
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0717568   -0.0114081    0.1549216
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0501754   -0.0278644    0.1282153
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0144911   -0.1068158    0.0778336
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.1424890   -0.2658086   -0.0191693
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0104797   -0.0607243    0.0816836
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0780286   -0.0150424    0.1710996
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0067834   -0.0670425    0.0534757
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0076226   -0.0665230    0.0512778
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0022322   -0.0416313    0.0371668
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0099409   -0.0319026    0.0517843
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0635291   -0.1064399   -0.0206183
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0258024   -0.0639045    0.0122998
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0094774   -0.1030574    0.0841026
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0028880   -0.0831484    0.0773724
3-6 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0476224   -0.0102164    0.1054613
3-6 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0372076   -0.0178330    0.0922482
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0272742   -0.0146315    0.0691799
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0635646    0.0222128    0.1049165
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0056934   -0.0623546    0.0737414
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0098265   -0.0699541    0.0896071
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0098186   -0.0374492    0.0570864
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0168532   -0.0309911    0.0646975
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0363287   -0.0977121    0.0250548
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0563243   -0.1186995    0.0060508
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0635430   -0.1347691    0.0076830
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0267190   -0.0942892    0.0408512
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0253059   -0.0529495    0.1035612
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0080288   -0.0703464    0.0864039
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0169507   -0.0685341    0.0346327
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0678903   -0.1125040   -0.0232767
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0060767   -0.0222632    0.0344167
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0038312   -0.0243651    0.0320274
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0153142   -0.0177323    0.0483607
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0277595   -0.0026856    0.0582045
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0522966   -0.0321969    0.1367901
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0055882   -0.0673408    0.0561644
6-9 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0226730   -0.0857410    0.0403949
6-9 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0413057   -0.0075344    0.0901458
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0198181   -0.0230150    0.0626512
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0016040   -0.0452243    0.0420162
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0371497   -0.0043383    0.0786376
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0631182    0.0120789    0.1141574
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0198884   -0.0223513    0.0621282
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0029487   -0.0448986    0.0390011
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0114891   -0.0656013    0.0426232
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0412232   -0.0136429    0.0960894
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0042633   -0.0746008    0.0660743
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0364778   -0.1448498    0.0718943
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0458264   -0.1208892    0.0292364
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0033524   -0.0949600    0.0882551
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0085825   -0.0468747    0.0297097
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0007475   -0.0346887    0.0361836
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0094704   -0.0185786    0.0375194
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0124472   -0.0163497    0.0412441
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0088226   -0.0200400    0.0376852
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0079856   -0.0344066    0.0184354
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0067534   -0.0702856    0.0837923
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0238666   -0.0768433    0.0291100
9-12 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0065775   -0.0550619    0.0419070
9-12 months    ki1114097-CONTENT       PERU                           >5%                  0%                -0.0101023   -0.0500520    0.0298474
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0242015   -0.0611880    0.0127851
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0232599   -0.0172982    0.0638181
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0029210   -0.0443754    0.0385335
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0488157    0.0017908    0.0958406
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0165848   -0.0210040    0.0541736
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0147874   -0.0247993    0.0543740
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0095482   -0.0390486    0.0581449
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0018140   -0.0411093    0.0447372
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0068639   -0.0632831    0.0770109
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0524363   -0.0417266    0.1465992
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0197666   -0.0393090    0.0788421
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0366859   -0.0958252    0.0224535
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0144922   -0.0211854    0.0501699
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0260035   -0.0139463    0.0659532
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0096070   -0.0357607    0.0165466
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0032877   -0.0234847    0.0300602
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0066991   -0.0297506    0.0163524
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0112905   -0.0122804    0.0348614
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0088273   -0.0542268    0.0718815
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0251498   -0.0264921    0.0767918
12-15 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0074054   -0.0475934    0.0327826
12-15 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0093363   -0.0503118    0.0316392
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0036210   -0.0298800    0.0371220
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0103949   -0.0463296    0.0255398
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0003238   -0.0362530    0.0356053
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0078646   -0.0475433    0.0318141
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0330731   -0.0728587    0.0067126
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0098624   -0.0471013    0.0273765
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0078297   -0.0508281    0.0351687
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0207884   -0.0190208    0.0605976
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0003183   -0.0489885    0.0483519
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0117058   -0.0183441    0.0417556
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0234050   -0.0253012    0.0721111
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0783303    0.0117878    0.1448728
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0153645   -0.0576108    0.0268818
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0069206   -0.0443998    0.0305586
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0039293   -0.0185914    0.0264500
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0087770   -0.0319800    0.0144261
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0120222   -0.0101193    0.0341636
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0115262   -0.0312981    0.0082458
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0112725   -0.0664523    0.0439073
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0239318   -0.0194584    0.0673219
15-18 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0008600   -0.0451595    0.0468795
15-18 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0120166   -0.0526819    0.0286487
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0120843   -0.0415556    0.0173869
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0199697   -0.0081702    0.0481097
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0015488   -0.0305285    0.0336261
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0039877   -0.0398375    0.0318621
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0036462   -0.0299946    0.0372869
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0163471   -0.0473263    0.0146321
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0102126   -0.0315969    0.0520221
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0040924   -0.0344330    0.0426177
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0107458   -0.0546125    0.0331209
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0378652   -0.0433918    0.1191221
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0184869   -0.0663419    0.0293681
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0133018   -0.0864019    0.0597984
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0013013   -0.0344378    0.0318352
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0105790   -0.0189453    0.0401032
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0139756   -0.0342030    0.0062518
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0015560   -0.0189290    0.0220410
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0014728   -0.0223891    0.0194435
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0056790   -0.0245967    0.0132386
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0169506   -0.0654976    0.0315964
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0156025   -0.0568004    0.0255955
18-21 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0078755   -0.0354476    0.0511986
18-21 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0015147   -0.0340392    0.0310099
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0336181   -0.0625224   -0.0047139
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0409171   -0.0740706   -0.0077636
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0064341   -0.0209018    0.0337699
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0057563   -0.0348387    0.0233260
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0257474   -0.0092445    0.0607392
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0160498   -0.0169438    0.0490435
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0280414   -0.0103622    0.0664451
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0229091   -0.0127200    0.0585382
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0060119   -0.0312902    0.0433141
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0043096   -0.0574300    0.0660493
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0007909   -0.0495699    0.0511516
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0166940   -0.0715312    0.0381432
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0178042   -0.0131737    0.0487820
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0185478   -0.0105844    0.0476800
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0049252   -0.0279793    0.0181288
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0009477   -0.0239918    0.0220965
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0149214   -0.0363614    0.0065185
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0136730   -0.0337706    0.0064245
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0395568   -0.0906746    0.0115611
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0243509   -0.0686817    0.0199800
21-24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0185582   -0.0846640    0.0475475
21-24 months   ki1114097-CONTENT       PERU                           >5%                  0%                 0.0247244   -0.0365550    0.0860038


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0181807   -0.0330198    0.0693813
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0952991   -0.2154533    0.0248550
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0194320   -0.0820793    0.0432152
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0029921   -0.0474902    0.0534744
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0250311   -0.0038261    0.0538883
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0250237   -0.0707606    0.0207132
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0252451   -0.0183679    0.0688580
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0137474   -0.0420657    0.0145710
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0059494   -0.0133298    0.0252286
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0232032   -0.0646131    0.1110196
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0067267   -0.0948322    0.0813789
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0155679   -0.0534168    0.0222809
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0195146   -0.0788234    0.0397941
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0099027   -0.0465743    0.0267689
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0442741   -0.0093002    0.0978485
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0078516   -0.0293153    0.0136121
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0126006   -0.0256119    0.0508131
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0056554   -0.0475418    0.0362310
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0021608   -0.0245281    0.0288496
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0222475   -0.0396143   -0.0048808
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0023376   -0.0531901    0.0485149
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0185651   -0.0025266    0.0396568
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0307689    0.0053603    0.0561775
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0040410   -0.0486506    0.0567326
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0070617   -0.0202090    0.0343323
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0372596   -0.0790047    0.0044855
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0135789   -0.0288069    0.0016490
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0119040   -0.0273294    0.0511375
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0356459   -0.0682271   -0.0030646
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0044103   -0.0144738    0.0232943
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0123373   -0.0009034    0.0255780
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0086021   -0.0330294    0.0502335
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0065728   -0.0133333    0.0264789
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0093482   -0.0183001    0.0369966
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0327106    0.0001105    0.0653107
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0025971   -0.0220616    0.0272557
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0149430   -0.0217771    0.0516630
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0020941   -0.0169306    0.0127424
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0145298   -0.0525138    0.0234542
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0024104   -0.0269905    0.0221696
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0069673   -0.0118263    0.0257609
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0001018   -0.0114908    0.0112873
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0120845   -0.0473670    0.0231980
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.0010779   -0.0167320    0.0145763
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0038171   -0.0282278    0.0205936
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0113380   -0.0206089    0.0432848
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0082690   -0.0143522    0.0308902
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0070605   -0.0226939    0.0368148
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0034547   -0.0115477    0.0184571
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0028413   -0.0255081    0.0311907
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0164975   -0.0092226    0.0422177
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0047456   -0.0223334    0.0128422
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0012352   -0.0084080    0.0108784
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0133431   -0.0189722    0.0456583
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0028609   -0.0183272    0.0126054
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0017875   -0.0233785    0.0198035
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0019303   -0.0291696    0.0253090
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0155211   -0.0384735    0.0074313
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0065716   -0.0210234    0.0341667
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0004046   -0.0098020    0.0106111
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0194708   -0.0066094    0.0455510
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0073783   -0.0340482    0.0192915
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0011592   -0.0159693    0.0136508
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0003562   -0.0088339    0.0081215
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0070124   -0.0192307    0.0332556
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0027624   -0.0200529    0.0145281
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0016947   -0.0160835    0.0194728
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0008090   -0.0237219    0.0253399
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0086447   -0.0279330    0.0106435
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0048449   -0.0212151    0.0309050
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0008434   -0.0112585    0.0095718
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0201383   -0.0475442    0.0072677
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0052071   -0.0157549    0.0261691
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0033915   -0.0166277    0.0098448
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0027356   -0.0101890    0.0047178
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0118129   -0.0386270    0.0150012
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0007041   -0.0140724    0.0154807
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0257501   -0.0447362   -0.0067639
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0017960   -0.0218724    0.0182804
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0125472   -0.0072834    0.0323777
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0186868   -0.0053598    0.0427333
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0014698   -0.0073690    0.0103085
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0049265   -0.0305857    0.0207328
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0131850   -0.0069418    0.0333118
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0024746   -0.0180736    0.0131244
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0066009   -0.0140731    0.0008712
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0160547   -0.0424303    0.0103210
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0017865   -0.0198242    0.0233972
