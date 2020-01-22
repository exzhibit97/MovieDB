using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Movies.Infrastructure.Data;
using Movies.Shared.Interfaces;
using Movies.Web.Models;
using Movies.Domain.Models;

namespace Movies.Web.Controllers
{
    [Authorize]
    public class ReviewsController : Controller
    {
        private readonly IRepository _repository;
        private readonly UserManager<ApplicationUser> _userManager;

        public ReviewsController(IRepository _repository, UserManager<ApplicationUser> _userManager)
        {
            this._repository = _repository;
            this._userManager = _userManager;
        }

        // GET: Reviews
        [Authorize]
        public ActionResult GetReviews(int Id)
        {
            var reviews = _repository.List<Review>()
               .Select(ReviewDTO.FromReview).Where(r => r.MovieId == Id);
            return View(reviews);
        }

        // POST: Reviews/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[Authorize]
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        ////public IActionResult Create([FromForm]ReviewDTO reviewDTO, )
        //public ActionResult<Review> PostReview([FromForm]ReviewDTO reviewDTO, [FromForm]Movie movie)
        //{
        //    //if (ModelState.IsValid)
        //    //{
        //    //    _context.Add(review);
        //    //    await _context.SaveChangesAsync();
        //    //    return RedirectToAction(nameof(Index));
        //    //}
        //    //ViewData["MovieId"] = new SelectList(_context.Movies, "Id", "Id", review.MovieId);
        //    //return View();
        //    int id = movie.Id;
        //    var movie2 = _repository.List<Movie>().Select(MovieDTO.FromMovie).Where(m => m.Id == id);

        //    var reviewToAdd = new Review()
        //    {
        //        Id = reviewDTO.Id,
        //        Content = reviewDTO.Content,
        //        Rating = reviewDTO.Rating,
        //        PostedOn = reviewDTO.PostedOn,
        //        MovieId = reviewDTO.MovieId,
        //        Movie = reviewDTO.Movie
        //    };
        //    _repository.Add(reviewToAdd);

        //    return RedirectToAction("Details", "Movies", new { id = id });
        //}
        public async Task<ActionResult> PostReview([FromForm] ReviewDTO review)
        {
            if (ModelState.IsValid)
            {
                //var user = await _userManager.GetUserAsync(HttpContext.User);
                var reviewToAdd = new Review()
                {
                    Id = review.Id,
                    Content = review.Content,
                    Rating = review.Rating,
                    PostedOn = review.PostedOn,
                    MovieId = review.MovieId,
                    Movie = review.Movie,
                    User = await _userManager.GetUserAsync(HttpContext.User)
                };

                _repository.Add<Review>(reviewToAdd);

                return RedirectToAction("Details", "Movies", new { id = review.MovieId });
            }

            return RedirectToAction("Details", "Movies", new { id = review.MovieId });
        }
    }
}
