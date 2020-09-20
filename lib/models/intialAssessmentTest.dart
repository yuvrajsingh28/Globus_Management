class IntialAssessmentTest {
  String presentingComplaints;
  String historyOfPresentIllness;
  String pastHistory;
  String familyHistory;
  String clinicalFindings;
  int painScore;
  String restraints;

  IntialAssessmentTest(
      {this.presentingComplaints,
      this.historyOfPresentIllness,
      this.pastHistory,
      this.familyHistory,
      this.clinicalFindings,
      this.painScore,
      this.restraints});

  IntialAssessmentTest.fromJson(Map<String, dynamic> json) {
    presentingComplaints = json['presenting_complaints'];
    historyOfPresentIllness = json['history_of_present_illness'];
    pastHistory = json['past_history'];
    familyHistory = json['family_history'];
    clinicalFindings = json['clinical_findings'];
    painScore = json['pain_score'];
    restraints = json['restraints'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['presenting_complaints'] = this.presentingComplaints;
    data['history_of_present_illness'] = this.historyOfPresentIllness;
    data['past_history'] = this.pastHistory;
    data['family_history'] = this.familyHistory;
    data['clinical_findings'] = this.clinicalFindings;
    data['pain_score'] = this.painScore;
    data['restraints'] = this.restraints;
    return data;
  }
}
