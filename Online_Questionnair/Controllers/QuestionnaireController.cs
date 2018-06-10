using Online_Questionnair.Models;
using Online_Questionnair.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace Online_Questionnair.Controllers
{
    [Authorize]
    public class QuestionnaireController : Controller
    {
        private Questionnaire_DB _DbContext;

        public QuestionnaireController()
        {
            _DbContext = new Questionnaire_DB();
        }
        // GET: Questionnaire
        public ActionResult GetQuestionnaire(string clickAct = "")
        {
            if (Session["PageNo"] == null)
                Session["PageNo"] = 0;

            int pageno = Convert.ToInt16(Session["PageNo"]);
            if (clickAct == "Next")
            {
                pageno = pageno + 1;
                Session["PageNo"] = pageno;
            }
            else if (clickAct == "Previous" && pageno > 0)
            {
                pageno = pageno - 1;
                Session["PageNo"] = pageno;
            }

            int PageSize = 5;
            int skip = PageSize * pageno;

            // QuizVM quizSelected = Session["SelectedQuiz"] as QuizVM;
            IQueryable<QuestionnaireViewModel> questions = null;
            string UserId = User.Identity.GetUserId();
            //if (quizSelected != null)
            //{

            questions = _DbContext.Questions
        .Join(_DbContext.MasterQuestions, mq => new { mq.MasterQuestionId }, qq => new { qq.MasterQuestionId }, (mq, qq) => new { mq, qq.QuestionValidFrom, qq.QuestionValidTo })
        .GroupJoin(_DbContext.UserWiseQuestionAnswers, qu => new { qu.mq.QuestionId, UserId }, qx => new { qx.QuestionId, qx.UserId }, (qu, qx) => new { qu, userQA = qx.FirstOrDefault() })
        .Where(x => x.qu.mq.IsActive == true && DateTime.Now >= x.qu.QuestionValidFrom && DateTime.Now <= x.qu.QuestionValidTo).Select(q => new QuestionnaireViewModel
        {
            QuestionId = q.qu.mq.QuestionId,
            QuestionText = q.qu.mq.QuestionText,
            AnswerId = q.userQA.AnswerId,
            IsSubmit = q.userQA.IsSubmit,
            Answers = q.qu.mq.Answers.Select(c => new AnswersViewModel
            {
                AnswerId = c.AnswerId,
                AnswerText = c.AnswerText
            }).ToList()
        })
        .OrderBy(o => o.QuestionId)
        .Skip(skip)
        .Take(PageSize)
        .AsQueryable();

            return View(questions);
        }
        [HttpPost]
        public ActionResult SaveQuestionnaire_Answers(List<QuestionnaireAnswersViewModel> QuesAns)
        {

            List<QuestionnaireAnswersViewModel> finalResultQuiz = new List<QuestionnaireAnswersViewModel>();
            string UserId = User.Identity.GetUserId();

            foreach (QuestionnaireAnswersViewModel answser in QuesAns)
            {
                if (answser.AnswerQ != null)
                {
                    bool IsAnsCorrect = false;
                    int _answerId = Convert.ToInt16(answser.AnswerQ);
                    var IsAnswerCorrect = _DbContext.Answers.Where(a => a.QuestionId == answser.QuestionID && _answerId == a.AnswerId && a.IsCorrectAnswer == true).SingleOrDefault();

                    if (IsAnswerCorrect != null)
                    {
                        IsAnsCorrect = true;
                    }

                    var ExistingData = _DbContext.UserWiseQuestionAnswers.Where(x => x.QuestionId == answser.QuestionID && x.UserId == UserId).SingleOrDefault();

                    if (ExistingData != null)
                    {
                        ExistingData.AnswerId = _answerId;
                        ExistingData.IsCorrect = IsAnsCorrect;
                    }
                    else
                    {
                        UserWiseQuestionAnswer UQA = new UserWiseQuestionAnswer
                        {
                            AnswerId = _answerId,
                            IsCorrect = IsAnsCorrect,
                            IsSubmit = false,
                            QuestionId = answser.QuestionID,
                            UserId = UserId,
                        };

                        _DbContext.UserWiseQuestionAnswers.Add(UQA);
                    }

                    _DbContext.SaveChanges();
                }
            }

            return RedirectToAction("GetQuestionnaire", new { page = Session["PageNo"] });
        }

        [HttpPost]
        public ActionResult SubmitQuestionnaire()
        {
            string UserId = User.Identity.GetUserId();
            //IEnumerable<UserWiseQuestionAnswer>
            var lstUQA = _DbContext.UserWiseQuestionAnswers.Where(x => x.UserId == UserId).ToList();
            foreach (var uqa in lstUQA)
            {
                uqa.IsSubmit = true;
            }
            _DbContext.SaveChanges();
            return RedirectToAction("GetQuestionnaire", new { page = Session["PageNo"] });
        }
        public ActionResult GetResult()
        {
            string UserId = User.Identity.GetUserId();

            int CorrectCount = _DbContext.UserWiseQuestionAnswers.Where(x => x.UserId == UserId && x.IsCorrect == true).ToList().Count();

            ResultViewModel rvm = new ResultViewModel
            {
                CorrectAnswers = CorrectCount
            };


            return View(rvm);
        }
    }
}