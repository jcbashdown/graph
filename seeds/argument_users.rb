#users each have only one argument - their belief sets
{
  john: {
          we_need_the_tax_code_argued_for_in_x_report: {
                                                         #body is empty when composite false
                                                         #body is automatic support
                                                         body: [ 
                                                                 "aspect_one",
                                                                 "aspect_two",
                                                                 "aspect_three"
                                                               ],
                                                         #when composite is true supporters and opposers must be empty
                                                         support: []
                                                         oppose: []
                                                         composite: true,
                                                         #questions must be present when is conclusion true
                                                         questions: [
                                                                      "which tax code to achieve GOAL goal"
                                                                    ],
                                                         is_conclusion: true
                                                       },
          aspect_one: {
                        #body is empty when composite false
                        #body is automatic support
                        body: [],
                        #when composite is true supporters and opposers must be empty
                        support: ["there is a study and there is a study supports aspect one"]
                        oppose: []
                        composite: false,
                        #questions is empty when is conclusion false
                        questions: [],
                        is_conclusion: false
                      },
          aspect_two: {
                        #body is empty when composite false
                        #body is automatic support
                        body: [],
                        #when composite is true supporters and opposers must be empty
                        support: []
                        oppose: []
                        composite: false,
                        #questions is empty when is conclusion false
                        questions: [],
                        is_conclusion: false
                      },
          aspect_three: {
                        #body is empty when composite false
                        #body is automatic support
                        body: [],
                        #when composite is true supporters and opposers must be empty
                        support: []
                        oppose: []
                        composite: false,
                        #questions is empty when is conclusion false
                        questions: [],
                        is_conclusion: false
                      },
          there_is_a_study_and_there_is_a_study_supports_aspect_one: {
                        #body is empty when composite false
                        #body is automatic support
                        body: [
                                "there is a study",
                                "there is a study supports aspect one"
                              ],
                        #when composite is true supporters and opposers must be empty
                        #should these be bi directional? should these change to coherence relations?
                        support: []
                        oppose: []
                        composite: true,
                        #questions is empty when is conclusion false
                        questions: [],
                        is_conclusion: false
                      },
          there_is_a_study: {
                              #body is empty when composite false
                              #body is automatic support
                              body: [],
                              #when composite is true supporters and opposers must be empty
                              support: []
                              oppose: []
                              composite: false,
                              #questions is empty when is conclusion false
                              questions: [],
                              is_conclusion: false
                            },
          there_is_a_study_supports_aspect_one: {
                              #body is empty when composite false
                              #body is automatic support
                              body: [],
                              #when composite is true supporters and opposers must be empty
                              support: []
                              oppose: []
                              composite: false,
                              #questions is empty when is conclusion false
                              questions: [],
                              is_conclusion: false
                            }
        }
}
