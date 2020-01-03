using Microsoft.AspNetCore.Mvc;
using Movies.Domain.Models;
using Movies.Shared.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Movies.Web.ViewComponents
{
    [ViewComponent]
    public class ReviewsListViewComponent : ViewComponent
    {
        private readonly IRepository _repository;

        public ReviewsListViewComponent(IRepository repository)
        {
            _repository = repository;
        }

        public IViewComponentResult Invoke(int movieID)
        {
            var reviews = _repository.List<Review>()
                .Where(r => r.MovieId == movieID);
            return View(reviews);
        }
    }
}
