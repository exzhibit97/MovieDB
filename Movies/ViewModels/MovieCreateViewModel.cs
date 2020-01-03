using Microsoft.AspNetCore.Http;
using Movies.Domain.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Movies.Web.ViewModels
{
    public class MovieCreateViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int Runtime { get; set; }
        public int Year { get; set; }
        public IFormFile Poster { get; set; }
        public string Description { get; set; }

        public static MovieCreateViewModel FromMovie(Movie movie)
        {
            var stream = File.OpenRead("C:/Users/Patryk/source/repos/Movies/Movies/wwwroot/images/poster-placeholder.png");
            return new MovieCreateViewModel()
            {
                Id = movie.Id,
                Title = movie.Title,
                Runtime = movie.Runtime,
                Year = movie.Year,
                Poster = new FormFile(stream, 0, stream.Length, null, Path.GetFileName(stream.Name)),
                Description = movie.Description
            };
        }
    }
}
