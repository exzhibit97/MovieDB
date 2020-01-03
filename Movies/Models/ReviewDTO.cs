using Movies.Domain.Models;
using Movies.Infrastructure.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Movies.Web.Models
{
    public class ReviewDTO
    {
        public int Id { get; set; }
        public string Content { get; set; }
        public int Rating { get; set; }
        public DateTime PostedOn { get; set; } = DateTime.Now;
        public int MovieId { get; set; }
        public Movie Movie { get; set; }
        public ApplicationUser User { get; set; }
        public string UserID { get; set; }
               
        public ReviewDTO()
        {

        }
        public static ReviewDTO FromReview(Review review)
        {
            return new ReviewDTO()
            {
                Id = review.Id,
                Content = review.Content,
                Rating = review.Rating,
                PostedOn = review.PostedOn,
                MovieId = review.MovieId,
                Movie = review.Movie
            };
        }
    }
}
