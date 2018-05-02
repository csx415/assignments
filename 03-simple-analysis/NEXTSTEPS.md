# Next Steps

### 4/24/2018
Up to this point, I have generated 3 simple models that attempt to classify samples based on their microbiome profiles. None of the models have performed well enough to discriminate sample types to the degree required (accuracy > 90%, misclassification rate < 5%). I believe the next steps for this project are as follows:

1.  Build a decision tree using all the features available (all 642 taxonomic units), and evaluate its performance.
2.  If the large decision tree fails, build a random forest model using:
  + All 642 taxonomic features
  + A selection of the 100 most informative features based on the decision tree built above.
3.  If the RF model fails, engineer the features
  + Aggregate relative abundance up to the class or phylum level (data matrix will become less sparse)
  + Introduce a diversity metric (e.g. Shannon's diversity) to summarize how complex each sample of (might indicate sample origin)
  + Aggregate sample types together to build more power (e.g. all the sediment samples)
4.  If the random forest model continues to underperform, based on its performance, transition to a different model type (e.g. SVN)