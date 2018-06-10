using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Questionnair.ViewModels
{
    public class QuestionnaireAnswersViewModel
    {
        public int QuestionID { get; set; }
        public string QuestionText { get; set; }
        public string AnswerQ { get; set; }
        public bool isCorrect { get; set; }
        public bool IsSubmit { get; set; }
    }
}