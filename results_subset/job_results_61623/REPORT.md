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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country        cleanck    n_cell     n
----------  ---------------  -------------  --------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1              37    86
Birth       CMC-V-BCS-2002   INDIA          0              49    86
Birth       GMS-Nepal        NEPAL          1               9   570
Birth       GMS-Nepal        NEPAL          0             561   570
Birth       IRC              INDIA          1             198   337
Birth       IRC              INDIA          0             139   337
Birth       MAL-ED           PERU           1               1     2
Birth       MAL-ED           PERU           0               1     2
Birth       NIH-Crypto       BANGLADESH     1             336   543
Birth       NIH-Crypto       BANGLADESH     0             207   543
Birth       PROVIDE          BANGLADESH     1             433   532
Birth       PROVIDE          BANGLADESH     0              99   532
6 months    CMC-V-BCS-2002   INDIA          1             162   368
6 months    CMC-V-BCS-2002   INDIA          0             206   368
6 months    GMS-Nepal        NEPAL          1               8   505
6 months    GMS-Nepal        NEPAL          0             497   505
6 months    IRC              INDIA          1             229   398
6 months    IRC              INDIA          0             169   398
6 months    MAL-ED           SOUTH AFRICA   1               1     1
6 months    MAL-ED           SOUTH AFRICA   0               0     1
6 months    NIH-Crypto       BANGLADESH     1             329   545
6 months    NIH-Crypto       BANGLADESH     0             216   545
6 months    PROVIDE          BANGLADESH     1             497   603
6 months    PROVIDE          BANGLADESH     0             106   603
24 months   CMC-V-BCS-2002   INDIA          1             163   372
24 months   CMC-V-BCS-2002   INDIA          0             209   372
24 months   GMS-Nepal        NEPAL          1               5   434
24 months   GMS-Nepal        NEPAL          0             429   434
24 months   IRC              INDIA          1             231   400
24 months   IRC              INDIA          0             169   400
24 months   MAL-ED           SOUTH AFRICA   1               1     1
24 months   MAL-ED           SOUTH AFRICA   0               0     1
24 months   NIH-Crypto       BANGLADESH     1             199   410
24 months   NIH-Crypto       BANGLADESH     0             211   410
24 months   PROVIDE          BANGLADESH     1             480   579
24 months   PROVIDE          BANGLADESH     0              99   579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/72c1b280-9ea0-4169-bc62-fed73daee8ba/7ad8cb0c-cc3a-4872-9c07-b328072a6563/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        optimal              observed          -0.2666716   -0.7004900    0.1671467
Birth       GMS-Nepal        NEPAL        optimal              observed          -1.3049513   -1.4063992   -1.2035035
Birth       IRC              INDIA        optimal              observed          -0.8336907   -1.1018846   -0.5654968
Birth       NIH-Crypto       BANGLADESH   optimal              observed          -1.2589482   -1.4984236   -1.0194729
Birth       PROVIDE          BANGLADESH   optimal              observed          -1.3899366   -1.4901122   -1.2897610
6 months    CMC-V-BCS-2002   INDIA        optimal              observed          -0.4144709   -0.6411887   -0.1877531
6 months    GMS-Nepal        NEPAL        optimal              observed          -0.6196073   -0.7115207   -0.5276940
6 months    IRC              INDIA        optimal              observed          -0.5516146   -0.8160096   -0.2872195
6 months    NIH-Crypto       BANGLADESH   optimal              observed          -0.0205414   -0.1810522    0.1399694
6 months    PROVIDE          BANGLADESH   optimal              observed          -0.1470417   -0.2687392   -0.0253441
24 months   CMC-V-BCS-2002   INDIA        optimal              observed          -0.2961909   -0.4632076   -0.1291742
24 months   GMS-Nepal        NEPAL        optimal              observed          -1.3378201   -1.7061132   -0.9695270
24 months   IRC              INDIA        optimal              observed          -0.7039423   -0.8326200   -0.5752646
24 months   NIH-Crypto       BANGLADESH   optimal              observed          -0.4922887   -0.6946077   -0.2899697
24 months   PROVIDE          BANGLADESH   optimal              observed          -0.7857922   -0.8764631   -0.6951213


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       GMS-Nepal        NEPAL        observed             observed          -1.1144386   -1.2074618   -1.0214154
Birth       IRC              INDIA        observed             observed          -0.9860831   -1.1746070   -0.7975591
Birth       NIH-Crypto       BANGLADESH   observed             observed          -1.1841160   -1.2799097   -1.0883224
Birth       PROVIDE          BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    CMC-V-BCS-2002   INDIA        observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    GMS-Nepal        NEPAL        observed             observed          -0.6230627   -0.7131245   -0.5330009
6 months    IRC              INDIA        observed             observed          -0.6153685   -0.7522411   -0.4784959
6 months    NIH-Crypto       BANGLADESH   observed             observed           0.0640826   -0.0252594    0.1534245
6 months    PROVIDE          BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
24 months   CMC-V-BCS-2002   INDIA        observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   GMS-Nepal        NEPAL        observed             observed          -1.1247312   -1.2195989   -1.0298635
24 months   IRC              INDIA        observed             observed          -0.7479083   -0.8403586   -0.6554581
24 months   NIH-Crypto       BANGLADESH   observed             observed          -0.5518293   -0.6602513   -0.4434072
24 months   PROVIDE          BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        optimal              observed          -0.1981539   -0.5655049    0.1691970
Birth       GMS-Nepal        NEPAL        optimal              observed           0.1905127    0.1275850    0.2534405
Birth       IRC              INDIA        optimal              observed          -0.1523924   -0.3361191    0.0313343
Birth       NIH-Crypto       BANGLADESH   optimal              observed           0.0748322   -0.1328315    0.2824959
Birth       PROVIDE          BANGLADESH   optimal              observed           0.0914780    0.0261837    0.1567723
6 months    CMC-V-BCS-2002   INDIA        optimal              observed          -0.0882057   -0.2728920    0.0964806
6 months    GMS-Nepal        NEPAL        optimal              observed          -0.0034554   -0.0128809    0.0059702
6 months    IRC              INDIA        optimal              observed          -0.0637539   -0.2722851    0.1447772
6 months    NIH-Crypto       BANGLADESH   optimal              observed           0.0846240   -0.0494994    0.2187473
6 months    PROVIDE          BANGLADESH   optimal              observed          -0.0520490   -0.1424425    0.0383445
24 months   CMC-V-BCS-2002   INDIA        optimal              observed          -0.2609596   -0.3925329   -0.1293864
24 months   GMS-Nepal        NEPAL        optimal              observed           0.2130889   -0.1566641    0.5828419
24 months   IRC              INDIA        optimal              observed          -0.0439660   -0.1298874    0.0419553
24 months   NIH-Crypto       BANGLADESH   optimal              observed          -0.0595406   -0.2250978    0.1060167
24 months   PROVIDE          BANGLADESH   optimal              observed          -0.1070748   -0.1628566   -0.0512930
