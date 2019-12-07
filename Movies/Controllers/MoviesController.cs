using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Movies.Domain.Models;
using Movies.Infrastructure.Data;
using Movies.Shared.Interfaces;
using Movies.Web.Models;

namespace Movies.Web.Controllers
{
    public class MoviesController : Controller
    {
        private readonly IRepository _repository;

        public MoviesController(IRepository repository)
        {
            _repository = repository;
        }

        // GET: Movies
        public IActionResult Index()
        {
            var movies = _repository.List<Movie>()
                .Select(MovieDTO.FromMovie);
            return View(movies);
        }



        public IActionResult Details(int id)
        {
            //if (id == null)
            //{
            //    return NotFound();
            //}

            var movie = _repository.GetById<Movie>(id);
            if (movie == null)
            {
                return NotFound();
            }
            //var movieToShow = new MovieDTO()
            //{
            //    Id = movie.Id,
            //    Title = movie.Title,
            //    Runtime = movie.Runtime,
            //    Description = movie.Description,
            //    PosterPath = movie.PosterPath,
            //    Year = movie.Year,
            //    Reviews = movie.Reviews
            //};
            var movieToShow = MovieDTO.FromMovie(movie);

            return View(movieToShow);
        }

        // GET: Movies/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Movies/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("MovieId,Title,Runtime,Year,PosterPath,Description")] MovieDTO movie)
        {
            var movieToAdd = new Movie()
            {
                Title = movie.Title,
                Runtime = movie.Runtime,
                Year = movie.Year,
                PosterPath = movie.PosterPath,
                Description = movie.Description,
            };
            _repository.Add(movieToAdd);
            return View("Index");
        }

        //// GET: Movies/Edit/5
        //public async Task<IActionResult> Edit(int? id)
        //{
        //    if (id == null)
        //    {
        //        return NotFound();
        //    }

        //    var movie = await _context.Movies.FindAsync(id);
        //    if (movie == null)
        //    {
        //        return NotFound();
        //    }
        //    return View(movie);
        //}

        //// POST: Movies/Edit/5
        //// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        //// more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> Edit(int id, [Bind("MovieId,Title,Runtime,Year,PosterPath,Description")] Movie movie)
        //{
        //    if (id != movie.MovieId)
        //    {
        //        return NotFound();
        //    }

        //    if (ModelState.IsValid)
        //    {
        //        try
        //        {
        //            _context.Update(movie);
        //            await _context.SaveChangesAsync();
        //        }
        //        catch (DbUpdateConcurrencyException)
        //        {
        //            if (!MovieExists(movie.MovieId))
        //            {
        //                return NotFound();
        //            }
        //            else
        //            {
        //                throw;
        //            }
        //        }
        //        return RedirectToAction(nameof(Index));
        //    }
        //    return View(movie);
        //}

        //// GET: Movies/Delete/5
        //public async Task<IActionResult> Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return NotFound();
        //    }

        //    var movie = await _context.Movies
        //        .FirstOrDefaultAsync(m => m.MovieId == id);
        //    if (movie == null)
        //    {
        //        return NotFound();
        //    }

        //    return View(movie);
        //}

        //// POST: Movies/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> DeleteConfirmed(int id)
        //{
        //    var movie = await _context.Movies.FindAsync(id);
        //    _context.Movies.Remove(movie);
        //    await _context.SaveChangesAsync();
        //    return RedirectToAction(nameof(Index));
        //}

        //private bool MovieExists(int id)
        //{
        //    return _context.Movies.Any(e => e.MovieId == id);
        //}
    }
}
