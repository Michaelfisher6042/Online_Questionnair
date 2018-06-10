using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Questionnair.ViewModels
{
    public class QuestionnaireViewModel
    {
        public int QuestionId { get; set; }
        public string QuestionText { get; set; }

        public int? AnswerId { get; set; }
        public bool? IsSubmit { get; set; }
        public ICollection<AnswersViewModel> Answers { get; set; }
    }
}