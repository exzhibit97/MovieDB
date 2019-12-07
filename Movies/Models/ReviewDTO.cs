using Movies.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Movies.Web.Models
{
    public class ReviewDTO
    {
        public int ReviewId { get; set; }
        public string Content { get; set; }
        public int Rating { get; set; }
        public DateTime PostedOn { get; set; }

        public int MovieId { get; set; }
        public Movie Movie { get; set; }

        public ReviewDTO()
        {

        }
    }
}
