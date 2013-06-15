#users each have only one argument - their belief sets
{
  john: {
    questions: {
      :"tax question" => {
        conclusions:[
          "we need the tax code argued for in x report"
        ]
      }
    },
    nodes: {
      :"we need the tax code argued for in x report"=> {
        id: 1,
        #body is empty when composite false
        #body is automatic support
        #these get replaced with ids
        body: [ 
          "aspect one",
          "aspect two",
          "aspect three"
        ],
        #when composite is true supporters and opposers must be empty
        #these get replaced with ids
        supporters: [
          "aspect one",
          "aspect two",
          "aspect three"
        ],
        opposers: [],
        composite: true,
      },
      :"aspect one" => {
        id: 2,
        #body is empty when composite false
        #body is automatic support
        body: [],
        #when composite is true supporters and opposers must be empty
        #these get replaced with ids
        supporters: ["there is a study and there is a study supports aspect one"],
        opposers: [],
        composite: false,
      },
      :"aspect two" => {
        id: 3,
        #body is empty when composite false
        #body is automatic support
        body: [],
        #when composite is true supporters and opposers must be empty
        supporters: [],
        opposers: [],
        composite: false,
      },
      :"aspect three" => {
        id: 4,
        #body is empty when composite false
        #body is automatic support
        body: [],
        #when composite is true supporters and opposers must be empty
        supporters: [],
        opposers: [],
        composite: false,
      },
      :"there is a study and 6 supports 2" => {
        id: 5,
        #body is empty when composite false
        #body is automatic support
        #these get replaced with ids
        body: [
          "there is a study",
          "6 supports 2"
        ],
        #when composite is true supporters and opposers must be empty
        #should these be bi directional? should these change to coherence relations?
        supporters: [
          "there is a study",
          "6 supports 2"
        ],
        opposers: [],
        composite: true,
      },
      :"there is a study" => {
        id: 6,
        #body is empty when composite false
        #body is automatic support
        body: [],
        #when composite is true supporters and opposers must be empty
        supporters: [],
        opposers: [],
        composite: false,
      },
      :"6 supports 2" => {
        id: 7,
        #body is empty when composite false
        #body is automatic support
        body: [],
        #when composite is true supporters and opposers must be empty
        supporters: [],
        opposers: [],
        composite: false,
      }
    }
  }
}

#--for user
#
#get question
#
#get conclusions for question
#
#--add to arg
#
#for each conclusion
#
#def get_sub_arg (to depth)
#
#get support for conclusion
#
#for each 
#
#--add to arg
#
#--get_sub_arg
#
#get oppose for conclusion
#
#for each 
#
#--add to arg
#
#--get_sub_arg
#
###
#
#--for group build question on fly
#
def build_multi_user_argument(question, users)
  multi_user_argument_builder = MultiUserArgumentBuilder.new(question, users)
  multi_user_argument_builder.conclusion_level_argument
end

  multi_user_argument_builder.argument_for(node)
  multi_user_argument_builder.question_summary(level=2)#anything that is conclusion in arg or child of conclusion in arg to zero based level

class MultiUserArgumentBuilder

  def initialize(question, users)
    @users = ArgumentQueryUserCollection(users)
  end

  def conclusion_level_argument
    #this should work for when no opinion?
    users.conclusions...

  end
end
#
#--for all build question on fly 
#
